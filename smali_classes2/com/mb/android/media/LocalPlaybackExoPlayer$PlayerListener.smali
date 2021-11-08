.class Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;
.super Ljava/lang/Object;
.source "LocalPlaybackExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;
.implements Lcom/google/android/exoplayer2/video/VideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/LocalPlaybackExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerListener"
.end annotation


# instance fields
.field private final appReadyReceiver:Landroid/content/BroadcastReceiver;

.field private clientObjectName:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isSeeking:Z

.field final synthetic this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

.field private timeObserver:Ljava/lang/Runnable;

.field private final volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;


# direct methods
.method public constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V
    .locals 2

    .line 1408
    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VlcAudioPlayer"

    .line 1402
    iput-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    .line 1415
    new-instance v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$1;

    invoke-direct {v0, p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$1;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)V

    iput-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->appReadyReceiver:Landroid/content/BroadcastReceiver;

    .line 1440
    new-instance v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    .line 1409
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.mb.android.ACTION_APP_READY"

    .line 1410
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.mb.android.ACTION_APP_RESUME"

    .line 1411
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1412
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->appReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private RespondToWebView(Ljava/lang/String;)V
    .locals 1

    .line 1929
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/MediaService$UIMessenger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)Lcom/mb/android/media/DefaultStreamVolumeObserver;
    .locals 0

    .line 1400
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)Ljava/lang/String;
    .locals 0

    .line 1400
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)V
    .locals 0

    .line 1400
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onTimeUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;Ljava/lang/String;)V
    .locals 0

    .line 1400
    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;II)V
    .locals 0

    .line 1400
    invoke-direct {p0, p1, p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaylistPosChanged(II)V

    return-void
.end method

.method private onNonRecoverablePlaybackFailure()V
    .locals 3

    .line 1837
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1402(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    .line 1838
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v1

    const-string v2, "No Compatible Streams"

    invoke-interface {v0, v1, v2}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(ILjava/lang/String;)V

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1842
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-virtual {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->destroyPlayer()V

    :cond_1
    const/4 v0, 0x1

    .line 1844
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s.onEvent(\'error\');"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method

.method private onPlaybackEnd()V
    .locals 10

    .line 1566
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/PlaybackProgressReportManager;

    move-result-object v1

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1567
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1568
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v3

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1569
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v4

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1570
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1571
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/dto/MediaSourceInfo;

    move-result-object v7

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1572
    invoke-virtual {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    .line 1566
    invoke-virtual/range {v1 .. v9}, Lcom/mb/android/media/PlaybackProgressReportManager;->reportPlaybackStop(Landroid/support/v4/media/MediaMetadataCompat;IIJLcom/mb/android/model/dto/MediaSourceInfo;Ljava/util/List;Z)V

    const/4 v0, 0x1

    .line 1574
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s.onEvent(\'ended\');"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    .line 1576
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1577
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->timeObserver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1578
    iput-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->handler:Landroid/os/Handler;

    .line 1579
    iput-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->timeObserver:Ljava/lang/Runnable;

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1582
    new-instance v0, Lcom/mb/android/media/PlayQueueState;

    invoke-direct {v0}, Lcom/mb/android/media/PlayQueueState;-><init>()V

    .line 1583
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-virtual {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getCurrentStreamPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mb/android/media/PlayQueueState;->playbackPosition:J

    .line 1584
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-virtual {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mb/android/media/PlayQueueState;->setPlayQueue(Ljava/util/List;)V

    .line 1585
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v1

    iput v1, v0, Lcom/mb/android/media/PlayQueueState;->playQueueIndex:I

    .line 1586
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/mb/android/media/Playback$Callback;->onCompletion(Landroid/support/v4/media/MediaMetadataCompat;Lcom/mb/android/media/PlayQueueState;)V

    :cond_1
    return-void
.end method

.method private onPlaybackStart()V
    .locals 10

    const/4 v0, 0x1

    .line 1535
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s.onEvent(\'start-file\');"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    .line 1537
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1538
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->handler:Landroid/os/Handler;

    .line 1539
    new-instance v1, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$PlayerListener$Fz_jG0SM52A2CAOVaoBISdPotvk;

    invoke-direct {v1, p0}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$PlayerListener$Fz_jG0SM52A2CAOVaoBISdPotvk;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)V

    iput-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->timeObserver:Ljava/lang/Runnable;

    .line 1545
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->timeObserver:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1547
    :cond_0
    iput-boolean v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->isSeeking:Z

    .line 1548
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1, v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1702(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    .line 1549
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1802(Lcom/mb/android/media/LocalPlaybackExoPlayer;Z)Z

    .line 1551
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->hasMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1552
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    .line 1554
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/PlaybackProgressReportManager;

    move-result-object v1

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1555
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1556
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v3

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1557
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v4

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1558
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1559
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/dto/MediaSourceInfo;

    move-result-object v7

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1560
    invoke-virtual {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    .line 1554
    invoke-virtual/range {v1 .. v9}, Lcom/mb/android/media/PlaybackProgressReportManager;->reportPlaybackStart(Landroid/support/v4/media/MediaMetadataCompat;IIJLcom/mb/android/model/dto/MediaSourceInfo;Ljava/util/List;Z)V

    return-void
.end method

.method private onPlaylistPosChanged(II)V
    .locals 13

    .line 1659
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, p1, :cond_1

    if-eq p2, v3, :cond_0

    .line 1661
    new-array p2, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    aput-object v0, p2, v2

    const-string v0, "%s.onEvent(\'ended\');"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    .line 1663
    :cond_0
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/PlaybackProgressReportManager;

    move-result-object v4

    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1664
    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v5

    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1665
    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v6

    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1666
    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v7

    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1667
    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J

    move-result-wide v8

    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1668
    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/dto/MediaSourceInfo;

    move-result-object v10

    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1669
    invoke-virtual {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    .line 1663
    invoke-virtual/range {v4 .. v12}, Lcom/mb/android/media/PlaybackProgressReportManager;->reportPlaybackStop(Landroid/support/v4/media/MediaMetadataCompat;IIJLcom/mb/android/model/dto/MediaSourceInfo;Ljava/util/List;Z)V

    .line 1672
    :cond_1
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result p2

    if-lt p1, p2, :cond_2

    return-void

    .line 1676
    :cond_2
    new-array p2, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    aput-object v0, p2, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "%s.onPropertyChange(\'playlist-pos\', %s);"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    .line 1678
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 1679
    instance-of v0, p2, Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v0, :cond_3

    .line 1680
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    check-cast p2, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-static {v0, p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$602(Lcom/mb/android/media/LocalPlaybackExoPlayer;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;

    .line 1681
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1682
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object p2

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/mb/android/media/Playback$Callback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1685
    :cond_3
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result p2

    if-eq p2, p1, :cond_4

    .line 1686
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p2, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$802(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    .line 1687
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/PlaybackProgressReportManager;

    move-result-object v0

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1688
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1689
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v2

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1690
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v3

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1691
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v4

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1692
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/dto/MediaSourceInfo;

    move-result-object v6

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1693
    invoke-virtual {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    .line 1687
    invoke-virtual/range {v0 .. v8}, Lcom/mb/android/media/PlaybackProgressReportManager;->reportPlaybackStart(Landroid/support/v4/media/MediaMetadataCompat;IIJLcom/mb/android/model/dto/MediaSourceInfo;Ljava/util/List;Z)V

    :cond_4
    return-void
.end method

.method private onTimeUpdate()V
    .locals 20

    move-object/from16 v0, p0

    .line 1612
    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    const/4 v3, 0x2

    .line 1614
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1615
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "%s.onPropertyChange(\'time-pos\', %s);"

    .line 1614
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 1617
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 1618
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1619
    invoke-static {v5}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "%s.onCacheUpdate(%s, %s);"

    .line 1617
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    .line 1621
    iget-object v3, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1622
    iget-object v3, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v3

    iget-object v4, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v4}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    .line 1624
    :cond_0
    iget-object v3, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v3

    iget-object v4, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v4}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1625
    iget-object v3, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v3, v1, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$902(Lcom/mb/android/media/LocalPlaybackExoPlayer;J)J

    .line 1627
    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/PlaybackProgressReportManager;

    move-result-object v8

    sget-object v9, Lcom/mb/android/model/session/ProgressEvent;->TimeUpdate:Lcom/mb/android/model/session/ProgressEvent;

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1629
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v10

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1630
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v11

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1631
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v12

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1632
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J

    move-result-wide v13

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1633
    invoke-virtual {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isPlaying()Z

    move-result v1

    xor-int/lit8 v15, v1, 0x1

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    .line 1634
    invoke-virtual {v1}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->getVolume()I

    move-result v16

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1635
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-object v2, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1636
    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRepeatMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1100(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    move-result v18

    iget-object v2, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1637
    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/dto/MediaSourceInfo;

    move-result-object v19

    move/from16 v17, v1

    .line 1627
    invoke-virtual/range {v8 .. v19}, Lcom/mb/android/media/PlaybackProgressReportManager;->reportPlaybackProgress(Lcom/mb/android/model/session/ProgressEvent;Landroid/support/v4/media/MediaMetadataCompat;IIJZIFILcom/mb/android/model/dto/MediaSourceInfo;)V

    :cond_1
    return-void
.end method

.method private sendVerifySSLBroadcast()V
    .locals 3

    .line 1766
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LocalPlaybackExoPlayer.sendVerifySSLBroadcast"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "verifyCurrentCertificate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1769
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    return-void
.end method

.method private tryHLSPlayback()Z
    .locals 5

    .line 1848
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    .line 1849
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 1852
    :cond_0
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Attempting to fallback to HLS playback"

    invoke-interface {v1, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1853
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    .line 1854
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;

    .line 1855
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v4}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2500(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 1856
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object v1

    .line 1857
    invoke-virtual {v2}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object v1

    .line 1858
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V

    .line 1859
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 1860
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekToDefaultPosition(I)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public synthetic lambda$onPlaybackStart$0$LocalPlaybackExoPlayer$PlayerListener()V
    .locals 4

    .line 1540
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1541
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onTimeUpdate()V

    .line 1542
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->timeObserver:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onExperimentalOffloadSchedulingEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onExperimentalOffloadSchedulingEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onExperimentalSleepingForOffloadChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onExperimentalSleepingForOffloadChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 14

    if-nez p1, :cond_0

    .line 1706
    iget-boolean v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->isSeeking:Z

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1707
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    .line 1710
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    :goto_0
    invoke-static {v0, v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1402(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    .line 1711
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1712
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    .line 1715
    :cond_3
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    const-string v4, "true"

    goto :goto_1

    :cond_4
    const-string v4, "false"

    :goto_1
    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "IsPlaying %s"

    invoke-interface {v0, v4, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1716
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    aput-object v2, v0, v5

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "%s.onPropertyChange(\'pause\', %s);"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/PlaybackProgressReportManager;

    move-result-object v2

    if-eqz p1, :cond_5

    sget-object v0, Lcom/mb/android/model/session/ProgressEvent;->Unpause:Lcom/mb/android/model/session/ProgressEvent;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/mb/android/model/session/ProgressEvent;->Pause:Lcom/mb/android/model/session/ProgressEvent;

    :goto_2
    move-object v3, v0

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1719
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v4

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1720
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v5

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1721
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v6

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1722
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J

    move-result-wide v7

    xor-int/lit8 v9, p1, 0x1

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    .line 1724
    invoke-virtual {p1}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->getVolume()I

    move-result v10

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1725
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    iget v11, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1726
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRepeatMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1100(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    move-result v12

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1727
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/dto/MediaSourceInfo;

    move-result-object v13

    .line 1717
    invoke-virtual/range {v2 .. v13}, Lcom/mb/android/media/PlaybackProgressReportManager;->reportPlaybackProgress(Lcom/mb/android/model/session/ProgressEvent;Landroid/support/v4/media/MediaMetadataCompat;IIJZIFILcom/mb/android/model/dto/MediaSourceInfo;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 1643
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1648
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    instance-of v0, v0, Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v0, :cond_1

    .line 1649
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    const-string v0, "playlistItemId"

    .line 1650
    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 1651
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s.onPropertyChange(\'playlistItemId\', \'%s\');"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    .line 1655
    :cond_1
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaylistPosChanged(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1526
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1527
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result p1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1528
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1529
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaybackStart()V

    .line 1530
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1, p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1402(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    :cond_0
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 17
    .param p1    # Lcom/google/android/exoplayer2/PlaybackParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    .line 1876
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1877
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%s.onPropertyChange(\'speed\', %s);"

    .line 1876
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    .line 1878
    iget-object v2, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/PlaybackProgressReportManager;

    move-result-object v5

    sget-object v6, Lcom/mb/android/model/session/ProgressEvent;->PlaybackRateChange:Lcom/mb/android/model/session/ProgressEvent;

    iget-object v2, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1880
    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v7

    iget-object v2, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1881
    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v8

    iget-object v2, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1882
    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v9

    iget-object v2, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1883
    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J

    move-result-wide v10

    iget-object v2, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1884
    invoke-virtual {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isPlaying()Z

    move-result v2

    xor-int/lit8 v12, v2, 0x1

    iget-object v2, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    .line 1885
    invoke-virtual {v2}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->getVolume()I

    move-result v13

    iget v14, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1887
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRepeatMode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1100(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    move-result v15

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1888
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/dto/MediaSourceInfo;

    move-result-object v16

    .line 1878
    invoke-virtual/range {v5 .. v16}, Lcom/mb/android/media/PlaybackProgressReportManager;->reportPlaybackProgress(Lcom/mb/android/model/session/ProgressEvent;Landroid/support/v4/media/MediaMetadataCompat;IIJZIFILcom/mb/android/model/dto/MediaSourceInfo;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1498
    :cond_0
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1402(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    .line 1499
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaybackEnd()V

    goto :goto_0

    .line 1510
    :cond_1
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 1511
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaybackStart()V

    .line 1512
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1402(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    goto :goto_0

    .line 1493
    :cond_2
    iget-boolean v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->isSeeking:Z

    if-nez v1, :cond_4

    .line 1494
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1402(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    goto :goto_0

    .line 1502
    :cond_3
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v2

    if-eq v2, v1, :cond_4

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1503
    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1504
    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1500(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1505
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1402(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    .line 1506
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaybackEnd()V

    :cond_4
    :goto_0
    if-eq p1, v0, :cond_5

    .line 1517
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1502(Lcom/mb/android/media/LocalPlaybackExoPlayer;Z)Z

    .line 1519
    :cond_5
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1520
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    :cond_6
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 7
    .param p1    # Lcom/google/android/exoplayer2/ExoPlaybackException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1775
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Playback Error TYPE_REMOTE: %s"

    invoke-interface {v0, v4, v3}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1789
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Playback Error TYPE_UNEXPECTED: "

    invoke-interface {v0, v5, v3, v4}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1780
    :cond_2
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Playback Error TYPE_RENDERER: "

    invoke-interface {v0, v5, v3, v4}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1783
    :cond_3
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Playback Error TYPE_SOURCE: "

    invoke-interface {v0, v5, v3, v4}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1784
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_4

    .line 1785
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->sendVerifySSLBroadcast()V

    .line 1793
    :cond_4
    :goto_0
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-nez v0, :cond_5

    .line 1794
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    if-eqz v0, :cond_5

    .line 1797
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result p1

    if-nez p1, :cond_9

    .line 1798
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->tryHLSPlayback()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1799
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1502(Lcom/mb/android/media/LocalPlaybackExoPlayer;Z)Z

    .line 1800
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1708(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    return-void

    .line 1805
    :cond_5
    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v0, v2, :cond_9

    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererName:Ljava/lang/String;

    .line 1806
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mediacodec"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1810
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v0

    if-nez v0, :cond_9

    .line 1811
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1812
    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string v5, "Attempting to fallback to software decoding for %s"

    invoke-interface {v3, v5, v4}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1813
    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPreferredExtensionRendererMimeTypes(Ljava/util/List;)V

    .line 1816
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1502(Lcom/mb/android/media/LocalPlaybackExoPlayer;Z)Z

    .line 1817
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->pause()V

    .line 1818
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    .line 1819
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1708(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    .line 1821
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    const/4 v3, 0x0

    .line 1822
    :goto_1
    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v4}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererCount()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 1823
    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v4}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v4

    iget-object v5, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v5}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v5

    iget v6, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 1824
    iget v4, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    if-ne v4, v3, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 1825
    :goto_2
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1828
    :cond_8
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1829
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->play()V

    return-void

    .line 1833
    :cond_9
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onNonRecoverablePlaybackFailure()V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public onPlaylistChanged()V
    .locals 4

    .line 1919
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1920
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-virtual {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1921
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;

    const-string v3, "itemJson"

    .line 1922
    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1924
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1925
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "%s.onPlaylistChanged(%s,%s)"

    .line 1924
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method

.method public onPlaylistItemMoved(Ljava/lang/String;I)V
    .locals 3

    .line 1913
    invoke-virtual {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaylistChanged()V

    const/4 v0, 0x3

    .line 1914
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1915
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "%s.onPlaylistItemMoved(\'%s\',\'%s\')"

    .line 1914
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method

.method public onPlaylistItemRemoved(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    .line 1907
    invoke-virtual {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaylistChanged()V

    const/4 v0, 0x2

    .line 1908
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "playlistItemId"

    .line 1909
    invoke-virtual {p1, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s.onPlaylistItemRemoved(\'%s\')"

    .line 1908
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1868
    iput-boolean v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->isSeeking:Z

    .line 1871
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onTimeUpdate()V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/VideoListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/video/VideoListener;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const-string v2, "RepeatNone"

    goto :goto_0

    :cond_0
    const-string v2, "RepeatAll"

    goto :goto_0

    :cond_1
    const-string v2, "RepeatOne"

    .line 1745
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    aput-object v4, v0, v3

    aput-object v2, v0, v1

    const-string v2, "%s.onPropertyChange(\'repeat-mode\', \'%s\');"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    .line 1746
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/PlaybackProgressReportManager;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/session/ProgressEvent;->RepeatModeChange:Lcom/mb/android/model/session/ProgressEvent;

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1748
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v4

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1749
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v5

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1750
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v6

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1751
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J

    move-result-wide v7

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1752
    invoke-virtual {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isPlaying()Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    .line 1753
    invoke-virtual {v0}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->getVolume()I

    move-result v10

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1754
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v11, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1755
    invoke-static {v0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1100(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    move-result v12

    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1756
    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/dto/MediaSourceInfo;

    move-result-object v13

    .line 1746
    invoke-virtual/range {v2 .. v13}, Lcom/mb/android/media/PlaybackProgressReportManager;->reportPlaybackProgress(Lcom/mb/android/model/session/ProgressEvent;Landroid/support/v4/media/MediaMetadataCompat;IIJZIFILcom/mb/android/model/dto/MediaSourceInfo;)V

    return-void
.end method

.method public onSeekProcessed()V
    .locals 1

    const/4 v0, 0x0

    .line 1893
    iput-boolean v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->isSeeking:Z

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method onShutdown()V
    .locals 10

    const/4 v0, 0x1

    .line 1591
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s.onEvent(\'shutdown\');"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1802(Lcom/mb/android/media/LocalPlaybackExoPlayer;Z)Z

    .line 1593
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2000(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    move-result-object v0

    iget-object v0, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    invoke-virtual {v0}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->stop()V

    .line 1594
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1402(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    .line 1596
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/PlaybackProgressReportManager;

    move-result-object v1

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1601
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1602
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v3

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1603
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v4

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1604
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1605
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/dto/MediaSourceInfo;

    move-result-object v7

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1606
    invoke-virtual {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    .line 1600
    invoke-virtual/range {v1 .. v9}, Lcom/mb/android/media/PlaybackProgressReportManager;->reportPlaybackStop(Landroid/support/v4/media/MediaMetadataCompat;IIJLcom/mb/android/model/dto/MediaSourceInfo;Ljava/util/List;Z)V

    return-void
.end method

.method public synthetic onStaticMetadataChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onStaticMetadataChanged(Lcom/google/android/exoplayer2/Player$EventListener;Ljava/util/List;)V

    return-void
.end method

.method public onSubtitleOffsetChanged(J)V
    .locals 3

    const/4 v0, 0x2

    .line 1902
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1903
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s.onPropertyChange(\'sub-delay\', %s);"

    .line 1902
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/video/VideoListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/video/VideoListener;II)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/Timeline;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1467
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    const/4 p2, 0x2

    .line 1471
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    aput-object v1, p2, v0

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1472
    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, p1

    const-string p1, "%s.onPropertyChange(\'duration\', %s);"

    .line 1471
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->RespondToWebView(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    .line 1898
    iget-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    int-to-float p1, p1

    mul-float p4, p4, p1

    int-to-float p1, p2

    div-float/2addr p4, p1

    invoke-static {p3, p4}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2600(Lcom/mb/android/media/LocalPlaybackExoPlayer;F)V

    return-void
.end method

.method public setIsVideoPlayback(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "VlcVideoPlayer"

    goto :goto_0

    :cond_0
    const-string p1, "VlcAudioPlayer"

    .line 1462
    :goto_0
    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->clientObjectName:Ljava/lang/String;

    return-void
.end method
