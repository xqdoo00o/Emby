.class Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;
.super Ljava/lang/Object;
.source "LocalPlaybackExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/LocalPlaybackExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExoAudioListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;


# direct methods
.method private constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V
    .locals 0

    .line 1935
    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Lcom/mb/android/media/LocalPlaybackExoPlayer$1;)V
    .locals 0

    .line 1935
    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    return-void
.end method


# virtual methods
.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioListener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 4

    .line 1938
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "LocalPlaybackExoPlayer.onAudioSessionIdChanged: %d"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1939
    invoke-virtual {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;->sendOpenAudioEffectControlBroadcast(I)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/audio/AudioListener;Z)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/audio/AudioListener;F)V

    return-void
.end method

.method public sendOpenAudioEffectControlBroadcast(I)V
    .locals 4

    .line 1943
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 1946
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "LocalPlaybackExoPlayer.sendOpenAudioEffectControlBroadcast audioSessionId: %d"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1947
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioSessionId(I)V

    .line 1948
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.extra.AUDIO_SESSION"

    .line 1949
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1950
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.media.extra.CONTENT_TYPE"

    .line 1951
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1952
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
