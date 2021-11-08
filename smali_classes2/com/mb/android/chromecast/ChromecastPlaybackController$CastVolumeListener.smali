.class Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;
.super Lcom/google/android/gms/cast/Cast$Listener;
.source "ChromecastPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/chromecast/ChromecastPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CastVolumeListener"
.end annotation


# instance fields
.field private final listener:Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;

.field private final session:Lcom/google/android/gms/cast/framework/CastSession;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$Listener;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;->session:Lcom/google/android/gms/cast/framework/CastSession;

    .line 156
    iput-object p2, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;->listener:Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;

    return-void
.end method


# virtual methods
.method public onVolumeChanged()V
    .locals 4

    .line 161
    invoke-super {p0}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    .line 162
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;->listener:Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;->session:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;->listener:Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;

    iget-object v1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;->session:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastSession;->getVolume()D

    move-result-wide v1

    iget-object v3, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;->session:Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/CastSession;->isMute()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;->onVolumeChanged(DZ)V

    :cond_0
    return-void
.end method
