.class public interface abstract Lcom/google/android/exoplayer2/Player$EventListener;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
.end method

.method public abstract onExperimentalOffloadSchedulingEnabledChanged(Z)V
.end method

.method public abstract onExperimentalSleepingForOffloadChanged(Z)V
.end method

.method public abstract onIsLoadingChanged(Z)V
.end method

.method public abstract onIsPlayingChanged(Z)V
.end method

.method public abstract onLoadingChanged(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .param p1    # Lcom/google/android/exoplayer2/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onPlayWhenReadyChanged(ZI)V
.end method

.method public abstract onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract onPlaybackStateChanged(I)V
.end method

.method public abstract onPlaybackSuppressionReasonChanged(I)V
.end method

.method public abstract onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
.end method

.method public abstract onPlayerStateChanged(ZI)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPositionDiscontinuity(I)V
.end method

.method public abstract onRepeatModeChanged(I)V
.end method

.method public abstract onSeekProcessed()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onShuffleModeEnabledChanged(Z)V
.end method

.method public abstract onStaticMetadataChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
.end method

.method public abstract onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
.end method
