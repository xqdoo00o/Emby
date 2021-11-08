.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3JQw9KeNdFeJJ3-kFkDEx0faA2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3JQw9KeNdFeJJ3-kFkDEx0faA2w;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput p2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3JQw9KeNdFeJJ3-kFkDEx0faA2w;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3JQw9KeNdFeJJ3-kFkDEx0faA2w;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iget v1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3JQw9KeNdFeJJ3-kFkDEx0faA2w;->f$1:I

    invoke-virtual {v0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->lambda$skipToIndex$13$LocalPlaybackExoPlayer(I)V

    return-void
.end method
