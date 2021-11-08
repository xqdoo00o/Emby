.class public Lcom/mb/android/media/RemotePlaybackDefault;
.super Ljava/lang/Object;
.source "RemotePlaybackDefault.java"

# interfaces
.implements Lcom/mb/android/media/RemotePlayback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private mCallback:Lcom/mb/android/media/Playback$Callback;

.field private mLastState:I

.field private mPositionMs:J

.field private messenger:Lcom/mb/android/media/MediaService$UIMessenger;

.field private remoteVolumeProvider:Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/media/MediaService$UIMessenger;Lcom/mb/android/model/logging/ILogger;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->mLastState:I

    .line 28
    iput-object p1, p0, Lcom/mb/android/media/RemotePlaybackDefault;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/mb/android/media/RemotePlaybackDefault;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    .line 30
    iput-object p3, p0, Lcom/mb/android/media/RemotePlaybackDefault;->logger:Lcom/mb/android/model/logging/ILogger;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/RemotePlaybackDefault;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/media/RemotePlaybackDefault;)Lcom/mb/android/media/MediaService$UIMessenger;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    return-object p0
.end method

.method private initVolumeProvider()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->remoteVolumeProvider:Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;

    const/4 v1, 0x2

    const/16 v2, 0x64

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;-><init>(Lcom/mb/android/media/RemotePlaybackDefault;III)V

    iput-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->remoteVolumeProvider:Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;

    :cond_0
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
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    const-string v1, "fastforward"

    invoke-interface {v0, v1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentItem()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 175
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStreamPosition()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->mPositionMs:J

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

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->mLastState:I

    return v0
.end method

.method public getVolumeProvider()Landroidx/media/VolumeProviderCompat;
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/mb/android/media/RemotePlaybackDefault;->initVolumeProvider()V

    .line 251
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->remoteVolumeProvider:Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;

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

.method public movePlaylistItem(II)V
    .locals 0

    return-void
.end method

.method public nextTrack()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    const-string v1, "nexttrack"

    invoke-interface {v0, v1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    const-string v1, "pause"

    invoke-interface {v0, v1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

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
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    const-string v1, "playpause"

    invoke-interface {v0, v1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public prevTrack()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    const-string v1, "previoustrack"

    invoke-interface {v0, v1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

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
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    const-string v1, "rewind"

    invoke-interface {v0, v1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public seekRelative(J)V
    .locals 0

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    return-void
.end method

.method public setAudioStreamIndex(I)V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/mb/android/media/Playback$Callback;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/mb/android/media/RemotePlaybackDefault;->mCallback:Lcom/mb/android/media/Playback$Callback;

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
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/mb/android/media/RemotePlaybackDefault;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    const-string v0, "stop"

    invoke-interface {p1, v0}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceChanged(III)V
    .locals 0

    return-void
.end method

.method public unPause()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    const-string v1, "unpause"

    invoke-interface {v0, v1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

    return-void
.end method
