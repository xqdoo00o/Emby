.class public Lcom/mb/android/sync/ServerSync;
.super Ljava/lang/Object;
.source "ServerSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/sync/ServerSync$Callback;
    }
.end annotation


# instance fields
.field private final apiClient:Lcom/mb/android/apiinteraction/ApiClient;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private final mediaSync:Lcom/mb/android/sync/MediaSync;


# direct methods
.method public constructor <init>(Lcom/mb/android/apiinteraction/ApiClient;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 1
    .param p1    # Lcom/mb/android/apiinteraction/ApiClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mb/android/sync/ServerSync;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    .line 24
    iput-object p2, p0, Lcom/mb/android/sync/ServerSync;->context:Landroid/content/Context;

    .line 25
    iput-object p3, p0, Lcom/mb/android/sync/ServerSync;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 26
    new-instance v0, Lcom/mb/android/sync/MediaSync;

    invoke-direct {v0, p2, p3, p1}, Lcom/mb/android/sync/MediaSync;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/ApiClient;)V

    iput-object v0, p0, Lcom/mb/android/sync/ServerSync;->mediaSync:Lcom/mb/android/sync/MediaSync;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/sync/ServerSync;Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/mb/android/sync/ServerSync;->onAfterServerUrlDetermined(Lcom/mb/android/sync/ServerSync$Callback;)V

    return-void
.end method

.method private onAfterServerUrlDetermined(Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/mb/android/sync/ServerSync;->mediaSync:Lcom/mb/android/sync/MediaSync;

    iget-object v1, p0, Lcom/mb/android/sync/ServerSync;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-virtual {v0, v1, p1}, Lcom/mb/android/sync/MediaSync;->sync(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V

    return-void
.end method


# virtual methods
.method public startSync(Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/mb/android/sync/ServerSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/sync/ServerSync;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-virtual {v2}, Lcom/mb/android/apiinteraction/ApiClient;->getServerName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ServerSync: Starting sync for server: \'%s\'"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mb/android/sync/ServerSync;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    new-instance v1, Lcom/mb/android/sync/ServerSync$1;

    invoke-direct {v1, p0, p1}, Lcom/mb/android/sync/ServerSync$1;-><init>(Lcom/mb/android/sync/ServerSync;Lcom/mb/android/sync/ServerSync$Callback;)V

    invoke-virtual {v0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->determineServerUrl(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    return-void
.end method
