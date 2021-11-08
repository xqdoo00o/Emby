.class Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;
.super Lcom/mb/android/media/mpv/MpvEventObserver;
.source "LocalPlaybackMpv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/mpv/LocalPlaybackMpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerListener"
.end annotation


# instance fields
.field private mediaDurationMs:J

.field final synthetic this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;


# direct methods
.method public constructor <init>(Lcom/mb/android/media/mpv/LocalPlaybackMpv;Lcom/mb/android/model/logging/ILogger;Landroid/content/Context;Z)V
    .locals 0

    .line 1340
    iput-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    .line 1341
    invoke-static {p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$500(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/MediaService$UIMessenger;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1, p4}, Lcom/mb/android/media/mpv/MpvEventObserver;-><init>(Lcom/mb/android/model/logging/ILogger;Landroid/content/Context;Lcom/mb/android/media/MediaService$UIMessenger;Z)V

    return-void
.end method

.method private isStateSkipping(I)Z
    .locals 1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected onCacheUpdate(DD)V
    .locals 0

    return-void
.end method

.method protected onDurationChange(J)V
    .locals 0

    .line 1415
    invoke-super {p0, p1, p2}, Lcom/mb/android/media/mpv/MpvEventObserver;->onDurationChange(J)V

    .line 1417
    iput-wide p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->mediaDurationMs:J

    .line 1419
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1420
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object p1

    iget-object p2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$600(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    :cond_0
    return-void
.end method

.method protected onEndReached(Z)V
    .locals 2

    .line 1390
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$602(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)I

    if-eqz p1, :cond_0

    .line 1396
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1397
    new-instance p1, Lcom/mb/android/media/PlayQueueState;

    invoke-direct {p1}, Lcom/mb/android/media/PlayQueueState;-><init>()V

    .line 1398
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-virtual {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->getCurrentStreamPosition()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/mb/android/media/PlayQueueState;->playbackPosition:J

    .line 1399
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-virtual {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->getPlaylist()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mb/android/media/PlayQueueState;->setPlayQueue(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 1401
    iput v0, p1, Lcom/mb/android/media/PlayQueueState;->playQueueIndex:I

    .line 1402
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$1100(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/mb/android/media/Playback$Callback;->onCompletion(Landroid/support/v4/media/MediaMetadataCompat;Lcom/mb/android/media/PlayQueueState;)V

    :cond_0
    return-void
.end method

.method protected onError()V
    .locals 0

    return-void
.end method

.method protected onPaused()V
    .locals 2

    .line 1369
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$1000(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V

    .line 1371
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$602(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)I

    .line 1372
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    :cond_0
    return-void
.end method

.method protected onPlaying()V
    .locals 2

    .line 1347
    invoke-super {p0}, Lcom/mb/android/media/mpv/MpvEventObserver;->onPlaying()V

    .line 1348
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$602(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)I

    .line 1349
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$800(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V

    return-void
.end method

.method protected onPlaylistPosUpdate(J)V
    .locals 1

    .line 1426
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    long-to-int p2, p1

    invoke-static {v0, p2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$1200(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$1102(Lcom/mb/android/media/mpv/LocalPlaybackMpv;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;

    .line 1428
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object p1

    iget-object p2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$1100(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mb/android/media/Playback$Callback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_0
    return-void
.end method

.method protected onShutdown()V
    .locals 3

    .line 1455
    invoke-super {p0}, Lcom/mb/android/media/mpv/MpvEventObserver;->onShutdown()V

    .line 1457
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1458
    new-instance v0, Lcom/mb/android/media/PlayQueueState;

    invoke-direct {v0}, Lcom/mb/android/media/PlayQueueState;-><init>()V

    .line 1459
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-virtual {v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->getCurrentStreamPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mb/android/media/PlayQueueState;->playbackPosition:J

    .line 1460
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-virtual {v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->getPlaylist()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mb/android/media/PlayQueueState;->setPlayQueue(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 1462
    iput v1, v0, Lcom/mb/android/media/PlayQueueState;->playQueueIndex:I

    .line 1463
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$1100(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/mb/android/media/Playback$Callback;->onCompletion(Landroid/support/v4/media/MediaMetadataCompat;Lcom/mb/android/media/PlayQueueState;)V

    :cond_0
    return-void
.end method

.method protected onStopped()V
    .locals 2

    .line 1380
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$600(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->isStateSkipping(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$602(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)I

    return-void
.end method

.method protected onTimeUpdate(J)V
    .locals 2

    .line 1435
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0, p1, p2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$1302(Lcom/mb/android/media/mpv/LocalPlaybackMpv;J)J

    .line 1437
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$600(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    .line 1441
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mb/android/media/mpv/MpvEventObserver;->onTimeUpdate(J)V

    return-void
.end method

.method protected onUnpaused()V
    .locals 2

    .line 1359
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$900(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V

    .line 1360
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$602(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)I

    .line 1361
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mb/android/media/Playback$Callback;->onPlaybackStatusChanged(I)V

    :cond_0
    return-void
.end method
