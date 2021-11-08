.class public final Lis/xyz/mpv/FadeOutControlsRunnable;
.super Ljava/lang/Object;
.source "MPVActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lis/xyz/mpv/FadeOutControlsRunnable;",
        "Ljava/lang/Runnable;",
        "activity",
        "Lis/xyz/mpv/MPVActivity;",
        "controls",
        "Landroid/view/View;",
        "(Lis/xyz/mpv/MPVActivity;Landroid/view/View;)V",
        "run",
        "",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final activity:Lis/xyz/mpv/MPVActivity;

.field private final controls:Landroid/view/View;


# direct methods
.method public constructor <init>(Lis/xyz/mpv/MPVActivity;Landroid/view/View;)V
    .locals 1
    .param p1    # Lis/xyz/mpv/MPVActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lis/xyz/mpv/FadeOutControlsRunnable;->activity:Lis/xyz/mpv/MPVActivity;

    iput-object p2, p0, Lis/xyz/mpv/FadeOutControlsRunnable;->controls:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lis/xyz/mpv/FadeOutControlsRunnable;)Lis/xyz/mpv/MPVActivity;
    .locals 0

    .line 791
    iget-object p0, p0, Lis/xyz/mpv/FadeOutControlsRunnable;->activity:Lis/xyz/mpv/MPVActivity;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 794
    iget-object v0, p0, Lis/xyz/mpv/FadeOutControlsRunnable;->controls:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lis/xyz/mpv/FadeOutControlsRunnable$run$1;

    invoke-direct {v1, p0}, Lis/xyz/mpv/FadeOutControlsRunnable$run$1;-><init>(Lis/xyz/mpv/FadeOutControlsRunnable;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
