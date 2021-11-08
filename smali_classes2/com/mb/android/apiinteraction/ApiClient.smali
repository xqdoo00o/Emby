.class public Lcom/mb/android/apiinteraction/ApiClient;
.super Ljava/lang/Object;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;,
        Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;,
        Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;,
        Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;
    }
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private automaticRetryCount:I

.field private final context:Landroid/content/Context;

.field private endpointInfo:Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private lastPlaybackProgressReport:Ljava/util/Date;

.field private lastPlaybackProgressReportTicks:J

.field private final localAssetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private serverAddress:Ljava/lang/String;

.field private serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

.field private final serverUrlLock:Ljava/util/concurrent/Semaphore;

.field private startingPlaySession:J


# direct methods
.method protected constructor <init>(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Ljava/util/concurrent/Executor;Lcom/mb/android/sync/data/LocalAssetHelper;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->lastPlaybackProgressReport:Ljava/util/Date;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->automaticRetryCount:I

    .line 72
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    .line 73
    iput-object p2, p0, Lcom/mb/android/apiinteraction/ApiClient;->accessToken:Ljava/lang/String;

    .line 74
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    .line 75
    iput-object p4, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 76
    iput-object p5, p0, Lcom/mb/android/apiinteraction/ApiClient;->executor:Ljava/util/concurrent/Executor;

    .line 77
    iput-object p6, p0, Lcom/mb/android/apiinteraction/ApiClient;->localAssetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    .line 78
    new-instance p1, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {p1}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    .line 79
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->startingPlaySession:J

    .line 80
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverUrlLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method private AddAddress(Ljava/util/ArrayList;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mb/android/model/apiclient/ConnectionMode;",
            ")V"
        }
    .end annotation

    .line 207
    new-instance v0, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;

    invoke-direct {v0, p0}, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;-><init>(Lcom/mb/android/apiinteraction/ApiClient;)V

    .line 208
    iput-object p2, v0, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;->Address:Ljava/lang/String;

    .line 209
    iput-object p3, v0, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;->ConnectionMode:Lcom/mb/android/model/apiclient/ConnectionMode;

    .line 211
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private ContainsAddress(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 195
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 197
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;

    iget-object v2, v2, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;->Address:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic access$300(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/mb/android/apiinteraction/ApiClient;->testConnection(Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mb/android/apiinteraction/ApiClient;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mb/android/apiinteraction/ApiClient;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mb/android/apiinteraction/ApiClient;)Lcom/mb/android/model/apiclient/ServerInfo;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    return-object p0
.end method

.method static synthetic access$802(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;)Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->endpointInfo:Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mb/android/apiinteraction/ApiClient;)J
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getMaxBandwidth()J

    move-result-wide v0

    return-wide v0
.end method

.method private getItems(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;",
            ">;)V"
        }
    .end annotation

    .line 619
    new-instance v0, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 620
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string p1, "GET"

    .line 621
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string p1, "application/json"

    .line 622
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 623
    invoke-direct {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 625
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v2, Lcom/mb/android/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v4, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-direct {v2, p2, v3, v4}, Lcom/mb/android/apiinteraction/SerializedResponse;-><init>(Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-static {p1, v0, v1, v2}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private getMaxBandwidth()J
    .locals 4

    .line 695
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 698
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 699
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x16e360

    return-wide v0
.end method

.method private getServerUrlRequestTag()Ljava/lang/String;
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "determineServerUrlTag-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLocalhostAddress(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "127.0.0.1"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 220
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "localhost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private scheduleTest(Ljava/util/Timer;ILcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V
    .locals 1

    .line 289
    new-instance v0, Lcom/mb/android/apiinteraction/ApiClient$2;

    invoke-direct {v0, p0, p3, p4, p5}, Lcom/mb/android/apiinteraction/ApiClient$2;-><init>(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    int-to-long p2, p2

    invoke-virtual {p1, v0, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->accessToken:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaBrowser "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 878
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/mb/android/AndroidAppHost;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Device=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/mb/android/AndroidAppHost;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, ", DeviceId=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/mb/android/AndroidAppHost;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, ", Version=%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    new-array p1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mb/android/AndroidAppHost;->AppName:Ljava/lang/String;

    aput-object v2, p1, v4

    const-string v2, ", Client=%s"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 883
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 884
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v4

    const-string p2, ", Token=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 888
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-Emby-Authorization"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestHeaders(Ljava/util/HashMap;)V

    return-void
.end method

.method private testConnection(Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V
    .locals 3

    .line 299
    iget-boolean v0, p3, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->urlDetermined:Z

    if-eqz v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object v0, p1, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;->Address:Ljava/lang/String;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v2, Lcom/mb/android/apiinteraction/ApiClient$3;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/mb/android/apiinteraction/ApiClient$3;-><init>(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;)V

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/mb/android/apiinteraction/ApiClient;->testConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private testConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mb/android/model/logging/ILogger;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/emby/system/info/public?format=json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    new-instance v0, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 320
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string p1, "GET"

    .line 321
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    invoke-static {p1, v0, p3, p2, p4}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method


# virtual methods
.method public clearServerCredentials()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public detectBitrate(Lcom/mb/android/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 675
    new-instance v0, Lcom/mb/android/apiinteraction/ApiClient$6;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/apiinteraction/ApiClient$6;-><init>(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V

    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getEndpointInfo(Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public determineServerUrl(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V
    .locals 10

    .line 229
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverUrlLock:Ljava/util/concurrent/Semaphore;

    invoke-static {p1, v0}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->access$002(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverUrlLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v1}, Lcom/mb/android/model/apiclient/ServerInfo;->getLastConnectionMode()Lcom/mb/android/model/apiclient/ConnectionMode;

    move-result-object v2

    invoke-static {p1, v1, v0, v2, p0}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->access$100(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;Lcom/mb/android/apiinteraction/ApiClient;)V

    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getServerUrlRequestTag()Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mb/android/apiinteraction/ApiClient;->isLocalhostAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mb/android/apiinteraction/ApiClient;->ContainsAddress(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/apiclient/ConnectionMode;->Manual:Lcom/mb/android/model/apiclient/ConnectionMode;

    invoke-direct {p0, v1, v2, v3}, Lcom/mb/android/apiinteraction/ApiClient;->AddAddress(Ljava/util/ArrayList;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mb/android/apiinteraction/ApiClient;->ContainsAddress(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/apiclient/ConnectionMode;->Local:Lcom/mb/android/model/apiclient/ConnectionMode;

    invoke-direct {p0, v1, v2, v3}, Lcom/mb/android/apiinteraction/ApiClient;->AddAddress(Ljava/util/ArrayList;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V

    .line 253
    :cond_2
    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mb/android/apiinteraction/ApiClient;->isLocalhostAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mb/android/apiinteraction/ApiClient;->ContainsAddress(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 254
    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/apiclient/ConnectionMode;->Manual:Lcom/mb/android/model/apiclient/ConnectionMode;

    invoke-direct {p0, v1, v2, v3}, Lcom/mb/android/apiinteraction/ApiClient;->AddAddress(Ljava/util/ArrayList;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V

    .line 257
    :cond_3
    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getRemoteAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getRemoteAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mb/android/apiinteraction/ApiClient;->ContainsAddress(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 258
    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getRemoteAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/apiclient/ConnectionMode;->Remote:Lcom/mb/android/model/apiclient/ConnectionMode;

    invoke-direct {p0, v1, v2, v3}, Lcom/mb/android/apiinteraction/ApiClient;->AddAddress(Ljava/util/ArrayList;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V

    .line 261
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p1, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->TotalNumTests:I

    .line 263
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 264
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-static {p1, v0, p0}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->access$200(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Lcom/mb/android/model/apiclient/ServerInfo;Lcom/mb/android/apiinteraction/ApiClient;)V

    return-void

    .line 268
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6

    .line 269
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;

    iget-object v2, v2, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;->Address:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;

    iget-object v1, v1, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;->ConnectionMode:Lcom/mb/android/model/apiclient/ConnectionMode;

    invoke-static {p1, v0, v2, v1, p0}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->access$100(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;Lcom/mb/android/apiinteraction/ApiClient;)V

    return-void

    .line 273
    :cond_6
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    const/4 v9, 0x0

    .line 275
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v9, v3, :cond_8

    .line 277
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;

    if-nez v9, :cond_7

    .line 280
    invoke-direct {p0, v6, v0, p1}, Lcom/mb/android/apiinteraction/ApiClient;->testConnection(Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    goto :goto_2

    :cond_7
    mul-int/lit16 v5, v9, 0xc8

    move-object v3, p0

    move-object v4, v2

    move-object v7, v0

    move-object v8, p1

    .line 282
    invoke-direct/range {v3 .. v8}, Lcom/mb/android/apiinteraction/ApiClient;->scheduleTest(Ljava/util/Timer;ILcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public favoriteItem(Ljava/lang/String;ZLcom/mb/android/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/model/dto/UserItemDataDto;",
            ">;)V"
        }
    .end annotation

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/FavoriteItems/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 632
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v1}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ApiClient: favoriteItem failed. No valid server address for %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    new-instance p1, Ljava/lang/Exception;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "No valid server address for %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 637
    :cond_0
    new-instance v0, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 638
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p1, "POST"

    goto :goto_0

    :cond_1
    const-string p1, "DELETE"

    .line 639
    :goto_0
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 640
    invoke-direct {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 642
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object p2, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v1, Lcom/mb/android/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v3, Lcom/mb/android/model/dto/UserItemDataDto;

    invoke-direct {v1, p3, v2, v3}, Lcom/mb/android/apiinteraction/SerializedResponse;-><init>(Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-static {p1, v0, p2, v1}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getArtistItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
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

    .line 562
    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserId"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Artists"

    .line 563
    invoke-virtual {p0, p1, p2}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 566
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v1}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ApiClient: getArtistItems failed. No valid server address for %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "No valid server address for %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 571
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/mb/android/apiinteraction/ApiClient;->getItems(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getAudioStreamUrl(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IZ)Ljava/lang/String;
    .locals 3

    .line 720
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 721
    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/mb/android/AndroidAppHost;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    .line 724
    invoke-virtual {p6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v1, "MaxStreamingBitrate"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p5, :cond_1

    const-string p6, "Container"

    .line 727
    invoke-virtual {v0, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    const-string p5, "TranscodingContainer"

    .line 730
    invoke-virtual {v0, p5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    const-string p2, "TranscodingProtocol"

    .line 733
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p4, :cond_4

    const-string p2, "AudioCodec"

    .line 736
    invoke-virtual {v0, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p7, :cond_5

    .line 739
    invoke-virtual {p7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MaxAudioSampleRate"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p8, :cond_6

    .line 742
    invoke-virtual {p8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MaxAudioBitDepth"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :cond_6
    iget-object p2, p0, Lcom/mb/android/apiinteraction/ApiClient;->accessToken:Ljava/lang/String;

    const-string p3, "api_key"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-wide p2, p0, Lcom/mb/android/apiinteraction/ApiClient;->startingPlaySession:J

    const-wide/16 p4, 0x1

    add-long/2addr p4, p2

    iput-wide p4, p0, Lcom/mb/android/apiinteraction/ApiClient;->startingPlaySession:J

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "PlaySessionId"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "StartTimeTicks"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "EnableRedirection"

    const-string p3, "true"

    .line 747
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-static {p10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "EnableRemoteMedia"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Audio/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/universal"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDateLastAccessed()J
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/apiclient/ServerInfo;->getDateLastAccessed()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mb/android/AndroidAppHost;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndpointInfo(Lcom/mb/android/apiinteraction/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;",
            ">;)V"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->endpointInfo:Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "System/Endpoint"

    .line 652
    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v3}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ApiClient: getEndpointInfo failed. No valid server address for %s"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "No valid server address for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 659
    :cond_1
    new-instance v1, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 660
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v0, "GET"

    .line 661
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string v0, "application/json"

    .line 662
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 663
    invoke-direct {p0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 665
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v3, Lcom/mb/android/apiinteraction/ApiClient$5;

    iget-object v4, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v5, Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/mb/android/apiinteraction/ApiClient$5;-><init>(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-static {v0, v1, v2, v3}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getItem(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 4
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

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Items/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 508
    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 511
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v1}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ApiClient: getItem failed. No valid server address for %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "No valid server address for %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 516
    :cond_1
    new-instance p2, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {p2}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 517
    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string p1, "GET"

    .line 518
    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string p1, "application/json"

    .line 519
    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, p2}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 522
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v1, Lcom/mb/android/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v3, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-direct {v1, p3, v2, v3}, Lcom/mb/android/apiinteraction/SerializedResponse;-><init>(Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-static {p1, p2, v0, v1}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void

    .line 503
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ItemId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
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

    if-eqz p1, :cond_0

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 548
    invoke-virtual {p0, p1, p2}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Items"

    .line 549
    invoke-virtual {p0, p1, p2}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 552
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v1}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ApiClient: getItems failed. No valid server address for %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "No valid server address for %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 557
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/mb/android/apiinteraction/ApiClient;->getItems(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getLatestItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mb/android/apiinteraction/Response<",
            "[",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Items/Latest"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 604
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v1}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ApiClient: getLatestItems failed. No valid server address for %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "No valid server address for %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 609
    :cond_1
    new-instance p2, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {p2}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 610
    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string p1, "GET"

    .line 611
    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string p1, "application/json"

    .line 612
    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 613
    invoke-direct {p0, p2}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 615
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v1, Lcom/mb/android/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v3, [Lcom/mb/android/model/dto/BaseItemDto;

    invoke-direct {v1, p3, v2, v3}, Lcom/mb/android/apiinteraction/SerializedResponse;-><init>(Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-static {p1, p2, v0, v1}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getNextUp(Lcom/mb/android/apiinteraction/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;",
            ">;)V"
        }
    .end annotation

    .line 576
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 577
    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Limit"

    const-string v2, "25"

    .line 578
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Fields"

    const-string v2, "ProductionYear,Overview"

    .line 579
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Shows/NextUp"

    .line 581
    invoke-virtual {p0, v1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v3}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ApiClient: getNextUp failed. No valid server address for %s"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "No valid server address for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 589
    :cond_0
    new-instance v1, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 590
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v0, "GET"

    .line 591
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string v0, "application/json"

    .line 592
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 593
    invoke-direct {p0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 595
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v3, Lcom/mb/android/apiinteraction/SerializedResponse;

    iget-object v4, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v5, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-direct {v3, p1, v4, v5}, Lcom/mb/android/apiinteraction/SerializedResponse;-><init>(Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-static {v0, v1, v2, v3}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getReadySyncItems(Lcom/mb/android/apiinteraction/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/Response<",
            "[",
            "Lcom/mb/android/model/sync/SyncJobItem;",
            ">;)V"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 385
    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/mb/android/AndroidAppHost;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TargetId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Sync/Items/Ready"

    .line 387
    invoke-virtual {p0, v1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v3}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ApiClient: getReadySyncItems failed. No valid server address for %s"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    new-instance v0, Ljava/lang/Exception;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "No valid server address for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 394
    :cond_0
    new-instance v1, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 395
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v0, "GET"

    .line 396
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string v0, "application/json"

    .line 397
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 400
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v3, Lcom/mb/android/apiinteraction/SerializedResponse;

    iget-object v4, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v5, [Lcom/mb/android/model/sync/SyncJobItem;

    invoke-direct {v3, p1, v4, v5}, Lcom/mb/android/apiinteraction/SerializedResponse;-><init>(Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-static {v0, v1, v2, v3}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getScaledImageUrl(Ljava/lang/String;Lcom/mb/android/model/dto/ImageOptions;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mb/android/model/dto/ImageOptions;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->localAssetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getImageType()Lcom/mb/android/model/entities/ImageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mb/android/model/entities/ImageType;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 451
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/mb/android/sync/data/LocalAssetHelper;->getLocalMetadataPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string p2, "content"

    .line 457
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "com.mb.android.media.ArtworkProvider"

    .line 458
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 459
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Items/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Images"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_1

    .line 467
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_1
    if-eqz p2, :cond_e

    .line 471
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getImageType()Lcom/mb/android/model/entities/ImageType;

    move-result-object v0

    const-string v1, "/"

    if-eqz v0, :cond_2

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getImageType()Lcom/mb/android/model/entities/ImageType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mb/android/model/entities/ImageType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 474
    :cond_2
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getImageIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getImageIndex()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 478
    :cond_3
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Width"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_4
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Height"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_5
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaxWidth"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_6
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaxHeight"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_7
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getQuality()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getQuality()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Quality"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_8
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tag"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_9
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getCropWhitespace()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getCropWhitespace()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CropWhitespace"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_a
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getEnableImageEnhancers()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnableImageEnhancers"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getAddPlayedIndicator()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddPlayedIndicator"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getUnPlayedCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getUnPlayedCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnPlayedCount"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_b
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getPercentPlayed()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getPercentPlayed()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PercentPlayed"

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_c
    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/mb/android/model/dto/ImageOptions;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BackgroundColor"

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_d
    invoke-virtual {p0, p1, p3}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 497
    :cond_e
    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getServerCredentials()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncJobForDownloadedItem(Lcom/mb/android/model/dto/BaseItemDto;Lcom/mb/android/apiinteraction/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/model/sync/SyncJobCreationResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Sync/Jobs"

    .line 405
    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 407
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v3}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "ApiClient: getSyncJobForDownloadedItem failed. No valid server address for %s"

    invoke-interface {p1, v3, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "No valid server address for %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 412
    :cond_0
    new-instance v3, Lcom/mb/android/model/sync/SyncJobRequest;

    invoke-direct {v3}, Lcom/mb/android/model/sync/SyncJobRequest;-><init>()V

    .line 413
    iget-object v4, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/mb/android/AndroidAppHost;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mb/android/model/sync/SyncJobRequest;->TargetId:Ljava/lang/String;

    .line 414
    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iput-object v4, v3, Lcom/mb/android/model/sync/SyncJobRequest;->ItemIds:[Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getParentId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/mb/android/model/sync/SyncJobRequest;->ParentId:Ljava/lang/String;

    .line 416
    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/mb/android/model/sync/SyncJobRequest;->UserId:Ljava/lang/String;

    .line 417
    iput-boolean v1, v3, Lcom/mb/android/model/sync/SyncJobRequest;->UnwatchedOnly:Z

    .line 418
    iput-boolean v1, v3, Lcom/mb/android/model/sync/SyncJobRequest;->SyncNewContent:Z

    .line 419
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v3, Lcom/mb/android/model/sync/SyncJobRequest;->ItemLimit:Ljava/lang/Integer;

    .line 420
    iput-boolean v2, v3, Lcom/mb/android/model/sync/SyncJobRequest;->Downloaded:Z

    .line 422
    new-instance p1, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 423
    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v0, "POST"

    .line 424
    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string v0, "application/json"

    .line 425
    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v0, v3}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContent(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 429
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v2, Lcom/mb/android/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v4, Lcom/mb/android/model/sync/SyncJobCreationResult;

    invoke-direct {v2, p2, v3, v4}, Lcom/mb/android/apiinteraction/SerializedResponse;-><init>(Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-static {v0, p1, v1, v2}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverAddress:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 153
    iget p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->automaticRetryCount:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 154
    iput p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->automaticRetryCount:I

    .line 155
    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->tryBackgroundReconnect()V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 160
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/emby"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 172
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 177
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/apiclient/ServerInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserViews(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V
    .locals 4
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

    if-nez p1, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Views"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 531
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v1}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ApiClient: getUserViews failed. No valid server address for %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "No valid server address for %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 536
    :cond_1
    new-instance p2, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {p2}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 537
    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string p1, "GET"

    .line 538
    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string p1, "application/json"

    .line 539
    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0, p2}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 542
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v1, Lcom/mb/android/apiinteraction/SerializedResponse;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v3, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-direct {v1, p3, v2, v3}, Lcom/mb/android/apiinteraction/SerializedResponse;-><init>(Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-static {p1, p2, v0, v1}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public hasServerCredentials()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$tryBackgroundReconnect$0$ApiClient()V
    .locals 1

    .line 183
    new-instance v0, Lcom/mb/android/apiinteraction/ApiClient$1;

    invoke-direct {v0, p0}, Lcom/mb/android/apiinteraction/ApiClient$1;-><init>(Lcom/mb/android/apiinteraction/ApiClient;)V

    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->determineServerUrl(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    return-void
.end method

.method public onNetworkChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverAddress:Ljava/lang/String;

    .line 332
    iput-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->endpointInfo:Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;

    return-void
.end method

.method public reportOfflineActions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/OfflineAction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Sync/OfflineActions"

    .line 337
    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 339
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ApiClient: reportOfflineActions failed. No valid server address for %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 343
    :cond_0
    new-instance v1, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 344
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v0, "POST"

    .line 345
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string v0, "application/json"

    .line 346
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v0, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContent(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 350
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v3, Lcom/mb/android/apiinteraction/ApiClient$4;

    invoke-direct {v3, p0, p1}, Lcom/mb/android/apiinteraction/ApiClient$4;-><init>(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V

    invoke-static {v0, v1, v2, v3}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public reportPlaybackProgress(Lcom/mb/android/model/session/PlaybackProgressInfo;)V
    .locals 10

    .line 819
    iget-wide v0, p1, Lcom/mb/android/model/session/PlaybackProgressInfo;->PositionTicks:J

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    .line 820
    iget-object v4, p1, Lcom/mb/android/model/session/PlaybackProgressInfo;->EventName:Lcom/mb/android/model/session/ProgressEvent;

    sget-object v5, Lcom/mb/android/model/session/ProgressEvent;->TimeUpdate:Lcom/mb/android/model/session/ProgressEvent;

    const-wide/16 v6, 0x0

    if-ne v4, v5, :cond_2

    .line 821
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 822
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v8, p0, Lcom/mb/android/apiinteraction/ApiClient;->lastPlaybackProgressReport:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    cmp-long v8, v4, v2

    if-gez v8, :cond_1

    cmp-long v8, v0, v6

    if-nez v8, :cond_0

    return-void

    .line 828
    :cond_0
    iget-wide v6, p0, Lcom/mb/android/apiinteraction/ApiClient;->lastPlaybackProgressReportTicks:J

    add-long/2addr v4, v6

    sub-long v4, v0, v4

    .line 829
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    return-void

    .line 833
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->lastPlaybackProgressReport:Ljava/util/Date;

    goto :goto_0

    .line 836
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->lastPlaybackProgressReport:Ljava/util/Date;

    .line 838
    :goto_0
    iput-wide v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->lastPlaybackProgressReportTicks:J

    const-string v0, "Sessions/Playing/Progress"

    .line 840
    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 842
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ApiClient: reportPlaybackProgress failed. No valid server address for %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 846
    :cond_3
    new-instance v1, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 847
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v0, "POST"

    .line 848
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string v0, "application/json"

    .line 849
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v0, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContent(Ljava/lang/String;)V

    .line 851
    invoke-direct {p0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 853
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v2, Lcom/mb/android/apiinteraction/ApiClient$9;

    invoke-direct {v2, p0}, Lcom/mb/android/apiinteraction/ApiClient$9;-><init>(Lcom/mb/android/apiinteraction/ApiClient;)V

    invoke-static {p1, v1, v0, v2}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public reportPlaybackStart(Lcom/mb/android/model/session/PlaybackProgressInfo;)V
    .locals 3

    const-string v0, "Sessions/Playing"

    .line 754
    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 756
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ApiClient: reportPlaybackStart failed. No valid server address for %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 760
    :cond_0
    new-instance v1, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 761
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v0, "POST"

    .line 762
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string v0, "application/json"

    .line 763
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v0, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContent(Ljava/lang/String;)V

    .line 765
    invoke-direct {p0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 767
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v2, Lcom/mb/android/apiinteraction/ApiClient$7;

    invoke-direct {v2, p0}, Lcom/mb/android/apiinteraction/ApiClient$7;-><init>(Lcom/mb/android/apiinteraction/ApiClient;)V

    invoke-static {p1, v1, v0, v2}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public reportPlaybackStop(Lcom/mb/android/model/session/PlaybackStopInfo;)V
    .locals 3

    const-string v0, "Sessions/Playing/Stopped"

    .line 786
    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 788
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ApiClient: reportPlaybackStop failed. No valid server address for %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 792
    :cond_0
    new-instance v1, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 793
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v0, "POST"

    .line 794
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string v0, "application/json"

    .line 795
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v0, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContent(Ljava/lang/String;)V

    .line 797
    invoke-direct {p0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 799
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v2, Lcom/mb/android/apiinteraction/ApiClient$8;

    invoke-direct {v2, p0}, Lcom/mb/android/apiinteraction/ApiClient$8;-><init>(Lcom/mb/android/apiinteraction/ApiClient;)V

    invoke-static {p1, v1, v0, v2}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public reportSyncJobItemTransferred(ILcom/mb/android/apiinteraction/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync/JobItems/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/Transferred"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ApiClient: reportSyncJobItemTransferred failed. No valid server address for %s"

    invoke-interface {p1, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v1}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "No valid server address for %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 441
    :cond_0
    new-instance v0, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 442
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string p1, "POST"

    .line 443
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 444
    invoke-direct {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 446
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-static {p1, v0, v1, p2}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public setDateLastAccessed(J)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mb/android/model/apiclient/ServerInfo;->setDateLastAccessed(Ljava/lang/Long;)V

    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverAddress:Ljava/lang/String;

    return-void
.end method

.method public setServerCredentials(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->accessToken:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->accessToken:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setServerInfo(Lcom/mb/android/model/apiclient/ServerInfo;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    return-void
.end method

.method public syncData(Lcom/mb/android/model/sync/SyncDataRequest;Lcom/mb/android/apiinteraction/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/model/sync/SyncDataRequest;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/model/sync/SyncDataResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Sync/data"

    .line 365
    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ApiClient: syncData failed. No valid server address for %s"

    invoke-interface {p1, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    new-instance p1, Ljava/lang/Exception;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient;->serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v1}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "No valid server address for %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 372
    :cond_0
    new-instance v1, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v1}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 373
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string v0, "POST"

    .line 374
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    const-string v0, "application/json"

    .line 375
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v0, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContent(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;)V

    .line 379
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v2, Lcom/mb/android/apiinteraction/SerializedResponse;

    iget-object v3, p0, Lcom/mb/android/apiinteraction/ApiClient;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v4, Lcom/mb/android/model/sync/SyncDataResponse;

    invoke-direct {v2, p2, v3, v4}, Lcom/mb/android/apiinteraction/SerializedResponse;-><init>(Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    invoke-static {p1, v1, v0, v2}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public tryBackgroundReconnect()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ApiClient: tryReconnect to server"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mb/android/apiinteraction/-$$Lambda$ApiClient$ubD2x7E9vhoPNpwj2MJ0TpVLgWY;

    invoke-direct {v1, p0}, Lcom/mb/android/apiinteraction/-$$Lambda$ApiClient$ubD2x7E9vhoPNpwj2MJ0TpVLgWY;-><init>(Lcom/mb/android/apiinteraction/ApiClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
