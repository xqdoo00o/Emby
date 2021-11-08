.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$VO3Vw16MVuaqVETz5Skwe7DEhGc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$VO3Vw16MVuaqVETz5Skwe7DEhGc;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput-boolean p2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$VO3Vw16MVuaqVETz5Skwe7DEhGc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$VO3Vw16MVuaqVETz5Skwe7DEhGc;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iget-boolean v1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$VO3Vw16MVuaqVETz5Skwe7DEhGc;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->lambda$setShuffleOn$18$LocalPlaybackExoPlayer(Z)V

    return-void
.end method
