.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer$1;

.field private final synthetic f$1:Ljava/io/File;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:Ljava/lang/String;

.field private final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer$1;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer$1;

    iput-object p2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$5:Ljava/lang/String;

    iput-wide p7, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$6:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer$1;

    iget-object v1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$5:Ljava/lang/String;

    iget-wide v6, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;->f$6:J

    invoke-virtual/range {v0 .. v7}, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->lambda$onLoadCompleted$0$LocalPlaybackExoPlayer$1(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
