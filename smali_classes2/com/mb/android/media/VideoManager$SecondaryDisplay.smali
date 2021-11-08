.class public final Lcom/mb/android/media/VideoManager$SecondaryDisplay;
.super Landroid/app/Presentation;
.source "VideoManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecondaryDisplay"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/SecondaryDisplay"


# instance fields
.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field public mOuterVideoFrame:Landroid/widget/FrameLayout;

.field public mSurfaceFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field public mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 561
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 562
    iput-object p3, p0, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 563
    instance-of p2, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p2, :cond_0

    .line 564
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 569
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 571
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    .line 572
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 573
    invoke-virtual {p0, p1}, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->setContentView(Landroid/view/View;)V

    .line 575
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 576
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 577
    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    new-instance p1, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->mSurfaceView:Landroid/view/SurfaceView;

    .line 580
    new-instance p1, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0}, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->mSurfaceFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 581
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->mSurfaceFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setBackgroundColor(I)V

    .line 582
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->mSurfaceFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v0, p0, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;)V

    .line 584
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 585
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 586
    iget-object v0, p0, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->mSurfaceFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    iput-object v2, p0, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->mOuterVideoFrame:Landroid/widget/FrameLayout;

    .line 590
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Secondary display created"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
