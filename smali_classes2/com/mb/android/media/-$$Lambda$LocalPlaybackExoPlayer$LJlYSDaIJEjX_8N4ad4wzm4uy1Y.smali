.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$LJlYSDaIJEjX_8N4ad4wzm4uy1Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$LJlYSDaIJEjX_8N4ad4wzm4uy1Y;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$LJlYSDaIJEjX_8N4ad4wzm4uy1Y;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-virtual {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->lambda$detachSurface$21$LocalPlaybackExoPlayer()V

    return-void
.end method
