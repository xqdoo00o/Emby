.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fnUXv9X8nRad1k53WacZsDpWbrg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fnUXv9X8nRad1k53WacZsDpWbrg;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput-wide p2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fnUXv9X8nRad1k53WacZsDpWbrg;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fnUXv9X8nRad1k53WacZsDpWbrg;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iget-wide v1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fnUXv9X8nRad1k53WacZsDpWbrg;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->lambda$seekRelative$10$LocalPlaybackExoPlayer(J)V

    return-void
.end method
