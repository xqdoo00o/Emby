.class public Lcom/mb/android/apiinteraction/ApiClientEx;
.super Lcom/mb/android/apiinteraction/ApiClient;
.source "ApiClientEx.java"


# static fields
.field private static final LOCAL_PREFIX:Ljava/lang/String; = "local:"


# instance fields
.field private final itemRepository:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;


# direct methods
.method public constructor <init>(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Ljava/util/concurrent/Executor;Lcom/mb/android/sync/data/LocalAssetHelper;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p6}, Lcom/mb/android/apiinteraction/ApiClient;-><init>(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Ljava/util/concurrent/Executor;Lcom/mb/android/sync/data/LocalAssetHelper;)V

    .line 36
    new-instance p1, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-direct {p1, p3, p4}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClientEx;->itemRepository:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    return-void
.end method

.method static synthetic access$001(Lcom/mb/android/apiinteraction/ApiClientEx;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/mb/android/apiinteraction/ApiClient;->getItem(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method static synthetic access$101(Lcom/mb/android/apiinteraction/ApiClientEx;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/mb/android/apiinteraction/ApiClient;->getItem(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private isLocalId(Ljava/lang/String;)Z
    .locals 1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "local:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private stripLocalPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/mb/android/apiinteraction/ApiClientEx;->isLocalId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getItem(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p2}, Lcom/mb/android/apiinteraction/ApiClientEx;->stripLocalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 53
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClientEx;->itemRepository:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClientEx;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItemAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/mb/android/apiinteraction/ApiClientEx$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/mb/android/apiinteraction/ApiClientEx$1;-><init>(Lcom/mb/android/apiinteraction/ApiClientEx;Lcom/mb/android/apiinteraction/Response;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 54
    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public getItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/mb/android/apiinteraction/ApiClient;->getItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method
