.class public Lcom/mb/android/download/DownloadNotificationHelper;
.super Landroid/content/BroadcastReceiver;
.source "DownloadNotificationHelper.java"


# static fields
.field private static final NULL_STRING_ID:I = 0x0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private static final REQUEST_CODE:I = 0x6f


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

.field private final mNotificationColor:I

.field private final pauseIntent:Landroid/app/PendingIntent;

.field private final resumeIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/DownloadManager;Ljava/lang/String;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/mb/android/download/DownloadNotificationHelper;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/mb/android/download/DownloadNotificationHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 45
    iput-object p3, p0, Lcom/mb/android/download/DownloadNotificationHelper;->channelId:Ljava/lang/String;

    const p2, 0x7f040091

    const p3, -0xbbbbbc

    .line 47
    invoke-static {p1, p2, p3}, Lcom/mb/android/media/ResourceHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/mb/android/download/DownloadNotificationHelper;->mNotificationColor:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 50
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const/high16 v1, 0x10000000

    const/16 v2, 0x6f

    .line 50
    invoke-static {p1, v2, p3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    iput-object p3, p0, Lcom/mb/android/download/DownloadNotificationHelper;->pauseIntent:Landroid/app/PendingIntent;

    .line 52
    new-instance p3, Landroid/content/Intent;

    const-string v3, "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS"

    invoke-direct {p3, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 52
    invoke-static {p1, v2, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/download/DownloadNotificationHelper;->resumeIntent:Landroid/app/PendingIntent;

    .line 54
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private buildEndStateNotification(ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 172
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/mb/android/download/DownloadNotificationHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mb/android/download/DownloadNotificationHelper;->channelId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/mb/android/download/DownloadNotificationHelper;->context:Landroid/content/Context;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 174
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 176
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 177
    iget p1, p0, Lcom/mb/android/download/DownloadNotificationHelper;->mNotificationColor:I

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 178
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x0

    .line 179
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x1

    .line 180
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 181
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private buildNotification(ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;IIZZZ)Landroid/app/Notification;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 194
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/mb/android/download/DownloadNotificationHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mb/android/download/DownloadNotificationHelper;->channelId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 196
    invoke-virtual {v0, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 197
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 198
    iget p1, p0, Lcom/mb/android/download/DownloadNotificationHelper;->mNotificationColor:I

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 199
    :cond_0
    new-instance p1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 200
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    .line 199
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 201
    invoke-virtual {v0, p5, p6, p7}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 202
    invoke-virtual {v0, p8}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 203
    invoke-virtual {v0, p9}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 205
    iget-object p1, p0, Lcom/mb/android/download/DownloadNotificationHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadsPaused()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/mb/android/download/DownloadNotificationHelper;->resumeIntent:Landroid/app/PendingIntent;

    const-string p3, "Resume"

    invoke-virtual {v0, p2, p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/mb/android/download/DownloadNotificationHelper;->pauseIntent:Landroid/app/PendingIntent;

    const-string p3, "Pause"

    invoke-virtual {v0, p2, p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 210
    :goto_1
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildDownloadCompletedNotification(ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f12005d

    .line 150
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mb/android/download/DownloadNotificationHelper;->buildEndStateNotification(ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public buildDownloadFailedNotification(ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f12005e

    .line 164
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mb/android/download/DownloadNotificationHelper;->buildEndStateNotification(ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public buildProgressNotification(ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;
    .locals 19
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    move-object/from16 v10, p0

    const/4 v4, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    .line 82
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_6

    move-object/from16 v3, p4

    .line 83
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/google/android/exoplayer2/offline/Download;

    .line 84
    iget v1, v0, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v6, 0x1

    :goto_1
    const-wide/16 v17, 0x0

    goto :goto_5

    .line 88
    :cond_0
    iget-object v1, v10, Lcom/mb/android/download/DownloadNotificationHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadsPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/google/android/exoplayer2/offline/Download;->state:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 90
    :goto_2
    iget v2, v0, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/Download;->getPercentDownloaded()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    add-float/2addr v8, v1

    move v1, v8

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    move v1, v8

    move v3, v9

    .line 101
    :goto_3
    iget-wide v8, v0, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    long-to-float v5, v8

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_4

    long-to-float v2, v12

    add-float/2addr v2, v5

    float-to-long v12, v2

    .line 105
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/Download;->getBytesDownloaded()J

    move-result-wide v8

    add-long/2addr v14, v8

    const-wide/16 v17, 0x0

    cmp-long v0, v14, v17

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    or-int/2addr v0, v11

    add-int/lit8 v7, v7, 0x1

    move v11, v0

    move v8, v1

    move v9, v3

    const/4 v5, 0x1

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    if-eqz v5, :cond_9

    .line 114
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 116
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    if-le v7, v2, :cond_7

    const-string v4, "items"

    goto :goto_6

    :cond_7
    const-string v4, "item"

    :goto_6
    aput-object v4, v1, v2

    const-string v2, "Downloading %d %s"

    .line 114
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v7

    div-float/2addr v8, v1

    float-to-int v1, v8

    if-eqz v9, :cond_8

    if-eqz v11, :cond_8

    const/4 v3, 0x1

    .line 120
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v5, v14

    const-wide v7, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v7

    double-to-int v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MB/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v5, v12

    div-double/2addr v5, v7

    double-to-int v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MB)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v0

    move v6, v1

    move v7, v3

    move-object v3, v2

    goto :goto_7

    :cond_9
    move-object/from16 v4, p3

    const/4 v3, 0x0

    if-eqz v6, :cond_a

    const-string v0, "Removing Downloads"

    :cond_a
    move-object v3, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, v0

    :goto_7
    const/16 v5, 0x64

    .line 127
    iget-object v0, v10, Lcom/mb/android/download/DownloadNotificationHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadsPaused()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v8, v0, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 127
    invoke-direct/range {v0 .. v9}, Lcom/mb/android/download/DownloadNotificationHelper;->buildNotification(ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;IIZZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

    .line 216
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 217
    const-class p2, Lcom/mb/android/download/exo/ExoDownloadService;

    invoke-static {p1, p2, v1}, Lcom/google/android/exoplayer2/offline/DownloadService;->sendPauseDownloads(Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS"

    .line 222
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 223
    const-class p2, Lcom/mb/android/download/exo/ExoDownloadService;

    invoke-static {p1, p2, v1}, Lcom/google/android/exoplayer2/offline/DownloadService;->sendResumeDownloads(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_1
    :goto_0
    return-void
.end method
