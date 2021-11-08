.class public Lcom/mb/android/CameraUploadWorker;
.super Landroidx/work/ListenableWorker;
.source "CameraUploadWorker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EmbyCameraUpload"


# instance fields
.field private final connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

.field private final context:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private nErrors:I

.field private nServers:I

.field private nSuccesses:I

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InvalidWakeLockTag"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 46
    iput-object p1, p0, Lcom/mb/android/CameraUploadWorker;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/mb/android/MainApp;

    invoke-virtual {p2}, Lcom/mb/android/MainApp;->getConnectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/CameraUploadWorker;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string v0, "AudioMix"

    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/CameraUploadWorker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/CameraUploadWorker;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/mb/android/CameraUploadWorker;->nSuccesses:I

    return p0
.end method

.method static synthetic access$004(Lcom/mb/android/CameraUploadWorker;)I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mb/android/CameraUploadWorker;->nSuccesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mb/android/CameraUploadWorker;->nSuccesses:I

    return v0
.end method

.method static synthetic access$100(Lcom/mb/android/CameraUploadWorker;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/mb/android/CameraUploadWorker;->nErrors:I

    return p0
.end method

.method static synthetic access$104(Lcom/mb/android/CameraUploadWorker;)I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mb/android/CameraUploadWorker;->nErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mb/android/CameraUploadWorker;->nErrors:I

    return v0
.end method

.method static synthetic access$200(Lcom/mb/android/CameraUploadWorker;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/mb/android/CameraUploadWorker;->nServers:I

    return p0
.end method

.method static synthetic access$300(Lcom/mb/android/CameraUploadWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/mb/android/CameraUploadWorker;->onSuccess(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mb/android/CameraUploadWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/mb/android/CameraUploadWorker;->onFailure(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mb/android/CameraUploadWorker;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mb/android/CameraUploadWorker;->context:Landroid/content/Context;

    return-object p0
.end method

.method private isContentTriggerWork()Z
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/mb/android/CameraUploadWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "is_content_uri_trigger"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isPeriodic()Ljava/lang/Boolean;
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/mb/android/CameraUploadWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "is_work_periodic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private onComplete()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Releasing Huawei wakelock"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private onFailure(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraUploadWorker: Exit FAILED"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0}, Lcom/mb/android/CameraUploadWorker;->onComplete()V

    .line 181
    invoke-direct {p0}, Lcom/mb/android/CameraUploadWorker;->isContentTriggerWork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/mb/android/CameraUploadWorker;->rescheduleContentTriggerWork()V

    .line 186
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private onSuccess(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraUploadWorker: Exit SUCCESS"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-direct {p0}, Lcom/mb/android/CameraUploadWorker;->onComplete()V

    .line 168
    invoke-direct {p0}, Lcom/mb/android/CameraUploadWorker;->isContentTriggerWork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/mb/android/CameraUploadWorker;->rescheduleContentTriggerWork()V

    .line 172
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private rescheduleContentTriggerWork()V
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CameraUploadWorker: Job was triggered from content uri change, rescheduling..."

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker;->context:Landroid/content/Context;

    const-class v1, Lcom/mb/android/CameraUploadWorker;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    const-string v4, "EmbyCameraUpload"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/mb/android/AppJobScheduler;->scheduleContentUriTriggerWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/work/ExistingWorkPolicy;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$startWork$0$CameraUploadWorker(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 59
    iget-object v2, v0, Lcom/mb/android/CameraUploadWorker;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    .line 60
    iput-object v2, v0, Lcom/mb/android/CameraUploadWorker;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/mb/android/CameraUploadWorker;->isPeriodic()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v11, "Camera Upload"

    if-eqz v3, :cond_0

    .line 63
    new-instance v3, Lcom/mb/android/sync/AppSettings;

    iget-object v4, v0, Lcom/mb/android/CameraUploadWorker;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v3}, Lcom/mb/android/sync/AppSettings;->getSyncActive()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-object v11

    :cond_0
    const/4 v3, 0x0

    .line 71
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "CameraUploadWorker: Start executing job."

    invoke-interface {v2, v5, v4}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "Huawei"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 74
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Acquiring Huawei wakelock"

    invoke-interface {v2, v5, v4}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v4, v0, Lcom/mb/android/CameraUploadWorker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v5, 0x3a980

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 78
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v5, Lcom/mb/android/sync/AppSettings;

    iget-object v6, v0, Lcom/mb/android/CameraUploadWorker;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/mb/android/sync/AppSettings;->getCameraUploadServers()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 82
    new-array v6, v6, [Ljava/lang/Object;

    array-length v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "Found %d server(s) for camera upload"

    invoke-interface {v2, v7, v6}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    array-length v6, v5

    if-nez v6, :cond_2

    .line 84
    invoke-direct/range {p0 .. p1}, Lcom/mb/android/CameraUploadWorker;->onSuccess(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-object v11

    .line 87
    :cond_2
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 88
    iget-object v9, v0, Lcom/mb/android/CameraUploadWorker;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {v9, v8}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 89
    invoke-virtual {v8}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 90
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 94
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v0, Lcom/mb/android/CameraUploadWorker;->nServers:I

    .line 96
    iget v5, v0, Lcom/mb/android/CameraUploadWorker;->nServers:I

    if-nez v5, :cond_5

    .line 97
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Could not find credentials for camera upload servers"

    invoke-interface {v2, v4, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-direct/range {p0 .. p1}, Lcom/mb/android/CameraUploadWorker;->onSuccess(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-object v11

    .line 102
    :cond_5
    new-instance v13, Lcom/mb/android/sync/AndroidUploadManager;

    iget-object v3, v0, Lcom/mb/android/CameraUploadWorker;->context:Landroid/content/Context;

    invoke-direct {v13, v3, v2}, Lcom/mb/android/sync/AndroidUploadManager;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    .line 103
    new-instance v14, Lcom/mb/android/AndroidAppHost;

    iget-object v3, v0, Lcom/mb/android/CameraUploadWorker;->context:Landroid/content/Context;

    invoke-direct {v14, v3, v2}, Lcom/mb/android/AndroidAppHost;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    .line 104
    new-instance v15, Lcom/mb/android/sync/CameraRoll;

    iget-object v3, v0, Lcom/mb/android/CameraUploadWorker;->context:Landroid/content/Context;

    invoke-direct {v15, v3}, Lcom/mb/android/sync/CameraRoll;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v16, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct/range {v16 .. v16}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    .line 107
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/mb/android/apiinteraction/ApiClient;

    .line 108
    new-instance v10, Lcom/mb/android/sync/CameraUploader;

    iget-object v9, v0, Lcom/mb/android/CameraUploadWorker;->context:Landroid/content/Context;

    move-object v3, v10

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v18, v13

    move-object v13, v10

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/mb/android/sync/CameraUploader;-><init>(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/AndroidUploadManager;Lcom/mb/android/AndroidAppHost;Lcom/mb/android/sync/CameraRoll;Lcom/mb/android/model/serialization/IJsonSerializer;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    .line 109
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v3, Lcom/mb/android/CameraUploadWorker$1;

    invoke-direct {v3, v0, v1}, Lcom/mb/android/CameraUploadWorker$1;-><init>(Lcom/mb/android/CameraUploadWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {v13, v3}, Lcom/mb/android/sync/CameraUploader;->uploadCameraRoll(Lcom/mb/android/sync/CameraUploader$Callback;)V

    move-object/from16 v13, v18

    goto :goto_1

    .line 128
    :cond_6
    new-instance v3, Lcom/mb/android/CameraUploadWorker$2;

    invoke-direct {v3, v0, v2, v12, v1}, Lcom/mb/android/CameraUploadWorker$2;-><init>(Lcom/mb/android/CameraUploadWorker;Lcom/mb/android/model/logging/ILogger;Ljava/util/List;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    sget-object v2, Lcom/mb/android/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:Lcom/mb/android/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    invoke-virtual {v1, v3, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v11
.end method

.method public onStopped()V
    .locals 0

    .line 160
    invoke-super {p0}, Landroidx/work/ListenableWorker;->onStopped()V

    return-void
.end method

.method public startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/mb/android/-$$Lambda$CameraUploadWorker$M1bNv2s6RJIMrJmHwo4I_3O0gWg;

    invoke-direct {v0, p0}, Lcom/mb/android/-$$Lambda$CameraUploadWorker$M1bNv2s6RJIMrJmHwo4I_3O0gWg;-><init>(Lcom/mb/android/CameraUploadWorker;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
