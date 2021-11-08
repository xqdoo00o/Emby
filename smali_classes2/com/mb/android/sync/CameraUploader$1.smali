.class Lcom/mb/android/sync/CameraUploader$1;
.super Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;
.source "CameraUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/CameraUploader;->uploadCameraRoll(Lcom/mb/android/sync/CameraUploader$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/CameraUploader;

.field final synthetic val$callback:Lcom/mb/android/sync/CameraUploader$Callback;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/CameraUploader;Lcom/mb/android/sync/CameraUploader$Callback;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mb/android/sync/CameraUploader$1;->this$0:Lcom/mb/android/sync/CameraUploader;

    iput-object p2, p0, Lcom/mb/android/sync/CameraUploader$1;->val$callback:Lcom/mb/android/sync/CameraUploader$Callback;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerConnectionFailed(Lcom/mb/android/model/apiclient/ServerInfo;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/mb/android/sync/CameraUploader$1;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {v0}, Lcom/mb/android/sync/CameraUploader;->access$100(Lcom/mb/android/sync/CameraUploader;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mb/android/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Failed to reach server \'%s\' for camera upload"

    invoke-interface {v0, p1, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/mb/android/sync/CameraUploader$1;->val$callback:Lcom/mb/android/sync/CameraUploader$Callback;

    invoke-interface {p1}, Lcom/mb/android/sync/CameraUploader$Callback;->onFailure()V

    return-void
.end method

.method public onUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V
    .locals 0

    .line 66
    iget-object p3, p0, Lcom/mb/android/sync/CameraUploader$1;->this$0:Lcom/mb/android/sync/CameraUploader;

    invoke-static {p3, p1, p2}, Lcom/mb/android/sync/CameraUploader;->access$000(Lcom/mb/android/sync/CameraUploader;Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;)V

    return-void
.end method
