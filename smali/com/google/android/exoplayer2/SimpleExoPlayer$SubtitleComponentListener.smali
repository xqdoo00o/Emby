.class final Lcom/google/android/exoplayer2/SimpleExoPlayer$SubtitleComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubtitleComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 2426
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$SubtitleComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V
    .locals 0

    .line 2426
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$SubtitleComponentListener;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 2435
    iget-object p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$SubtitleComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$4800(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 2430
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$SubtitleComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$4800(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 2440
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$SubtitleComponentListener;->this$0:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->access$4800(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;)V

    return-void
.end method
