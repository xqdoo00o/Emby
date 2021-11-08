.class Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)V
    .locals 0

    .line 1415
    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$1;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.mb.android.ACTION_APP_READY"

    .line 1419
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "com.mb.android.ACTION_APP_RESUME"

    .line 1420
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1423
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$1;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object p1, p1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1426
    :cond_1
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$1;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object p1, p1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 1427
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$1;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object p2, p2, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->hasMedia(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$1;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object p2, p2, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result p2

    const/4 v0, -0x1

    if-le p2, v0, :cond_3

    .line 1428
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$1;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-virtual {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaylistChanged()V

    .line 1429
    iget-object p2, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object p2, p2, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    instance-of p2, p2, Landroid/support/v4/media/MediaMetadataCompat;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 1430
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    const-string p2, "playlistItemId"

    .line 1431
    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1432
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$1;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1433
    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->access$300(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object p1, v1, v0

    const-string p1, "%s.onPropertyChange(\'playlistItemId\', \'%s\');"

    .line 1432
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->access$400(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;Ljava/lang/String;)V

    .line 1435
    :cond_2
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener$1;->this$1:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    iget-object p2, p1, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->access$500(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;II)V

    :cond_3
    return-void
.end method
