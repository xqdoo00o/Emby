.class public interface abstract Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;
.super Ljava/lang/Object;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/PlaybackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaybackServiceCallback"
.end annotation


# virtual methods
.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract onNotificationRequired()V
.end method

.method public abstract onPlaybackStart()V
.end method

.method public abstract onPlaybackStateUpdated(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.end method

.method public abstract onPlaybackStop()V
.end method
