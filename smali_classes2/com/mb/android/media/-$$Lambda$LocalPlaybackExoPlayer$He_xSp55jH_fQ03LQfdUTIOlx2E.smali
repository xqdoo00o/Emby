.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$He_xSp55jH_fQ03LQfdUTIOlx2E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

.field private final synthetic f$1:J

.field private final synthetic f$2:Landroid/support/v4/media/MediaMetadataCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;JLandroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$He_xSp55jH_fQ03LQfdUTIOlx2E;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput-wide p2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$He_xSp55jH_fQ03LQfdUTIOlx2E;->f$1:J

    iput-object p4, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$He_xSp55jH_fQ03LQfdUTIOlx2E;->f$2:Landroid/support/v4/media/MediaMetadataCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$He_xSp55jH_fQ03LQfdUTIOlx2E;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iget-wide v1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$He_xSp55jH_fQ03LQfdUTIOlx2E;->f$1:J

    iget-object v3, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$He_xSp55jH_fQ03LQfdUTIOlx2E;->f$2:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->lambda$play$5$LocalPlaybackExoPlayer(JLandroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method
