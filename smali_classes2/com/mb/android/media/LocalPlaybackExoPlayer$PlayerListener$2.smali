.class Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;
.super Lcom/mb/android/media/DefaultStreamVolumeObserver;
.source "LocalPlaybackExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;


# direct methods
.method constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;Landroid/content/Context;)V
    .locals 0

    .line 1440
    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-direct {p0, p2}, Lcom/mb/android/media/DefaultStreamVolumeObserver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(II)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1444
    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1445
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->access$300(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%s.notifyVolumeChange(%d, true);"

    .line 1444
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->access$400(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;Ljava/lang/String;)V

    .line 1446
    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object v1, v1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/PlaybackProgressReportManager;

    move-result-object v5

    sget-object v6, Lcom/mb/android/model/session/ProgressEvent;->VolumeChange:Lcom/mb/android/model/session/ProgressEvent;

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object v1, v1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1448
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v7

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object v1, v1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1449
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v8

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object v1, v1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1450
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I

    move-result v9

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object v1, v1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1451
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J

    move-result-wide v10

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object v1, v1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1452
    invoke-virtual {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isPlaying()Z

    move-result v1

    xor-int/lit8 v12, v1, 0x1

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    .line 1453
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->access$1000(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)Lcom/mb/android/media/DefaultStreamVolumeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->getVolume()I

    move-result v13

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object v1, v1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1454
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v14, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object v1, v1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iget-object v2, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object v2, v2, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1455
    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRepeatMode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1100(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I

    move-result v15

    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$2;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object v1, v1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    .line 1456
    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$1200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/dto/MediaSourceInfo;

    move-result-object v16

    .line 1446
    invoke-virtual/range {v5 .. v16}, Lcom/mb/android/media/PlaybackProgressReportManager;->reportPlaybackProgress(Lcom/mb/android/model/session/ProgressEvent;Landroid/support/v4/media/MediaMetadataCompat;IIJZIFILcom/mb/android/model/dto/MediaSourceInfo;)V

    return-void
.end method
