.class public Lcom/mb/android/media/MediaNotificationManager;
.super Landroid/content/BroadcastReceiver;
.source "MediaNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/MediaNotificationManager$DelayedStopHandler;
    }
.end annotation


# static fields
.field public static final ACTION_FAST_FORWARD:Ljava/lang/String; = "com.emby.fastforward"

.field public static final ACTION_NEXT:Ljava/lang/String; = "com.emby.next"

.field public static final ACTION_PAUSE:Ljava/lang/String; = "com.emby.pause"

.field public static final ACTION_PLAY:Ljava/lang/String; = "com.emby.play"

.field public static final ACTION_PLAYPAUSE:Ljava/lang/String; = "com.emby.playpause"

.field public static final ACTION_PREV:Ljava/lang/String; = "com.emby.prev"

.field public static final ACTION_REWIND:Ljava/lang/String; = "com.emby.rewind"

.field public static final ACTION_SET_REPEAT:Ljava/lang/String; = "com.emby.setrepeat"

.field public static final ACTION_SHOW_PLAYER:Ljava/lang/String; = "ACTION_SHOW_PLAYER"

.field public static final ACTION_SHUFFLE:Ljava/lang/String; = "com.emby.shuffle"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.emby.stop"

.field public static final ACTION_STOP_CASTING:Ljava/lang/String; = "com.emby.stop_cast"

.field private static final CHANNEL_ID:Ljava/lang/String; = "com.emby.mediaplaybackchannel"

.field public static final NOTIFICATION_ID:I = 0x19c

.field private static final REQUEST_CODE:I = 0x64

.field private static final STOP_DELAY:I = 0x1f4


# instance fields
.field private delayedStopHandler:Landroid/os/Handler;

.field private isForegroundService:Z

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private looper:Landroid/os/Looper;

.field private final mCb:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

.field private mController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private final mFastForwardIntent:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

.field private final mNextIntent:Landroid/app/PendingIntent;

.field private final mNotificationColor:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPlayPauseIntent:Landroid/app/PendingIntent;

.field private mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private final mPreviousIntent:Landroid/app/PendingIntent;

.field private final mRewindIntent:Landroid/app/PendingIntent;

.field private final mService:Lcom/mb/android/media/MediaService;

.field private mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private mStarted:Z

.field private final mStopCastIntent:Landroid/app/PendingIntent;

.field private final mStopIntent:Landroid/app/PendingIntent;

.field private mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;


# direct methods
.method public constructor <init>(Lcom/mb/android/media/MediaService;Lcom/mb/android/model/logging/ILogger;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mStarted:Z

    .line 84
    iput-boolean v0, p0, Lcom/mb/android/media/MediaNotificationManager;->isForegroundService:Z

    .line 90
    new-instance v0, Lcom/mb/android/media/MediaNotificationManager$DelayedStopHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mb/android/media/MediaNotificationManager$DelayedStopHandler;-><init>(Lcom/mb/android/media/MediaNotificationManager;Lcom/mb/android/media/MediaNotificationManager$1;)V

    iput-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->delayedStopHandler:Landroid/os/Handler;

    .line 295
    new-instance v0, Lcom/mb/android/media/MediaNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/mb/android/media/MediaNotificationManager$1;-><init>(Lcom/mb/android/media/MediaNotificationManager;)V

    iput-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mCb:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 93
    iput-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    .line 94
    invoke-virtual {p1}, Lcom/mb/android/media/MediaService;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->looper:Landroid/os/Looper;

    .line 95
    iput-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 96
    invoke-direct {p0}, Lcom/mb/android/media/MediaNotificationManager;->updateSessionToken()V

    .line 98
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    const p2, 0x7f040091

    const v0, -0xbbbbbc

    invoke-static {p1, p2, v0}, Lcom/mb/android/media/ResourceHelper;->getThemeColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mNotificationColor:I

    .line 100
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Lcom/mb/android/media/MediaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 102
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    invoke-virtual {p1}, Lcom/mb/android/media/MediaService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.emby.playpause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    const/16 v2, 0x64

    .line 103
    invoke-static {p2, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mPlayPauseIntent:Landroid/app/PendingIntent;

    .line 105
    iget-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.emby.prev"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    invoke-static {p2, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mPreviousIntent:Landroid/app/PendingIntent;

    .line 107
    iget-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.emby.next"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 107
    invoke-static {p2, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mNextIntent:Landroid/app/PendingIntent;

    .line 109
    iget-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.emby.stop"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    invoke-static {p2, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mStopIntent:Landroid/app/PendingIntent;

    .line 111
    iget-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.emby.fastforward"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 111
    invoke-static {p2, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mFastForwardIntent:Landroid/app/PendingIntent;

    .line 113
    iget-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.emby.rewind"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    invoke-static {p2, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mRewindIntent:Landroid/app/PendingIntent;

    .line 115
    iget-object p2, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.emby.stop_cast"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 115
    invoke-static {p2, v2, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mStopCastIntent:Landroid/app/PendingIntent;

    .line 121
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p2, 0x19c

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/mb/android/media/MediaNotificationManager;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mb/android/media/MediaNotificationManager;)Landroid/app/Notification;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/mb/android/media/MediaNotificationManager;->createNotification()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/mb/android/media/MediaNotificationManager;)Landroid/app/NotificationManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mb/android/media/MediaNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mb/android/media/MediaNotificationManager;Landroid/app/Notification;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaNotificationManager;->startForegroundService(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mb/android/media/MediaNotificationManager;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaNotificationManager;->stopForeground(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mb/android/media/MediaNotificationManager;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mb/android/media/MediaNotificationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mb/android/media/MediaNotificationManager;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mb/android/media/MediaNotificationManager;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p0
.end method

.method static synthetic access$702(Lcom/mb/android/media/MediaNotificationManager;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mb/android/media/MediaNotificationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/mb/android/media/MediaNotificationManager;->updateSessionToken()V

    return-void
.end method

.method static synthetic access$900(Lcom/mb/android/media/MediaNotificationManager;Landroidx/core/app/NotificationCompat$Builder;)I
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaNotificationManager;->addActions(Landroidx/core/app/NotificationCompat$Builder;)I

    move-result p0

    return p0
.end method

.method private addActions(Landroidx/core/app/NotificationCompat$Builder;)I
    .locals 8

    .line 471
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const v0, 0x7f0801b7

    .line 472
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mPreviousIntent:Landroid/app/PendingIntent;

    const-string v4, "Previous"

    invoke-virtual {p1, v0, v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const v1, 0x7f080105

    .line 482
    iget-object v4, p0, Lcom/mb/android/media/MediaNotificationManager;->mRewindIntent:Landroid/app/PendingIntent;

    const-string v5, "Rewind"

    invoke-virtual {p1, v1, v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 488
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    const v1, 0x7f080244

    const-string v4, "Pause"

    goto :goto_1

    :cond_1
    const v1, 0x7f080245

    const-string v4, "Play"

    .line 495
    :goto_1
    iget-object v5, p0, Lcom/mb/android/media/MediaNotificationManager;->mPlayPauseIntent:Landroid/app/PendingIntent;

    .line 496
    new-instance v6, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {v6, v1, v4, v5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v6}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f080104

    .line 498
    iget-object v4, p0, Lcom/mb/android/media/MediaNotificationManager;->mFastForwardIntent:Landroid/app/PendingIntent;

    const-string v5, "Fast Forward"

    invoke-virtual {p1, v1, v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 501
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v4

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    const v1, 0x7f0801b6

    .line 502
    iget-object v2, p0, Lcom/mb/android/media/MediaNotificationManager;->mNextIntent:Landroid/app/PendingIntent;

    const-string v3, "Next"

    invoke-virtual {p1, v1, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    return v0
.end method

.method private createBaseNotification()Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/mb/android/media/MediaNotificationManager;->createNotificationChannel()V

    .line 358
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    const-string v2, "com.emby.mediaplaybackchannel"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mStopIntent:Landroid/app/PendingIntent;

    .line 362
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget v3, p0, Lcom/mb/android/media/MediaNotificationManager;->mNotificationColor:I

    .line 363
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f0801c3

    .line 364
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 365
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 366
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 367
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    .line 369
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 370
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object v0
.end method

.method private createContentIntent(Landroid/support/v4/media/MediaDescriptionCompat;)Landroid/app/PendingIntent;
    .locals 3

    .line 289
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    const-class v1, Lcom/mb/android/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000000

    .line 290
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "ACTION_SHOW_PLAYER"

    .line 291
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    const/16 v1, 0x64

    const/high16 v2, 0x10000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 11

    .line 378
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Aborting createNotification because mMetadata is null"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/mb/android/media/MediaNotificationManager;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v3, :cond_1

    .line 384
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Aborting createNotification because mPlaybackState is null"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 388
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 397
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-static {}, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->getInstance()Lcom/mb/android/apiinteraction/android/AlbumArtCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->getBigImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    .line 402
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    invoke-virtual {v1}, Lcom/mb/android/media/MediaService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080100

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    move-object v1, v4

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 408
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_4

    .line 409
    invoke-direct {p0}, Lcom/mb/android/media/MediaNotificationManager;->createNotificationChannel()V

    .line 412
    :cond_4
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    const-string v6, "com.emby.mediaplaybackchannel"

    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0, v4}, Lcom/mb/android/media/MediaNotificationManager;->addActions(Landroidx/core/app/NotificationCompat$Builder;)I

    move-result v5

    .line 416
    new-instance v7, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v7}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    const/4 v8, 0x3

    new-array v8, v8, [I

    aput v2, v8, v2

    const/4 v9, 0x1

    aput v5, v8, v9

    const/4 v5, 0x2

    iget-object v10, v4, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 419
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v9

    aput v10, v8, v5

    invoke-virtual {v7, v8}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v5

    .line 420
    invoke-virtual {v5, v9}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowCancelButton(Z)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v5

    iget-object v7, p0, Lcom/mb/android/media/MediaNotificationManager;->mStopIntent:Landroid/app/PendingIntent;

    .line 421
    invoke-virtual {v5, v7}, Landroidx/media/app/NotificationCompat$MediaStyle;->setCancelButtonIntent(Landroid/app/PendingIntent;)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v5

    iget-object v7, p0, Lcom/mb/android/media/MediaNotificationManager;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 422
    invoke-virtual {v5, v7}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v5

    .line 417
    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/mb/android/media/MediaNotificationManager;->mStopIntent:Landroid/app/PendingIntent;

    .line 423
    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    iget v7, p0, Lcom/mb/android/media/MediaNotificationManager;->mNotificationColor:I

    .line 424
    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const v7, 0x7f0801c3

    .line 425
    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 426
    invoke-virtual {v5, v9}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 427
    invoke-virtual {v5, v9}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 428
    invoke-direct {p0, v0}, Lcom/mb/android/media/MediaNotificationManager;->createContentIntent(Landroid/support/v4/media/MediaDescriptionCompat;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 429
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 430
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 431
    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 433
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 435
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 436
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    const-wide/32 v0, 0x36ee80

    .line 439
    iget-object v2, p0, Lcom/mb/android/media/MediaNotificationManager;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v5

    cmp-long v2, v5, v0

    if-ltz v2, :cond_5

    const-string v0, "h:mm:ss"

    goto :goto_1

    :cond_5
    const-string v0, "mm:ss"

    .line 440
    :goto_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v0, "UTC"

    .line 441
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 443
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/mb/android/media/MediaNotificationManager;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 444
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_6

    .line 445
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 447
    :cond_6
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 449
    :goto_2
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 450
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.example.android.uamp.CAST_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Casting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f0800ff

    .line 454
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mStopCastIntent:Landroid/app/PendingIntent;

    const-string v2, "Stop casting"

    invoke-virtual {v4, v0, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 459
    :cond_7
    invoke-direct {p0, v4, v9}, Lcom/mb/android/media/MediaNotificationManager;->setNotificationPlaybackState(Landroidx/core/app/NotificationCompat$Builder;Z)V

    if-eqz v3, :cond_8

    .line 461
    invoke-direct {p0, v3, v4}, Lcom/mb/android/media/MediaNotificationManager;->fetchBitmapFromURLAsync(Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 464
    :cond_8
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private createNotificationChannel()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "com.emby.mediaplaybackchannel"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    const-string v3, "Emby Media Notifications"

    invoke-direct {v0, v1, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 555
    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 557
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private fetchBitmapFromURLAsync(Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2

    .line 519
    invoke-static {}, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->getInstance()Lcom/mb/android/apiinteraction/android/AlbumArtCache;

    move-result-object v0

    new-instance v1, Lcom/mb/android/media/MediaNotificationManager$2;

    invoke-direct {v1, p0, p2}, Lcom/mb/android/media/MediaNotificationManager$2;-><init>(Lcom/mb/android/media/MediaNotificationManager;Landroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual {v0, p1, v1}, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->fetch(Ljava/lang/String;Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;)V

    return-void
.end method

.method private setNotificationPlaybackState(Landroidx/core/app/NotificationCompat$Builder;Z)V
    .locals 1

    .line 511
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mStarted:Z

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 512
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "updateNotificationPlaybackState. cancelling notification!"

    invoke-interface {p1, v0, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 513
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaNotificationManager;->stopForeground(Z)V

    :cond_1
    return-void
.end method

.method private startForegroundService(Landroid/app/Notification;)V
    .locals 4

    .line 210
    iget-boolean v0, p0, Lcom/mb/android/media/MediaNotificationManager;->isForegroundService:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    .line 212
    invoke-virtual {v0}, Lcom/mb/android/media/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    .line 213
    invoke-virtual {v2}, Lcom/mb/android/media/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 214
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    const/16 v1, 0x19c

    invoke-virtual {v0, v1, p1}, Lcom/mb/android/media/MediaService;->startForeground(ILandroid/app/Notification;)V

    const/4 p1, 0x1

    .line 215
    iput-boolean p1, p0, Lcom/mb/android/media/MediaNotificationManager;->isForegroundService:Z

    :cond_0
    return-void
.end method

.method private stopForeground(Z)V
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/mb/android/media/MediaNotificationManager;->isForegroundService:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/MediaService;->stopForeground(Z)V

    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lcom/mb/android/media/MediaNotificationManager;->isForegroundService:Z

    :cond_0
    return-void
.end method

.method private updateSessionToken()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    invoke-virtual {v0}, Lcom/mb/android/media/MediaService;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v1, :cond_3

    .line 272
    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_2

    .line 274
    iget-object v2, p0, Lcom/mb/android/media/MediaNotificationManager;->mCb:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 276
    :cond_2
    iput-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 277
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_3

    .line 278
    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 279
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 280
    iget-boolean v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mStarted:Z

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mCb:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/mb/android/media/MediaNotificationManager;->looper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 230
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "com.emby.playpause"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.emby.stop_cast"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "com.emby.pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "com.emby.fastforward"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "com.emby.prev"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "com.emby.play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "com.emby.next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_6
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_7
    const-string v0, "com.emby.rewind"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 253
    :pswitch_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/mb/android/media/MediaService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "com.example.android.uamp.ACTION_CMD"

    .line 254
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "CMD_NAME"

    const-string v0, "CMD_STOP_CASTING"

    .line 255
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    invoke-virtual {p1, p2}, Lcom/mb/android/media/MediaService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 250
    :pswitch_1
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    goto :goto_2

    .line 247
    :pswitch_2
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    goto :goto_2

    .line 244
    :pswitch_3
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    goto :goto_2

    .line 241
    :pswitch_4
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    goto :goto_2

    .line 238
    :pswitch_5
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->fastForward()V

    goto :goto_2

    .line 235
    :pswitch_6
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->rewind()V

    goto :goto_2

    .line 232
    :pswitch_7
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a778a63 -> :sswitch_7
        -0x5ed0d0e0 -> :sswitch_6
        -0x57829bab -> :sswitch_5
        -0x57819b6a -> :sswitch_4
        -0x5781846b -> :sswitch_3
        0x2e300f47 -> :sswitch_2
        0x674978d4 -> :sswitch_1
        0x7152913a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startNotification(Z)V
    .locals 6

    .line 132
    iget-boolean v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mStarted:Z

    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    .line 134
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 137
    invoke-direct {p0}, Lcom/mb/android/media/MediaNotificationManager;->createNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/mb/android/media/MediaNotificationManager;->createBaseNotification()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, -0x2

    .line 143
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 144
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 146
    invoke-virtual {p1, v3, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 148
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaNotificationManager;->startForegroundService(Landroid/app/Notification;)V

    .line 149
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->delayedStopHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->delayedStopHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 155
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->delayedStopHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "MediaNotificationManager mController.registerCallback"

    invoke-interface {p1, v4, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :try_start_0
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mCb:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/mb/android/media/MediaNotificationManager;->looper:Landroid/os/Looper;

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v1, v4}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error registering callback"

    invoke-interface {v1, v4, p1, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 166
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.emby.next"

    .line 167
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.emby.pause"

    .line 168
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.emby.play"

    .line 169
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.emby.prev"

    .line 170
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.emby.stop_cast"

    .line 171
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.emby.fastforward"

    .line 172
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.emby.rewind"

    .line 173
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.emby.stop"

    .line 174
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ACTION_SHOW_PLAYER"

    .line 175
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.emby.playpause"

    .line 176
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    invoke-virtual {v1, p0, p1}, Lcom/mb/android/media/MediaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    const/16 v1, 0x19c

    invoke-virtual {p1, v1, v0}, Lcom/mb/android/media/MediaService;->startForeground(ILandroid/app/Notification;)V

    .line 181
    iput-boolean v2, p0, Lcom/mb/android/media/MediaNotificationManager;->mStarted:Z

    goto :goto_1

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "MediaNotificationManager notification is null!"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public stopNotification()V
    .locals 4

    .line 194
    iget-boolean v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mStarted:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaNotificationManager.stopNotification"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iput-boolean v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mStarted:Z

    .line 198
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager;->mCb:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x19c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 201
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager;->mService:Lcom/mb/android/media/MediaService;

    invoke-virtual {v0, p0}, Lcom/mb/android/media/MediaService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    .line 205
    invoke-direct {p0, v0}, Lcom/mb/android/media/MediaNotificationManager;->stopForeground(Z)V

    :cond_0
    return-void
.end method
