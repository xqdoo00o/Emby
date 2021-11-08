.class Lcom/mb/android/media/mpv/LocalPlaybackMpv$1;
.super Landroid/content/BroadcastReceiver;
.source "LocalPlaybackMpv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/mpv/LocalPlaybackMpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;


# direct methods
.method constructor <init>(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$1;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 98
    iget-object p2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$1;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-virtual {p2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 99
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/mb/android/media/MediaService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "com.example.android.uamp.ACTION_CMD"

    .line 100
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "CMD_NAME"

    const-string v0, "CMD_PAUSE"

    .line 101
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :try_start_0
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$1;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$000(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    iget-object p2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$1;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$100(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error in mAudioNoisyReceiver"

    invoke-interface {p2, v1, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
