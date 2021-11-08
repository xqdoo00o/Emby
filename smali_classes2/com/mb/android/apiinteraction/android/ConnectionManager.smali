.class public Lcom/mb/android/apiinteraction/android/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# instance fields
.field private final apiClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field private final credentialManager:Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;

.field executorService:Ljava/util/concurrent/ExecutorService;

.field private final localAssetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

.field private final networkListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->apiClients:Ljava/util/HashMap;

    const/4 v0, 0x4

    .line 40
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 123
    new-instance v0, Lcom/mb/android/apiinteraction/android/ConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/mb/android/apiinteraction/android/ConnectionManager$1;-><init>(Lcom/mb/android/apiinteraction/android/ConnectionManager;)V

    iput-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->networkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 43
    iput-object p1, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->context:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/mb/android/sync/data/LocalAssetHelper;

    invoke-direct {v0, p1}, Lcom/mb/android/sync/data/LocalAssetHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->localAssetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    .line 45
    new-instance v0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;

    invoke-static {p1}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;-><init>(Lcom/mb/android/apiinteraction/android/ConnectionManager;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->credentialManager:Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;

    const-string v0, "connectivity"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 48
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 52
    :try_start_0
    iget-object p1, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->networkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v0, 0xc

    .line 60
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->networkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :catch_0
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/apiinteraction/android/ConnectionManager;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/apiinteraction/android/ConnectionManager;)Ljava/util/HashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->apiClients:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mb/android/apiinteraction/android/ConnectionManager;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method private addOrUpdateApiClient(Lcom/mb/android/model/apiclient/ServerInfo;)Lcom/mb/android/apiinteraction/ApiClient;
    .locals 8

    .line 105
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->apiClients:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mb/android/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/apiinteraction/ApiClient;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/mb/android/apiinteraction/ApiClientEx;

    .line 108
    invoke-virtual {p1}, Lcom/mb/android/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->context:Landroid/content/Context;

    .line 110
    invoke-static {v4}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v5

    iget-object v6, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->localAssetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/mb/android/apiinteraction/ApiClientEx;-><init>(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Ljava/util/concurrent/Executor;Lcom/mb/android/sync/data/LocalAssetHelper;)V

    .line 115
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/ApiClient;->setServerInfo(Lcom/mb/android/model/apiclient/ServerInfo;)V

    .line 116
    invoke-virtual {p1}, Lcom/mb/android/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->setServerCredentials(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->apiClients:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mb/android/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic lambda$getLastUsedApiClient$0(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/ApiClient;)I
    .locals 2

    .line 76
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getDateLastAccessed()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getDateLastAccessed()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->apiClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient;

    return-object p1
.end method

.method public getApiClients()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->apiClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCredentialManager()Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->credentialManager:Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;

    return-object v0
.end method

.method public getLastUsedApiClient()Lcom/mb/android/apiinteraction/ApiClient;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClients()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    sget-object v1, Lcom/mb/android/apiinteraction/android/-$$Lambda$ConnectionManager$ZBegOJ2SdXj3s71JeCRHkuUQafE;->INSTANCE:Lcom/mb/android/apiinteraction/android/-$$Lambda$ConnectionManager$ZBegOJ2SdXj3s71JeCRHkuUQafE;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/apiinteraction/ApiClient;

    .line 78
    invoke-virtual {v1}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateApiClients(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/model/apiclient/ServerInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 91
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/apiclient/ServerInfo;

    .line 99
    invoke-direct {p0, v0}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->addOrUpdateApiClient(Lcom/mb/android/model/apiclient/ServerInfo;)Lcom/mb/android/apiinteraction/ApiClient;

    goto :goto_0

    :cond_1
    return-void

    .line 92
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager;->apiClients:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/apiinteraction/ApiClient;

    .line 93
    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/ApiClient;->clearServerCredentials()V

    goto :goto_2

    :cond_3
    return-void
.end method
