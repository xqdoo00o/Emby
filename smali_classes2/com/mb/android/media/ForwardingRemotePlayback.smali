.class public Lcom/mb/android/media/ForwardingRemotePlayback;
.super Ljava/lang/Object;
.source "ForwardingRemotePlayback.java"

# interfaces
.implements Lcom/mb/android/media/RemotePlayback;


# instance fields
.field private callback:Lcom/mb/android/media/Playback$Callback;

.field private final chromecastPlayer:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

.field private final defaultRemotePlayer:Lcom/mb/android/media/RemotePlaybackDefault;

.field private mLastState:I

.field private mLastVolume:I

.field private mPositionMs:J

.field private player:Lcom/mb/android/media/RemotePlayback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaService$UIMessenger;Lcom/mb/android/apiinteraction/android/ConnectionManager;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mLastVolume:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mLastState:I

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mPositionMs:J

    .line 33
    new-instance v0, Lcom/mb/android/media/RemotePlaybackDefault;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3, p2}, Lcom/mb/android/media/RemotePlaybackDefault;-><init>(Landroid/content/Context;Lcom/mb/android/media/MediaService$UIMessenger;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->defaultRemotePlayer:Lcom/mb/android/media/RemotePlaybackDefault;

    .line 34
    new-instance v0, Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaService$UIMessenger;Lcom/mb/android/apiinteraction/android/ConnectionManager;)V

    iput-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->chromecastPlayer:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    .line 35
    iget-object p1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->defaultRemotePlayer:Lcom/mb/android/media/RemotePlaybackDefault;

    iput-object p1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    return-void
.end method


# virtual methods
.method public attachSurface(Landroid/view/Surface;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->attachSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public destroyPlayer()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->destroyPlayer()V

    return-void
.end method

.method public destroyPlayer(Ljava/lang/Runnable;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->destroyPlayer(Ljava/lang/Runnable;)V

    return-void
.end method

.method public detachSurface()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->detachSurface()V

    return-void
.end method

.method public synthetic displayModeChanged()V
    .locals 0

    invoke-static {p0}, Lcom/mb/android/media/Playback$-CC;->$default$displayModeChanged(Lcom/mb/android/media/Playback;)V

    return-void
.end method

.method public fastForward()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->fastForward()V

    return-void
.end method

.method public getCurrentItem()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->getCurrentItem()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStreamPosition()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mPositionMs:J

    return-wide v0
.end method

.method public getPlayback(Ljava/lang/String;)Lcom/mb/android/media/Playback;
    .locals 1

    const-string v0, "chromecast"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->chromecastPlayer:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    return-object p1

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->defaultRemotePlayer:Lcom/mb/android/media/RemotePlaybackDefault;

    return-object p1
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

    .line 245
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->getPlaylist()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mLastState:I

    return v0
.end method

.method public getVolumeProvider()Landroidx/media/VolumeProviderCompat;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->getVolumeProvider()Landroidx/media/VolumeProviderCompat;

    move-result-object v0

    return-object v0
.end method

.method public hasMedia(Ljava/lang/String;)Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->hasMedia(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public incrementSubtitleOffset(J)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/RemotePlayback;->incrementSubtitleOffset(J)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public movePlaylistItem(II)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/RemotePlayback;->movePlaylistItem(II)V

    return-void
.end method

.method public nextTrack()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->nextTrack()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->onConfigurationChanged()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->pause()V

    return-void
.end method

.method public play(Landroid/support/v4/media/MediaMetadataCompat;JLandroid/os/Bundle;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mb/android/media/RemotePlayback;->play(Landroid/support/v4/media/MediaMetadataCompat;JLandroid/os/Bundle;)V

    return-void
.end method

.method public play(Ljava/util/List;ILandroid/os/Bundle;)V
    .locals 1
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

    .line 153
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1, p2, p3}, Lcom/mb/android/media/RemotePlayback;->play(Ljava/util/List;ILandroid/os/Bundle;)V

    return-void
.end method

.method public playPause()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->playPause()V

    return-void
.end method

.method public prevTrack()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->prevTrack()V

    return-void
.end method

.method public queueItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->queueItems(Ljava/util/List;)V

    return-void
.end method

.method public queueItemsNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->queueItemsNext(Ljava/util/List;)V

    return-void
.end method

.method public removePlaylistItem(I)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->removePlaylistItem(I)V

    return-void
.end method

.method public reportPlayback(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "artist"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "title"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "itemId"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "isPaused"

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "canSeek"

    .line 69
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string v2, "position"

    .line 71
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "duration"

    .line 72
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    int-to-long v2, v2

    .line 74
    iput-wide v2, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mPositionMs:J

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 76
    :goto_0
    iput v1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mLastState:I

    .line 78
    iget-object v1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->callback:Lcom/mb/android/media/Playback$Callback;

    if-eqz v1, :cond_1

    .line 79
    iget v2, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mLastState:I

    invoke-interface {v1, v2}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    const-string v1, "volume"

    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 83
    iget v1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mLastVolume:I

    if-eq v0, v1, :cond_1

    .line 84
    iput v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mLastVolume:I

    .line 85
    iget-object v1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v1}, Lcom/mb/android/media/RemotePlayback;->getVolumeProvider()Landroidx/media/VolumeProviderCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media/VolumeProviderCompat;->setCurrentVolume(I)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->reportPlayback(Landroid/content/Intent;)V

    return-void
.end method

.method public reportPlaybackStopped()V
    .locals 2

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mLastState:I

    .line 95
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->callback:Lcom/mb/android/media/Playback$Callback;

    if-eqz v0, :cond_0

    .line 96
    iget v1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->mLastState:I

    invoke-interface {v0, v1}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->reportPlaybackStopped()V

    return-void
.end method

.method public rewind()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->rewind()V

    return-void
.end method

.method public seekRelative(J)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/RemotePlayback;->seekRelative(J)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/RemotePlayback;->seekTo(J)V

    return-void
.end method

.method public setAudioStreamIndex(I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->setAudioStreamIndex(I)V

    return-void
.end method

.method public setCallback(Lcom/mb/android/media/Playback$Callback;)V
    .locals 1

    .line 295
    iput-object p1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->callback:Lcom/mb/android/media/Playback$Callback;

    if-nez p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->defaultRemotePlayer:Lcom/mb/android/media/RemotePlaybackDefault;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mb/android/media/RemotePlaybackDefault;->setCallback(Lcom/mb/android/media/Playback$Callback;)V

    .line 298
    iget-object p1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->chromecastPlayer:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    invoke-virtual {p1, v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->setCallback(Lcom/mb/android/media/Playback$Callback;)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->setCallback(Lcom/mb/android/media/Playback$Callback;)V

    :goto_0
    return-void
.end method

.method public setPlayback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "chromecast"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->chromecastPlayer:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    iput-object p1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->defaultRemotePlayer:Lcom/mb/android/media/RemotePlaybackDefault;

    iput-object p1, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    :goto_0
    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->setPlaybackRate(F)V

    return-void
.end method

.method public setRepeatMode(Ljava/lang/String;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->setRepeatMode(Ljava/lang/String;)V

    return-void
.end method

.method public setShouldReportEvents(Z)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->setShouldReportEvents(Z)V

    return-void
.end method

.method public setShuffleOn(Z)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->setShuffleOn(Z)V

    return-void
.end method

.method public setSubtitleOffset(J)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/RemotePlayback;->setSubtitleOffset(J)V

    return-void
.end method

.method public setSubtitleStreamIndex(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->setSubtitleStreamIndex(I)V

    return-void
.end method

.method public setVideoAspectRatio(Ljava/lang/String;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->setVideoAspectRatio(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoOutputEnabled(Z)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->setVideoOutputEnabled(Z)V

    return-void
.end method

.method public skipToIndex(I)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->skipToIndex(I)V

    return-void
.end method

.method public stop(Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/RemotePlayback;->stop(Z)V

    return-void
.end method

.method public surfaceChanged(III)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0, p1, p2, p3}, Lcom/mb/android/media/RemotePlayback;->surfaceChanged(III)V

    return-void
.end method

.method public unPause()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/mb/android/media/ForwardingRemotePlayback;->player:Lcom/mb/android/media/RemotePlayback;

    invoke-interface {v0}, Lcom/mb/android/media/RemotePlayback;->unPause()V

    return-void
.end method
