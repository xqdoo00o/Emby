.class public interface abstract Lcom/mb/android/media/Playback;
.super Ljava/lang/Object;
.source "Playback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/Playback$Callback;
    }
.end annotation


# virtual methods
.method public abstract attachSurface(Landroid/view/Surface;)V
.end method

.method public abstract destroyPlayer()V
.end method

.method public abstract destroyPlayer(Ljava/lang/Runnable;)V
.end method

.method public abstract detachSurface()V
.end method

.method public abstract displayModeChanged()V
.end method

.method public abstract fastForward()V
.end method

.method public abstract getCurrentItem()Landroid/support/v4/media/MediaMetadataCompat;
.end method

.method public abstract getCurrentStreamPosition()J
.end method

.method public abstract getPlaylist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract hasMedia(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract incrementSubtitleOffset(J)V
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract movePlaylistItem(II)V
.end method

.method public abstract nextTrack()V
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract pause()V
.end method

.method public abstract play(Landroid/support/v4/media/MediaMetadataCompat;JLandroid/os/Bundle;)V
.end method

.method public abstract play(Ljava/util/List;ILandroid/os/Bundle;)V
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
.end method

.method public abstract playPause()V
.end method

.method public abstract prevTrack()V
.end method

.method public abstract queueItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queueItemsNext(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removePlaylistItem(I)V
.end method

.method public abstract rewind()V
.end method

.method public abstract seekRelative(J)V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setAudioStreamIndex(I)V
.end method

.method public abstract setCallback(Lcom/mb/android/media/Playback$Callback;)V
.end method

.method public abstract setPlaybackRate(F)V
.end method

.method public abstract setRepeatMode(Ljava/lang/String;)V
.end method

.method public abstract setShouldReportEvents(Z)V
.end method

.method public abstract setShuffleOn(Z)V
.end method

.method public abstract setSubtitleOffset(J)V
.end method

.method public abstract setSubtitleStreamIndex(I)V
.end method

.method public abstract setVideoAspectRatio(Ljava/lang/String;)V
.end method

.method public abstract setVideoOutputEnabled(Z)V
.end method

.method public abstract skipToIndex(I)V
.end method

.method public abstract stop(Z)V
.end method

.method public abstract surfaceChanged(III)V
.end method

.method public abstract unPause()V
.end method
