.class public Lcom/mb/android/chromecast/RemotePlaybackChromecast;
.super Ljava/lang/Object;
.source "RemotePlaybackChromecast.java"

# interfaces
.implements Lcom/mb/android/media/RemotePlayback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;
    }
.end annotation


# instance fields
.field private final connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private mCallback:Lcom/mb/android/media/Playback$Callback;

.field private mLastState:I

.field private mPositionMs:J

.field private final mediaRouter:Landroidx/mediarouter/media/MediaRouter;

.field private messenger:Lcom/mb/android/media/MediaService$UIMessenger;

.field private playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private remoteVolumeProvider:Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;

.field private final volumeChangedListener:Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaService$UIMessenger;Lcom/mb/android/apiinteraction/android/ConnectionManager;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->mLastState:I

    .line 320
    new-instance v0, Lcom/mb/android/chromecast/-$$Lambda$RemotePlaybackChromecast$UuNUe7C_AbX1kOUy-imlOPkVtjk;

    invoke-direct {v0, p0}, Lcom/mb/android/chromecast/-$$Lambda$RemotePlaybackChromecast$UuNUe7C_AbX1kOUy-imlOPkVtjk;-><init>(Lcom/mb/android/chromecast/RemotePlaybackChromecast;)V

    iput-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->volumeChangedListener:Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;

    .line 38
    iput-object p1, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 40
    iput-object p3, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    .line 41
    iput-object p4, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    .line 42
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p3

    iput-object p3, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->mediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/mb/android/chromecast/Chromecast;->getCastContext(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    .line 45
    new-instance p3, Lcom/mb/android/chromecast/ChromecastPlaybackController;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/mb/android/chromecast/ChromecastPlaybackController;-><init>(Lcom/google/android/gms/cast/framework/SessionManager;Lcom/mb/android/model/logging/ILogger;)V

    iput-object p3, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/chromecast/RemotePlaybackChromecast;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/chromecast/RemotePlaybackChromecast;)Lcom/mb/android/chromecast/ChromecastPlaybackController;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    return-object p0
.end method

.method private buildBaseMessage(Ljava/lang/String;)Lcom/mb/android/chromecast/ChromecastMessage$Builder;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getLastUsedApiClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    new-instance v1, Lcom/mb/android/chromecast/ChromecastMessage$Builder;

    invoke-direct {v1, p1, v0}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;-><init>(Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient;)V

    iget-object p1, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->mediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 59
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->setReceiverName(Ljava/lang/String;)Lcom/mb/android/chromecast/ChromecastMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method private initVolumeProvider()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->remoteVolumeProvider:Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;

    const/4 v1, 0x2

    const/16 v2, 0x64

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;-><init>(Lcom/mb/android/chromecast/RemotePlaybackChromecast;III)V

    iput-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->remoteVolumeProvider:Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;

    :cond_0
    return-void
.end method

.method private sendMessageToDevice(Lcom/mb/android/chromecast/ChromecastMessage;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sendMessage(Lcom/mb/android/chromecast/ChromecastMessage;)V

    return-void
.end method

.method private sendMessageToDevice(Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->buildBaseMessage(Ljava/lang/String;)Lcom/mb/android/chromecast/ChromecastMessage$Builder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->build()Lcom/mb/android/chromecast/ChromecastMessage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->sendMessageToDevice(Lcom/mb/android/chromecast/ChromecastMessage;)V

    return-void
.end method


# virtual methods
.method public attachSurface(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public destroyPlayer()V
    .locals 0

    return-void
.end method

.method public destroyPlayer(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public detachSurface()V
    .locals 0

    return-void
.end method

.method public synthetic displayModeChanged()V
    .locals 0

    invoke-static {p0}, Lcom/mb/android/media/Playback$-CC;->$default$displayModeChanged(Lcom/mb/android/media/Playback;)V

    return-void
.end method

.method public fastForward()V
    .locals 1

    const-string v0, "FastForward"

    .line 165
    invoke-direct {p0, v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->sendMessageToDevice(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentItem()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 219
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStreamPosition()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->mPositionMs:J

    return-wide v0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->mLastState:I

    return v0
.end method

.method public getVolumeProvider()Landroidx/media/VolumeProviderCompat;
    .locals 1

    .line 316
    invoke-direct {p0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->initVolumeProvider()V

    .line 317
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->remoteVolumeProvider:Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;

    return-object v0
.end method

.method public hasMedia(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public incrementSubtitleOffset(J)V
    .locals 0

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$new$0$RemotePlaybackChromecast(DZ)V
    .locals 2

    double-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    .line 322
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/16 p2, 0x64

    .line 323
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    .line 324
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 325
    invoke-virtual {p0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->getVolumeProvider()Landroidx/media/VolumeProviderCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media/VolumeProviderCompat;->setCurrentVolume(I)V

    .line 326
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "if(window.Chromecast){Chromecast.onDeviceVolumeChanged(%d, %s);}"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-interface {v0, p1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method public movePlaylistItem(II)V
    .locals 0

    return-void
.end method

.method public nextTrack()V
    .locals 1

    const-string v0, "NextTrack"

    .line 170
    invoke-direct {p0, v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->sendMessageToDevice(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    const-string v0, "Pause"

    .line 150
    invoke-direct {p0, v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->sendMessageToDevice(Ljava/lang/String;)V

    return-void
.end method

.method public play(Landroid/support/v4/media/MediaMetadataCompat;JLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public play(Ljava/util/List;ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public playPause()V
    .locals 1

    const-string v0, "PlayPause"

    .line 145
    invoke-direct {p0, v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->sendMessageToDevice(Ljava/lang/String;)V

    return-void
.end method

.method public prevTrack()V
    .locals 1

    const-string v0, "PreviousTrack"

    .line 175
    invoke-direct {p0, v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->sendMessageToDevice(Ljava/lang/String;)V

    return-void
.end method

.method public queueItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public queueItemsNext(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public removePlaylistItem(I)V
    .locals 0

    return-void
.end method

.method public reportPlayback(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public reportPlaybackStopped()V
    .locals 0

    return-void
.end method

.method public rewind()V
    .locals 1

    const-string v0, "Rewind"

    .line 160
    invoke-direct {p0, v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->sendMessageToDevice(Ljava/lang/String;)V

    return-void
.end method

.method public seekRelative(J)V
    .locals 1

    const-string v0, "SeekRelative"

    .line 247
    invoke-direct {p0, v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->buildBaseMessage(Ljava/lang/String;)Lcom/mb/android/chromecast/ChromecastMessage$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->addOption(Ljava/lang/String;Ljava/lang/Object;)Lcom/mb/android/chromecast/ChromecastMessage$Builder;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->build()Lcom/mb/android/chromecast/ChromecastMessage;

    move-result-object p1

    .line 251
    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->sendMessageToDevice(Lcom/mb/android/chromecast/ChromecastMessage;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 3

    const-string v0, "Seek"

    .line 234
    invoke-direct {p0, v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->buildBaseMessage(Ljava/lang/String;)Lcom/mb/android/chromecast/ChromecastMessage$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 238
    div-long/2addr p1, v1

    .line 240
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "position"

    invoke-virtual {v0, p2, p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->addOption(Ljava/lang/String;Ljava/lang/Object;)Lcom/mb/android/chromecast/ChromecastMessage$Builder;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->build()Lcom/mb/android/chromecast/ChromecastMessage;

    move-result-object p1

    .line 238
    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->sendMessageToDevice(Lcom/mb/android/chromecast/ChromecastMessage;)V

    return-void
.end method

.method public setAudioStreamIndex(I)V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/mb/android/media/Playback$Callback;)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->volumeChangedListener:Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;

    invoke-virtual {v0, v1}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->startVolumeListener(Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->stopVolumeListener()V

    .line 304
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->mCallback:Lcom/mb/android/media/Playback$Callback;

    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 0

    return-void
.end method

.method public setRepeatMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setShouldReportEvents(Z)V
    .locals 0

    return-void
.end method

.method public setShuffleOn(Z)V
    .locals 0

    return-void
.end method

.method public setSubtitleOffset(J)V
    .locals 0

    return-void
.end method

.method public setSubtitleStreamIndex(I)V
    .locals 0

    return-void
.end method

.method public setVideoAspectRatio(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVideoOutputEnabled(Z)V
    .locals 0

    return-void
.end method

.method public skipToIndex(I)V
    .locals 0

    return-void
.end method

.method public stop(Z)V
    .locals 0

    const-string p1, "Stop"

    .line 79
    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->sendMessageToDevice(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceChanged(III)V
    .locals 0

    return-void
.end method

.method public unPause()V
    .locals 1

    const-string v0, "Unpause"

    .line 155
    invoke-direct {p0, v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->sendMessageToDevice(Ljava/lang/String;)V

    return-void
.end method
