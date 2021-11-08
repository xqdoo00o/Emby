.class public final Lis/xyz/mpv/FadeOutControlsRunnable$run$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MPVActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lis/xyz/mpv/FadeOutControlsRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "is/xyz/mpv/FadeOutControlsRunnable$run$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
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
.field final synthetic this$0:Lis/xyz/mpv/FadeOutControlsRunnable;


# direct methods
.method constructor <init>(Lis/xyz/mpv/FadeOutControlsRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 794
    iput-object p1, p0, Lis/xyz/mpv/FadeOutControlsRunnable$run$1;->this$0:Lis/xyz/mpv/FadeOutControlsRunnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    iget-object p1, p0, Lis/xyz/mpv/FadeOutControlsRunnable$run$1;->this$0:Lis/xyz/mpv/FadeOutControlsRunnable;

    invoke-static {p1}, Lis/xyz/mpv/FadeOutControlsRunnable;->access$getActivity$p(Lis/xyz/mpv/FadeOutControlsRunnable;)Lis/xyz/mpv/MPVActivity;

    move-result-object p1

    invoke-virtual {p1}, Lis/xyz/mpv/MPVActivity;->initControls()V

    return-void
.end method
