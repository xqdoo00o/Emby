.class Lcom/mb/android/sync/UploadNotificationManager;
.super Ljava/lang/Object;
.source "UploadNotificationManager.java"


# static fields
.field static final CHANNEL_ID:Ljava/lang/String; = "com.emby.cameraUploadChannel"

.field private static final FOREGROUND_NOTIFICATION_ID:I = 0x1018

.field private static nextNotificationId:I = 0x1019


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final service:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/app/Service;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mb/android/sync/UploadNotificationManager;->service:Landroid/app/Service;

    .line 35
    iput-object p2, p0, Lcom/mb/android/sync/UploadNotificationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 36
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/sync/UploadNotificationManager;->context:Landroid/content/Context;

    const-string p2, "notification"

    .line 38
    invoke-virtual {p1, p2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/mb/android/sync/UploadNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private buildCompletedNotification(Ljava/util/Collection;)Landroid/app/Notification;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnet/gotev/uploadservice/data/UploadInfo;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 88
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Uploaded %d items successfully"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 90
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/mb/android/sync/UploadNotificationManager;->context:Landroid/content/Context;

    const-string v3, "com.emby.cameraUploadChannel"

    invoke-direct {v0, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0801c3

    .line 91
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "Emby Camera Upload"

    .line 92
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 93
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 94
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 96
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private buildProgressNotification(Ljava/util/Collection;)Landroid/app/Notification;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnet/gotev/uploadservice/data/UploadInfo;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/mb/android/sync/UploadNotificationManager;->createNotificationChannel()V

    .line 56
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    move-wide v6, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x64

    if-eqz v8, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/gotev/uploadservice/data/UploadInfo;

    .line 62
    invoke-virtual {v8}, Lnet/gotev/uploadservice/data/UploadInfo;->getProgressPercent()I

    move-result v10

    add-int/2addr v1, v10

    .line 63
    invoke-virtual {v8}, Lnet/gotev/uploadservice/data/UploadInfo;->getProgressPercent()I

    move-result v10

    if-lt v10, v9, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 66
    :cond_1
    invoke-virtual {v8}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadedBytes()J

    move-result-wide v9

    add-long/2addr v4, v9

    .line 67
    invoke-virtual {v8}, Lnet/gotev/uploadservice/data/UploadInfo;->getTotalBytes()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_0

    .line 69
    :cond_2
    div-int/2addr v1, v0

    .line 71
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v8, v2

    const-string v0, "Emby Camera Upload %d of %d"

    invoke-static {p1, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v4, v4

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v10

    double-to-int v0, v4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " MB/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v4, v6

    div-double/2addr v4, v10

    double-to-int v0, v4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " MB)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/mb/android/sync/UploadNotificationManager;->context:Landroid/content/Context;

    const-string v6, "com.emby.cameraUploadChannel"

    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f0801c3

    .line 76
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 77
    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 78
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 79
    invoke-virtual {v4, v9, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    if-ge v1, v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 80
    :goto_1
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 82
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private createNotificationChannel()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/mb/android/sync/UploadNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    const-string v1, "com.emby.cameraUploadChannel"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    const-string v3, "Emby Upload Notifications"

    invoke-direct {v0, v1, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 111
    iget-object v1, p0, Lcom/mb/android/sync/UploadNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method showCompletedNotification(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnet/gotev/uploadservice/data/UploadInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/mb/android/sync/UploadNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/mb/android/sync/UploadNotificationManager;->nextNotificationId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/mb/android/sync/UploadNotificationManager;->nextNotificationId:I

    invoke-direct {p0, p1}, Lcom/mb/android/sync/UploadNotificationManager;->buildCompletedNotification(Ljava/util/Collection;)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method showProgressNotification(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnet/gotev/uploadservice/data/UploadInfo;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mb/android/sync/UploadNotificationManager;->service:Landroid/app/Service;

    invoke-direct {p0, p1}, Lcom/mb/android/sync/UploadNotificationManager;->buildProgressNotification(Ljava/util/Collection;)Landroid/app/Notification;

    move-result-object p1

    const/16 v1, 0x1018

    invoke-virtual {v0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
