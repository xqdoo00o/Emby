.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fv3erA-NGNz06xoTRKRBw-_ZtmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fv3erA-NGNz06xoTRKRBw-_ZtmE;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput p2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fv3erA-NGNz06xoTRKRBw-_ZtmE;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fv3erA-NGNz06xoTRKRBw-_ZtmE;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iget v1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fv3erA-NGNz06xoTRKRBw-_ZtmE;->f$1:F

    invoke-virtual {v0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->lambda$setPlaybackRate$19$LocalPlaybackExoPlayer(F)V

    return-void
.end method
