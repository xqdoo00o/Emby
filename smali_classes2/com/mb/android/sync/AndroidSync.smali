.class public Lcom/mb/android/sync/AndroidSync;
.super Ljava/lang/Object;
.source "AndroidSync.java"


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method public constructor <init>(Lcom/mb/android/model/logging/ILogger;Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mb/android/sync/AndroidSync;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 21
    iput-object p2, p0, Lcom/mb/android/sync/AndroidSync;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/mb/android/sync/AndroidSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public logerror(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/mb/android/sync/AndroidSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCompleted()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/mb/android/sync/AndroidSync;->onCompletedInternal()V

    return-void
.end method

.method public onCompletedInternal()V
    .locals 0

    return-void
.end method

.method public startCameraUpload()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/mb/android/sync/AndroidSync;->context:Landroid/content/Context;

    const-class v1, Lcom/mb/android/CameraUploadWorker;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "EmbyCameraUpload"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/mb/android/AppJobScheduler;->scheduleOneTimeWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public startSync()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/mb/android/sync/AndroidSync;->context:Landroid/content/Context;

    const-class v1, Lcom/mb/android/CameraUploadWorker;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "EmbyCameraUpload"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/mb/android/AppJobScheduler;->scheduleOneTimeWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 28
    iget-object v0, p0, Lcom/mb/android/sync/AndroidSync;->context:Landroid/content/Context;

    const-class v1, Lcom/mb/android/AppSyncWorker;

    const-string v3, "EmbyAppSync"

    invoke-static {v0, v1, v3, v2, v2}, Lcom/mb/android/AppJobScheduler;->scheduleOneTimeWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
