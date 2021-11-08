.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3OLiGER76tR56f5SM-UvdDRc1LQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3OLiGER76tR56f5SM-UvdDRc1LQ;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput-object p2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3OLiGER76tR56f5SM-UvdDRc1LQ;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3OLiGER76tR56f5SM-UvdDRc1LQ;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3OLiGER76tR56f5SM-UvdDRc1LQ;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iget-object v1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3OLiGER76tR56f5SM-UvdDRc1LQ;->f$1:Ljava/util/List;

    iget-boolean v2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3OLiGER76tR56f5SM-UvdDRc1LQ;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->lambda$queueItems$16$LocalPlaybackExoPlayer(Ljava/util/List;Z)V

    return-void
.end method
