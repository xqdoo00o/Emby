.class public interface abstract Lcom/mb/android/media/RemotePlayback;
.super Ljava/lang/Object;
.source "RemotePlayback.java"

# interfaces
.implements Lcom/mb/android/media/Playback;


# virtual methods
.method public abstract getVolumeProvider()Landroidx/media/VolumeProviderCompat;
.end method

.method public abstract reportPlayback(Landroid/content/Intent;)V
.end method

.method public abstract reportPlaybackStopped()V
.end method
