.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$CMRUSRYigEDUQvhHldDVo-nT24k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$CMRUSRYigEDUQvhHldDVo-nT24k;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput-object p2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$CMRUSRYigEDUQvhHldDVo-nT24k;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$CMRUSRYigEDUQvhHldDVo-nT24k;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iget-object v1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$CMRUSRYigEDUQvhHldDVo-nT24k;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->lambda$destroyPlayer$4$LocalPlaybackExoPlayer(Ljava/lang/Runnable;)V

    return-void
.end method
