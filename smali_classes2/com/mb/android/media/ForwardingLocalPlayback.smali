.class public Lcom/mb/android/media/ForwardingLocalPlayback;
.super Ljava/lang/Object;
.source "ForwardingLocalPlayback.java"

# interfaces
.implements Lcom/mb/android/media/Playback;


# static fields
.field private static final supportedExoplayerContainers:Ljava/lang/String; = "mp4 mkv m4v 3gp ts mpegts flv webm ts mts m2ts"


# instance fields
.field private final exoPlayer:Lcom/mb/android/media/LocalPlaybackExoPlayer;

.field private final jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private final mpvPlayer:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

.field private player:Lcom/mb/android/media/Playback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaService$UIMessenger;Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iput-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    .line 27
    new-instance v0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaService$UIMessenger;Z)V

    iput-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->mpvPlayer:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    .line 28
    new-instance p4, Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-direct {p4, p1, p2, p3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaService$UIMessenger;)V

    iput-object p4, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->exoPlayer:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 29
    iget-object p1, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->exoPlayer:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput-object p1, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    return-void
.end method


# virtual methods
.method public attachSurface(Landroid/view/Surface;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->attachSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public destroyPlayer()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->destroyPlayer()V

    return-void
.end method

.method public destroyPlayer(Ljava/lang/Runnable;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->destroyPlayer(Ljava/lang/Runnable;)V

    return-void
.end method

.method public detachSurface()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->detachSurface()V

    return-void
.end method

.method public displayModeChanged()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->displayModeChanged()V

    return-void
.end method

.method public fastForward()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->fastForward()V

    return-void
.end method

.method public getCurrentItem()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->getCurrentItem()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStreamPosition()J
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->getCurrentStreamPosition()J

    move-result-wide v0

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

    .line 193
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->getPlaylist()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->getState()I

    move-result v0

    return v0
.end method

.method public hasMedia(Ljava/lang/String;)Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->hasMedia(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public incrementSubtitleOffset(J)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/Playback;->incrementSubtitleOffset(J)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public movePlaylistItem(II)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/Playback;->movePlaylistItem(II)V

    return-void
.end method

.method public nextTrack()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->nextTrack()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->onConfigurationChanged()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->pause()V

    return-void
.end method

.method public play(Landroid/support/v4/media/MediaMetadataCompat;JLandroid/os/Bundle;)V
    .locals 3

    const-string v0, "mediaSource"

    .line 80
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v2, Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-interface {v1, v0, v2}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/dto/MediaSourceInfo;

    .line 83
    invoke-virtual {v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getSupportsDirectPlay()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->exoPlayer:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    goto :goto_2

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getContainer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "mkv"

    .line 90
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4 mkv m4v 3gp ts mpegts flv webm ts mts m2ts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->exoPlayer:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->mpvPlayer:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    :goto_1
    iput-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    .line 94
    :goto_2
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mb/android/media/Playback;->play(Landroid/support/v4/media/MediaMetadataCompat;JLandroid/os/Bundle;)V

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

    .line 100
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->exoPlayer:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    .line 101
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2, p3}, Lcom/mb/android/media/Playback;->play(Ljava/util/List;ILandroid/os/Bundle;)V

    return-void
.end method

.method public playPause()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->playPause()V

    return-void
.end method

.method public prevTrack()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->prevTrack()V

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

    .line 156
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->queueItems(Ljava/util/List;)V

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

    .line 161
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->queueItemsNext(Ljava/util/List;)V

    return-void
.end method

.method public removePlaylistItem(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->removePlaylistItem(I)V

    return-void
.end method

.method public rewind()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->rewind()V

    return-void
.end method

.method public seekRelative(J)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/Playback;->seekRelative(J)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/Playback;->seekTo(J)V

    return-void
.end method

.method public setAudioStreamIndex(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setAudioStreamIndex(I)V

    return-void
.end method

.method public setCallback(Lcom/mb/android/media/Playback$Callback;)V
    .locals 1

    if-nez p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->mpvPlayer:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->setCallback(Lcom/mb/android/media/Playback$Callback;)V

    .line 250
    iget-object p1, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->exoPlayer:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-virtual {p1, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setCallback(Lcom/mb/android/media/Playback$Callback;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setCallback(Lcom/mb/android/media/Playback$Callback;)V

    :goto_0
    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setPlaybackRate(F)V

    return-void
.end method

.method public setRepeatMode(Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setRepeatMode(Ljava/lang/String;)V

    return-void
.end method

.method public setShouldReportEvents(Z)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setShouldReportEvents(Z)V

    return-void
.end method

.method public setShuffleOn(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setShuffleOn(Z)V

    return-void
.end method

.method public setSubtitleOffset(J)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/Playback;->setSubtitleOffset(J)V

    return-void
.end method

.method public setSubtitleStreamIndex(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setSubtitleStreamIndex(I)V

    return-void
.end method

.method public setVideoAspectRatio(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setVideoAspectRatio(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoOutputEnabled(Z)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setVideoOutputEnabled(Z)V

    return-void
.end method

.method public skipToIndex(I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->skipToIndex(I)V

    return-void
.end method

.method public stop(Z)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->stop(Z)V

    return-void
.end method

.method public surfaceChanged(III)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2, p3}, Lcom/mb/android/media/Playback;->surfaceChanged(III)V

    return-void
.end method

.method public unPause()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mb/android/media/ForwardingLocalPlayback;->player:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->unPause()V

    return-void
.end method
