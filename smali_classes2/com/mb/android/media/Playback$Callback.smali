.class public interface abstract Lcom/mb/android/media/Playback$Callback;
.super Ljava/lang/Object;
.source "Playback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/Playback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCompletion(Landroid/support/v4/media/MediaMetadataCompat;Lcom/mb/android/media/PlayQueueState;)V
    .param p1    # Landroid/support/v4/media/MediaMetadataCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
.end method

.method public abstract onPlaybackStatusChanged(I)V
.end method

.method public abstract onPlaybackStatusChanged(ILjava/lang/String;)V
.end method
