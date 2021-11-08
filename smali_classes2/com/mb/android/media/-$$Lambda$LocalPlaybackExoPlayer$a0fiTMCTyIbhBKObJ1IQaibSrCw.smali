.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$a0fiTMCTyIbhBKObJ1IQaibSrCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$a0fiTMCTyIbhBKObJ1IQaibSrCw;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput-object p2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$a0fiTMCTyIbhBKObJ1IQaibSrCw;->f$1:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$a0fiTMCTyIbhBKObJ1IQaibSrCw;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iget-object v1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$a0fiTMCTyIbhBKObJ1IQaibSrCw;->f$1:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->lambda$removePlaylistItem$15$LocalPlaybackExoPlayer(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method
