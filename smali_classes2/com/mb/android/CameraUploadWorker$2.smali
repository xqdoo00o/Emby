.class Lcom/mb/android/CameraUploadWorker$2;
.super Ljava/lang/Object;
.source "CameraUploadWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/CameraUploadWorker;->lambda$startWork$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/CameraUploadWorker;

.field final synthetic val$cameraUploadList:Ljava/util/List;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field final synthetic val$logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method constructor <init>(Lcom/mb/android/CameraUploadWorker;Lcom/mb/android/model/logging/ILogger;Ljava/util/List;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/mb/android/CameraUploadWorker$2;->this$0:Lcom/mb/android/CameraUploadWorker;

    iput-object p2, p0, Lcom/mb/android/CameraUploadWorker$2;->val$logger:Lcom/mb/android/model/logging/ILogger;

    iput-object p3, p0, Lcom/mb/android/CameraUploadWorker$2;->val$cameraUploadList:Ljava/util/List;

    iput-object p4, p0, Lcom/mb/android/CameraUploadWorker$2;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private containsServer([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 145
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 146
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker$2;->val$logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraUploadWorker: Job was canceled. Stopping..."

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/CameraUploadWorker$2;->this$0:Lcom/mb/android/CameraUploadWorker;

    invoke-static {v1}, Lcom/mb/android/CameraUploadWorker;->access$500(Lcom/mb/android/CameraUploadWorker;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getCameraUploadServers()[Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/mb/android/CameraUploadWorker$2;->val$cameraUploadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/sync/CameraUploader;

    .line 135
    invoke-virtual {v2}, Lcom/mb/android/sync/CameraUploader;->getUploadServerId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/mb/android/CameraUploadWorker$2;->containsServer([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    invoke-virtual {v2}, Lcom/mb/android/sync/CameraUploader;->cancelUploads()V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker$2;->this$0:Lcom/mb/android/CameraUploadWorker;

    iget-object v1, p0, Lcom/mb/android/CameraUploadWorker$2;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v0, v1}, Lcom/mb/android/CameraUploadWorker;->access$400(Lcom/mb/android/CameraUploadWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
