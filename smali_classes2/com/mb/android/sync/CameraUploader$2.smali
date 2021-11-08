.class Lcom/mb/android/sync/CameraUploader$2;
.super Lcom/mb/android/apiinteraction/Response;
.source "CameraUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/CameraUploader;->onAfterServerUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/CameraUploader;

.field final synthetic val$serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

.field final synthetic val$serverUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/CameraUploader;Ljava/lang/String;Lcom/mb/android/model/apiclient/ServerInfo;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    iput-object p2, p0, Lcom/mb/android/sync/CameraUploader$2;->val$serverUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/mb/android/sync/CameraUploader$2;->val$serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 114
    iget-object p1, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {p1}, Lcom/mb/android/sync/CameraUploader;->access$100(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/sync/CameraUploader$2;->val$serverUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {v1}, Lcom/mb/android/sync/CameraUploader;->access$700(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/AndroidAppHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mb/android/AndroidAppHost;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Failed to fetch camera upload history for server \'%s\' device \'%s\'"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {p1}, Lcom/mb/android/sync/CameraUploader;->access$900(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/sync/CameraUploader$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/mb/android/sync/CameraUploader$Callback;->onFailure()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mb/android/sync/CameraUploader$2;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {v0}, Lcom/mb/android/sync/CameraUploader;->access$200(Lcom/mb/android/sync/CameraUploader;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {v1}, Lcom/mb/android/sync/CameraUploader;->access$300(Lcom/mb/android/sync/CameraUploader;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getCameraUploadFolders()[Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getCameraUploadAllFolders()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {v0}, Lcom/mb/android/sync/CameraUploader;->access$400(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/model/serialization/IJsonSerializer;

    move-result-object v0

    const-class v2, Lcom/mb/android/model/devices/ContentUploadHistory;

    invoke-interface {v0, p1, v2}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mb/android/model/devices/ContentUploadHistory;

    .line 101
    iget-object v0, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {v0}, Lcom/mb/android/sync/CameraUploader;->access$500(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/sync/CameraRoll;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mb/android/sync/CameraRoll;->getLocalPhotos([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {v2}, Lcom/mb/android/sync/CameraUploader;->access$500(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/sync/CameraRoll;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mb/android/sync/CameraRoll;->getLocalVideos([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-virtual {p1}, Lcom/mb/android/model/devices/ContentUploadHistory;->getFilesUploaded()Ljava/util/ArrayList;

    move-result-object p1

    .line 104
    iget-object v1, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {v1, v0, p1}, Lcom/mb/android/sync/CameraUploader;->access$600(Lcom/mb/android/sync/CameraUploader;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {v1}, Lcom/mb/android/sync/CameraUploader;->access$100(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/mb/android/sync/CameraUploader$2;->val$serverUrl:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 p1, 0x2

    iget-object v5, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {v5}, Lcom/mb/android/sync/CameraUploader;->access$700(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/AndroidAppHost;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mb/android/AndroidAppHost;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, p1

    const-string p1, "Found %d images uploaded for server \'%s\' device \'%s\'"

    invoke-interface {v1, p1, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {p1}, Lcom/mb/android/sync/CameraUploader;->access$100(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Found %d images to upload"

    invoke-interface {p1, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/mb/android/sync/CameraUploader$2;->this$0:Lcom/mb/android/sync/CameraUploader;

    iget-object v1, p0, Lcom/mb/android/sync/CameraUploader$2;->val$serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v1}, Lcom/mb/android/model/apiclient/ServerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mb/android/sync/CameraUploader$2;->val$serverUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/mb/android/sync/CameraUploader$2;->val$serverInfo:Lcom/mb/android/model/apiclient/ServerInfo;

    invoke-virtual {v3}, Lcom/mb/android/model/apiclient/ServerInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v0, v2, v3}, Lcom/mb/android/sync/CameraUploader;->access$800(Lcom/mb/android/sync/CameraUploader;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
