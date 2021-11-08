.class public Lcom/mb/android/sync/AndroidUploadManager;
.super Ljava/lang/Object;
.source "AndroidUploadManager.java"

# interfaces
.implements Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;


# instance fields
.field private final activeUploads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/gotev/uploadservice/data/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final completedUploads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/gotev/uploadservice/data/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private notificationManager:Lcom/mb/android/sync/UploadNotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mb/android/sync/AndroidUploadManager;->activeUploads:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mb/android/sync/AndroidUploadManager;->completedUploads:Ljava/util/HashMap;

    .line 40
    iput-object p1, p0, Lcom/mb/android/sync/AndroidUploadManager;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/mb/android/sync/AndroidUploadManager;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 43
    new-instance p1, Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$fCwnT4oIY_RanSS1kbs623SMOaI;

    invoke-direct {p1, p0, p2}, Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$fCwnT4oIY_RanSS1kbs623SMOaI;-><init>(Lcom/mb/android/sync/AndroidUploadManager;Lcom/mb/android/model/logging/ILogger;)V

    invoke-static {p1}, Lnet/gotev/uploadservice/UploadServiceConfig;->setNotificationHandlerFactory(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static cancelAllUploads()V
    .locals 0

    .line 97
    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->stopAllUploads()V

    return-void
.end method

.method public static cancelUploadsForServer(Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 84
    :cond_0
    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->getTaskList()Ljava/util/List;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    invoke-static {v0}, Lnet/gotev/uploadservice/UploadService;->stopUpload(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private getAllUploads()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnet/gotev/uploadservice/data/UploadInfo;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/mb/android/sync/AndroidUploadManager;->activeUploads:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v1, p0, Lcom/mb/android/sync/AndroidUploadManager;->completedUploads:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getNotificationConfig(Ljava/lang/String;)Lnet/gotev/uploadservice/data/UploadNotificationConfig;
    .locals 1

    .line 101
    new-instance p1, Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    const-string v0, "com.emby.cameraUploadChannel"

    invoke-direct {p1, v0}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic lambda$R-6F3BHvZxR9nINtg7XLfYivfe0(Lcom/mb/android/sync/AndroidUploadManager;Ljava/lang/String;)Lnet/gotev/uploadservice/data/UploadNotificationConfig;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mb/android/sync/AndroidUploadManager;->getNotificationConfig(Ljava/lang/String;)Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    move-result-object p0

    return-object p0
.end method

.method private reportProgress()V
    .locals 9

    .line 140
    invoke-direct {p0}, Lcom/mb/android/sync/AndroidUploadManager;->getAllUploads()Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/mb/android/sync/AppSettings;

    iget-object v2, p0, Lcom/mb/android/sync/AndroidUploadManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/mb/android/sync/AppSettings;->getCameraUploadProgressEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/gotev/uploadservice/data/UploadInfo;

    .line 148
    invoke-virtual {v6}, Lnet/gotev/uploadservice/data/UploadInfo;->getTotalBytes()J

    move-result-wide v7

    add-long/2addr v4, v7

    .line 149
    invoke-virtual {v6}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadedBytes()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0

    :cond_0
    long-to-double v1, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v6

    long-to-double v3, v4

    div-double/2addr v1, v3

    const/4 v3, 0x3

    .line 154
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mb/android/sync/AndroidUploadManager;->completedUploads:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "if(window.CameraUpload){window.CameraUpload.onProgress(%d,%d,%f);}"

    .line 154
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mb.android.ACTION_SEND_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    .line 157
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/mb/android/sync/AndroidUploadManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/mb/android/sync/AndroidUploadManager;->notificationManager:Lcom/mb/android/sync/UploadNotificationManager;

    invoke-virtual {v1, v0}, Lcom/mb/android/sync/UploadNotificationManager;->showProgressNotification(Ljava/util/Collection;)V

    .line 164
    iget-object v1, p0, Lcom/mb/android/sync/AndroidUploadManager;->activeUploads:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/mb/android/sync/AndroidUploadManager;->completedUploads:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/mb/android/sync/AndroidUploadManager;->notificationManager:Lcom/mb/android/sync/UploadNotificationManager;

    invoke-virtual {v1, v0}, Lcom/mb/android/sync/UploadNotificationManager;->showCompletedNotification(Ljava/util/Collection;)V

    .line 167
    iget-object v0, p0, Lcom/mb/android/sync/AndroidUploadManager;->completedUploads:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$AndroidUploadManager(Lcom/mb/android/model/logging/ILogger;Lnet/gotev/uploadservice/UploadService;)Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;
    .locals 1

    .line 44
    new-instance v0, Lcom/mb/android/sync/UploadNotificationManager;

    invoke-direct {v0, p2, p1}, Lcom/mb/android/sync/UploadNotificationManager;-><init>(Landroid/app/Service;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/sync/AndroidUploadManager;->notificationManager:Lcom/mb/android/sync/UploadNotificationManager;

    return-object p0
.end method

.method public onCompleted(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .locals 0
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 133
    iget-object p2, p0, Lcom/mb/android/sync/AndroidUploadManager;->activeUploads:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/mb/android/sync/AndroidUploadManager;->reportProgress()V

    :cond_0
    return-void
.end method

.method public onError(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 125
    iget-object p2, p0, Lcom/mb/android/sync/AndroidUploadManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "Error uploading file"

    invoke-interface {p2, v0, p4, p3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 126
    iget-object p2, p0, Lcom/mb/android/sync/AndroidUploadManager;->activeUploads:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/mb/android/sync/AndroidUploadManager;->reportProgress()V

    :cond_0
    return-void
.end method

.method public onProgress(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .locals 0
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 112
    iget-object p2, p0, Lcom/mb/android/sync/AndroidUploadManager;->activeUploads:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-direct {p0}, Lcom/mb/android/sync/AndroidUploadManager;->reportProgress()V

    return-void
.end method

.method public onStart(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .locals 0
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 106
    invoke-direct {p0}, Lcom/mb/android/sync/AndroidUploadManager;->reportProgress()V

    .line 107
    iget-object p1, p0, Lcom/mb/android/sync/AndroidUploadManager;->notificationManager:Lcom/mb/android/sync/UploadNotificationManager;

    invoke-direct {p0}, Lcom/mb/android/sync/AndroidUploadManager;->getAllUploads()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/sync/UploadNotificationManager;->showProgressNotification(Ljava/util/Collection;)V

    return-void
.end method

.method public onSuccess(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;Lnet/gotev/uploadservice/network/ServerResponse;)V
    .locals 0
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lnet/gotev/uploadservice/network/ServerResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 118
    iget-object p2, p0, Lcom/mb/android/sync/AndroidUploadManager;->completedUploads:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p2, p0, Lcom/mb/android/sync/AndroidUploadManager;->activeUploads:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-direct {p0}, Lcom/mb/android/sync/AndroidUploadManager;->reportProgress()V

    return-void
.end method

.method public uploadFile(Ljava/lang/String;Lcom/mb/android/model/devices/LocalFileInfo;Ljava/lang/String;)V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mb/android/sync/AndroidUploadManager;->uploadFile(Ljava/lang/String;Lcom/mb/android/model/devices/LocalFileInfo;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public uploadFile(Ljava/lang/String;Lcom/mb/android/model/devices/LocalFileInfo;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 55
    iget-object v2, v1, Lcom/mb/android/sync/AndroidUploadManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/mb/android/model/devices/LocalFileInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v6, "AndroidUploadManager uploading file \'%s\' to url \'%s\'"

    invoke-interface {v2, v6, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/mb/android/model/devices/LocalFileInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    :try_start_0
    new-instance v3, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;

    iget-object v6, v1, Lcom/mb/android/sync/AndroidUploadManager;->context:Landroid/content/Context;

    invoke-direct {v3, v6, v0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v3, v0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->setUploadID(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadRequest;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;

    .line 62
    invoke-virtual {v0, v2}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->setFileToUpload(Ljava/lang/String;)Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;

    move-result-object v0

    const-string v2, "Content-Type"

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/mb/android/model/devices/LocalFileInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;

    new-instance v2, Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$R-6F3BHvZxR9nINtg7XLfYivfe0;

    invoke-direct {v2, v1}, Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$R-6F3BHvZxR9nINtg7XLfYivfe0;-><init>(Lcom/mb/android/sync/AndroidUploadManager;)V

    .line 64
    invoke-virtual {v0, v2}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->setNotificationConfig(Lkotlin/jvm/functions/Function1;)Lnet/gotev/uploadservice/UploadRequest;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;

    .line 65
    invoke-virtual {v0, v5}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/HttpUploadRequest;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;

    .line 66
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->startUpload()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v2, v1, Lcom/mb/android/sync/AndroidUploadManager;->activeUploads:Ljava/util/HashMap;

    new-instance v3, Lnet/gotev/uploadservice/data/UploadInfo;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/mb/android/model/devices/LocalFileInfo;->getSize()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object v7, v3

    move-object v8, v0

    invoke-direct/range {v7 .. v15}, Lnet/gotev/uploadservice/data/UploadInfo;-><init>(Ljava/lang/String;JJJI)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 74
    iget-object v2, v1, Lcom/mb/android/sync/AndroidUploadManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "AndroidUploadManager %s"

    invoke-interface {v2, v4, v0, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
