.class public Lcom/mb/android/sync/CameraUploader;
.super Ljava/lang/Object;
.source "CameraUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/sync/CameraUploader$Callback;
    }
.end annotation


# instance fields
.field private final apiClient:Lcom/mb/android/apiinteraction/ApiClient;

.field private final appHost:Lcom/mb/android/AndroidAppHost;

.field private callback:Lcom/mb/android/sync/CameraUploader$Callback;

.field private final cameraRoll:Lcom/mb/android/sync/CameraRoll;

.field private final context:Landroid/content/Context;

.field private isCancelled:Z

.field private final jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private final uploadManager:Lcom/mb/android/sync/AndroidUploadManager;


# direct methods
.method public constructor <init>(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/AndroidUploadManager;Lcom/mb/android/AndroidAppHost;Lcom/mb/android/sync/CameraRoll;Lcom/mb/android/model/serialization/IJsonSerializer;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p6, p0, Lcom/mb/android/sync/CameraUploader;->context:Landroid/content/Context;

    .line 47
    iput-object p7, p0, Lcom/mb/android/sync/CameraUploader;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 48
    iput-object p1, p0, Lcom/mb/android/sync/CameraUploader;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    .line 49
    iput-object p2, p0, Lcom/mb/android/sync/CameraUploader;->uploadManager:Lcom/mb/android/sync/AndroidUploadManager;

    .line 50
    iput-object p3, p0, Lcom/mb/android/sync/CameraUploader;->appHost:Lcom/mb/android/AndroidAppHost;

    .line 51
    iput-object p4, p0, Lcom/mb/android/sync/CameraUploader;->cameraRoll:Lcom/mb/android/sync/CameraRoll;

    .line 52
    iput-object p5, p0, Lcom/mb/android/sync/CameraUploader;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/sync/CameraUploader;Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/CameraUploader;->onAfterServerUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/CameraUploader;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mb/android/sync/CameraUploader;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/mb/android/sync/CameraUploader;->isCancelled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/mb/android/sync/CameraUploader;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/CameraUploader;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/model/serialization/IJsonSerializer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/CameraUploader;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/sync/CameraRoll;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/CameraUploader;->cameraRoll:Lcom/mb/android/sync/CameraRoll;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mb/android/sync/CameraUploader;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/CameraUploader;->getFilesToUpload(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/AndroidAppHost;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/CameraUploader;->appHost:Lcom/mb/android/AndroidAppHost;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mb/android/sync/CameraUploader;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mb/android/sync/CameraUploader;->uploadFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/sync/CameraUploader$Callback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/CameraUploader;->callback:Lcom/mb/android/sync/CameraUploader$Callback;

    return-object p0
.end method

.method private fetchCameraUploadHistory(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/mb/android/sync/CameraUploader;->appHost:Lcom/mb/android/AndroidAppHost;

    invoke-virtual {v0}, Lcom/mb/android/AndroidAppHost;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/emby/Devices/CameraUploads"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "DeviceId"

    .line 149
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    new-instance v0, Lcom/mb/android/apiinteraction/http/HttpRequest;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;-><init>()V

    .line 153
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setUrl(Ljava/lang/String;)V

    const-string p1, "application/json"

    .line 154
    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestContentType(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/mb/android/sync/CameraUploader;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/mb/android/apiinteraction/ApiClient;->setRequestHeaders(Lcom/mb/android/apiinteraction/http/HttpRequest;Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/mb/android/sync/CameraUploader;->context:Landroid/content/Context;

    iget-object p2, p0, Lcom/mb/android/sync/CameraUploader;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-static {p1, v0, p2, p3}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private fileListContainsId(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/devices/LocalFileInfo;

    .line 175
    invoke-virtual {v0}, Lcom/mb/android/model/devices/LocalFileInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/mb/android/model/devices/LocalFileInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private getFilesToUpload(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/devices/LocalFileInfo;

    .line 163
    invoke-virtual {v1}, Lcom/mb/android/model/devices/LocalFileInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mb/android/sync/CameraUploader;->getUploadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v1}, Lcom/mb/android/model/devices/LocalFileInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mb/android/sync/CameraUploader;->getUploadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-direct {p0, p2, v2, v3}, Lcom/mb/android/sync/CameraUploader;->fileListContainsId(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getUploadId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onAfterServerUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;)V
    .locals 2

    .line 85
    invoke-virtual {p1}, Lcom/mb/android/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mb/android/sync/CameraUploader$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/mb/android/sync/CameraUploader$2;-><init>(Lcom/mb/android/sync/CameraUploader;Ljava/lang/String;Lcom/mb/android/model/apiclient/ServerInfo;)V

    invoke-direct {p0, p2, v0, v1}, Lcom/mb/android/sync/CameraUploader;->fetchCameraUploadHistory(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private uploadFiles(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/mb/android/sync/CameraUploader;->appHost:Lcom/mb/android/AndroidAppHost;

    invoke-virtual {v0}, Lcom/mb/android/AndroidAppHost;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-boolean v1, p0, Lcom/mb/android/sync/CameraUploader;->isCancelled:Z

    if-eqz v1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/devices/LocalFileInfo;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/emby/Devices/CameraUploads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "DeviceId"

    .line 131
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 132
    invoke-virtual {v1}, Lcom/mb/android/model/devices/LocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Name"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "Album"

    const-string v4, "Camera Roll"

    .line 133
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 134
    invoke-virtual {v1}, Lcom/mb/android/model/devices/LocalFileInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mb/android/sync/CameraUploader;->getUploadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Id"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "api_key"

    .line 135
    invoke-virtual {v2, v3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/mb/android/sync/CameraUploader;->uploadManager:Lcom/mb/android/sync/AndroidUploadManager;

    invoke-virtual {v3, p1, v1, v2}, Lcom/mb/android/sync/AndroidUploadManager;->uploadFile(Ljava/lang/String;Lcom/mb/android/model/devices/LocalFileInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/mb/android/sync/CameraUploader;->callback:Lcom/mb/android/sync/CameraUploader$Callback;

    invoke-interface {p1}, Lcom/mb/android/sync/CameraUploader$Callback;->onSuccess()V

    return-void
.end method


# virtual methods
.method public cancelUploads()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mb/android/sync/CameraUploader;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mb/android/sync/AndroidUploadManager;->cancelUploadsForServer(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/mb/android/sync/CameraUploader;->isCancelled:Z

    .line 80
    iget-object v0, p0, Lcom/mb/android/sync/CameraUploader;->callback:Lcom/mb/android/sync/CameraUploader$Callback;

    invoke-interface {v0}, Lcom/mb/android/sync/CameraUploader$Callback;->onFailure()V

    return-void
.end method

.method public getUploadServerId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mb/android/sync/CameraUploader;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadCameraRoll(Lcom/mb/android/sync/CameraUploader$Callback;)V
    .locals 2

    .line 61
    iput-object p1, p0, Lcom/mb/android/sync/CameraUploader;->callback:Lcom/mb/android/sync/CameraUploader$Callback;

    .line 63
    iget-object v0, p0, Lcom/mb/android/sync/CameraUploader;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    new-instance v1, Lcom/mb/android/sync/CameraUploader$1;

    invoke-direct {v1, p0, p1}, Lcom/mb/android/sync/CameraUploader$1;-><init>(Lcom/mb/android/sync/CameraUploader;Lcom/mb/android/sync/CameraUploader$Callback;)V

    invoke-virtual {v0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->determineServerUrl(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    return-void
.end method
