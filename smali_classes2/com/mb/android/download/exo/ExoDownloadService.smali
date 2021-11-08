.class public Lcom/mb/android/download/exo/ExoDownloadService;
.super Lcom/google/android/exoplayer2/offline/DownloadService;
.source "ExoDownloadService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "download_channel"

.field private static final FOREGROUND_NOTIFICATION_ID:I = 0x19d

.field private static final JOB_ID:I = 0x1

.field private static nextNotificationId:I = 0x19e


# instance fields
.field private downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

.field private downloadTracker:Lcom/mb/android/download/exo/ExoDownloadTracker;

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private notificationHelper:Lcom/mb/android/download/DownloadNotificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/16 v1, 0x19d

    const-wide/16 v2, 0x3e8

    const-string v4, "download_channel"

    const v5, 0x7f12005f

    move-object v0, p0

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/DownloadService;-><init>(IJLjava/lang/String;I)V

    const/16 v0, 0x19e

    .line 41
    sput v0, Lcom/mb/android/download/exo/ExoDownloadService;->nextNotificationId:I

    return-void
.end method

.method private getDownloadTracker()Lcom/mb/android/download/exo/ExoDownloadTracker;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->downloadTracker:Lcom/mb/android/download/exo/ExoDownloadTracker;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/mb/android/MainApp;

    invoke-virtual {v0}, Lcom/mb/android/MainApp;->getExoDownloadHelper()Lcom/mb/android/download/exo/ExoDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/download/exo/ExoDownloadHelper;->getDownloadTracker()Lcom/mb/android/download/exo/ExoDownloadTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->downloadTracker:Lcom/mb/android/download/exo/ExoDownloadTracker;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->downloadTracker:Lcom/mb/android/download/exo/ExoDownloadTracker;

    return-object v0
.end method

.method private getNotificationHelper()Lcom/mb/android/download/DownloadNotificationHelper;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->notificationHelper:Lcom/mb/android/download/DownloadNotificationHelper;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/mb/android/download/DownloadNotificationHelper;

    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadService;->getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v1

    const-string v2, "download_channel"

    invoke-direct {v0, p0, v1, v2}, Lcom/mb/android/download/DownloadNotificationHelper;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/DownloadManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->notificationHelper:Lcom/mb/android/download/DownloadNotificationHelper;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->notificationHelper:Lcom/mb/android/download/DownloadNotificationHelper;

    return-object v0
.end method


# virtual methods
.method protected getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/mb/android/MainApp;

    invoke-virtual {v0}, Lcom/mb/android/MainApp;->getExoDownloadHelper()Lcom/mb/android/download/exo/ExoDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/download/exo/ExoDownloadHelper;->getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    return-object v0
.end method

.method protected getForegroundNotification(Ljava/util/List;)Landroid/app/Notification;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadService;->getDownloadTracker()Lcom/mb/android/download/exo/ExoDownloadTracker;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/mb/android/download/exo/ExoDownloadTracker;->reportProgress()V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/Download;

    .line 98
    iget-object v3, v2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/DownloadRequest;->data:[B

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadService;->getNotificationHelper()Lcom/mb/android/download/DownloadNotificationHelper;

    move-result-object v0

    const v2, 0x7f0801c3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/mb/android/download/DownloadNotificationHelper;->buildProgressNotification(ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method protected getScheduler()Lcom/google/android/exoplayer2/scheduler/PlatformScheduler;
    .locals 2

    .line 86
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/scheduler/PlatformScheduler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/scheduler/PlatformScheduler;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic getScheduler()Lcom/google/android/exoplayer2/scheduler/Scheduler;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadService;->getScheduler()Lcom/google/android/exoplayer2/scheduler/PlatformScheduler;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 46
    invoke-super {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->onCreate()V

    .line 47
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 48
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ExoDownloadService.onCreate"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->onDestroy()V

    .line 54
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ExoDownloadService.onDestroy"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadService;->getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadsPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadService;->getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mb/android/download/exo/ExoDownloadService;->getForegroundNotification(Ljava/util/List;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x19d

    .line 58
    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/util/NotificationUtil;->setNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method protected onDownloadChanged(Lcom/google/android/exoplayer2/offline/Download;)V
    .locals 5

    .line 112
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/Download;->isTerminalState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->data:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 120
    :cond_1
    iget v1, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v4, 0x7f0801c3

    if-ne v1, v2, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadService;->getNotificationHelper()Lcom/mb/android/download/DownloadNotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v4, v3, v0}, Lcom/mb/android/download/DownloadNotificationHelper;->buildDownloadCompletedNotification(ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_2
    iget p1, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 128
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadService;->getNotificationHelper()Lcom/mb/android/download/DownloadNotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v4, v3, v0}, Lcom/mb/android/download/DownloadNotificationHelper;->buildDownloadFailedNotification(ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    .line 136
    :goto_0
    sget v0, Lcom/mb/android/download/exo/ExoDownloadService;->nextNotificationId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mb/android/download/exo/ExoDownloadService;->nextNotificationId:I

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/util/NotificationUtil;->setNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method
