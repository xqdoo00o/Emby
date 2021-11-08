.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
.super Ljava/lang/Object;
.source "StyledPlayerControlViewLayoutManager.java"


# static fields
.field private static final ANIMATION_INTERVAL_MS:J = 0x7d0L

.field private static final DURATION_FOR_HIDING_ANIMATION_MS:J = 0xfaL

.field private static final DURATION_FOR_SHOWING_ANIMATION_MS:J = 0xfaL

.field private static final UX_STATE_ALL_VISIBLE:I = 0x0

.field private static final UX_STATE_ANIMATING_HIDE:I = 0x3

.field private static final UX_STATE_ANIMATING_SHOW:I = 0x4

.field private static final UX_STATE_NONE_VISIBLE:I = 0x2

.field private static final UX_STATE_ONLY_PROGRESS_VISIBLE:I = 0x1


# instance fields
.field private animationEnabled:Z

.field private final basicControls:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bottomBar:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final centerControls:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final extraControls:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final extraControlsScrollView:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final hideAllBarsAnimator:Landroid/animation/AnimatorSet;

.field private final hideAllBarsRunnable:Ljava/lang/Runnable;

.field private final hideControllerRunnable:Ljava/lang/Runnable;

.field private final hideMainBarAnimator:Landroid/animation/AnimatorSet;

.field private final hideMainBarRunnable:Ljava/lang/Runnable;

.field private final hideProgressBarAnimator:Landroid/animation/AnimatorSet;

.field private final hideProgressBarRunnable:Ljava/lang/Runnable;

.field private isMinimalMode:Z

.field private final minimalControls:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private needToShowBars:Z

.field private final onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final overflowHideAnimator:Landroid/animation/ValueAnimator;

.field private final overflowShowAnimator:Landroid/animation/ValueAnimator;

.field private final overflowShowButton:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final showAllBarsAnimator:Landroid/animation/AnimatorSet;

.field private final showAllBarsRunnable:Ljava/lang/Runnable;

.field private final showMainBarAnimator:Landroid/animation/AnimatorSet;

.field private final shownButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field private final timeBar:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeView:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private uxState:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 10

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$D962S0Sgh_Nmbz9XMrZDUSmm4Qg;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$D962S0Sgh_Nmbz9XMrZDUSmm4Qg;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBarsRunnable:Ljava/lang/Runnable;

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$ZbYmmwjYr8A9uDiiz4DJH5yG1DU;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$ZbYmmwjYr8A9uDiiz4DJH5yG1DU;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBarsRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$UYcxZJCzj26nxqdbH2zZpJIxj9Q;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$UYcxZJCzj26nxqdbH2zZpJIxj9Q;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$-iRwKpnWZ9RkOyuLHq3rgZEAc_Q;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$-iRwKpnWZ9RkOyuLHq3rgZEAc_Q;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarRunnable:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$BCpY7bXB72MqPMEsSen97JuLdm8;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$BCpY7bXB72MqPMEsSen97JuLdm8;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideControllerRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$huHE5y4F-tvf8DUbBL5aHpwF05U;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$huHE5y4F-tvf8DUbBL5aHpwF05U;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    .line 102
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_controls_background:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_center_controls:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    .line 106
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_minimal_controls:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    .line 109
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    .line 112
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_time:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    .line 113
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    .line 116
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_basic_controls:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    .line 117
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_extra_controls:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    .line 118
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_extra_controls_scroll_view:I

    .line 119
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    .line 120
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_overflow_show:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    .line 121
    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_overflow_hide:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 123
    new-instance v3, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$RjmVXA8Deta5oTVje0UV654DFdY;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$RjmVXA8Deta5oTVje0UV654DFdY;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v2, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$RjmVXA8Deta5oTVje0UV654DFdY;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$RjmVXA8Deta5oTVje0UV654DFdY;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v1, 0x2

    .line 127
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 128
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    new-instance v3, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$Qcfhl7QFvR_DBa0mL9ibO_Wi5U8;

    invoke-direct {v3, p0, v0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$Qcfhl7QFvR_DBa0mL9ibO_Wi5U8;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    new-instance v3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$1;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 166
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    new-instance v4, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$WpTqWDOBXkeIo8mvTytZ6zlYDPw;

    invoke-direct {v4, p0, v0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$WpTqWDOBXkeIo8mvTytZ6zlYDPw;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 180
    new-instance v4, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;

    invoke-direct {v4, p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$2;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    sget v4, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_styled_bottom_bar_height:I

    .line 201
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sget v5, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_styled_progress_bar_height:I

    .line 202
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    .line 203
    sget v5, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_styled_bottom_bar_height:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 205
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    .line 206
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 207
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;

    invoke-direct {v8, p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$3;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    .line 224
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    const/4 v9, 0x0

    .line 225
    invoke-static {v9, v4, v8}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    .line 226
    invoke-static {v9, v4, v8}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 228
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    .line 229
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 230
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$4;

    invoke-direct {v8, p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$4;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    .line 247
    invoke-static {v4, v0, v8}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    .line 248
    invoke-static {v4, v0, v8}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 250
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    .line 251
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 252
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$5;

    invoke-direct {v8, p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$5;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    .line 269
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    .line 270
    invoke-static {v9, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    .line 271
    invoke-static {v9, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 273
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showMainBarAnimator:Landroid/animation/AnimatorSet;

    .line 274
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showMainBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 275
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showMainBarAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$6;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$6;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showMainBarAnimator:Landroid/animation/AnimatorSet;

    .line 288
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    .line 289
    invoke-static {v4, v9, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    .line 290
    invoke-static {v4, v9, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 292
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBarsAnimator:Landroid/animation/AnimatorSet;

    .line 293
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 294
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBarsAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$7;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$7;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 306
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBarsAnimator:Landroid/animation/AnimatorSet;

    .line 307
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    .line 308
    invoke-static {v0, v9, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    .line 309
    invoke-static {v0, v9, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 311
    new-array p1, v1, [F

    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    .line 312
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 313
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$mf9EDiGvogLt-IsO2JAIUBpWQdI;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$mf9EDiGvogLt-IsO2JAIUBpWQdI;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$8;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$8;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    new-array p1, v1, [F

    fill-array-data p1, :array_3

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    .line 335
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 336
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$s4cDJd1y-NHurHEBWnOtDP9-DtQ;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$s4cDJd1y-NHurHEBWnOtDP9-DtQ;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 338
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$9;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager$9;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setUxState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->needToShowBars:Z

    return p0
.end method

.method static synthetic access$502(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->needToShowBars:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Ljava/lang/Runnable;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBarsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private animateOverflow(F)V
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v1, p1

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 554
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    sub-float v2, v1, p1

    .line 558
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    sub-float/2addr v1, p1

    .line 561
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 715
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 716
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 717
    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 718
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 719
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private static getWidthWithMargins(Landroid/view/View;)I
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 702
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 703
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 704
    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 705
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 706
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private hideAllBars()V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private hideController()V
    .locals 1

    const/4 v0, 0x2

    .line 537
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setUxState(I)V

    return-void
.end method

.method private hideMainBar()V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private hideProgressBar()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic lambda$-iRwKpnWZ9RkOyuLHq3rgZEAc_Q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBar()V

    return-void
.end method

.method public static synthetic lambda$BCpY7bXB72MqPMEsSen97JuLdm8(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideController()V

    return-void
.end method

.method public static synthetic lambda$D962S0Sgh_Nmbz9XMrZDUSmm4Qg(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBars()V

    return-void
.end method

.method public static synthetic lambda$LD8Mf0Smr5zikGIMu3_5ZyeECx8(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->updateLayoutForSizeChange()V

    return-void
.end method

.method public static synthetic lambda$RjmVXA8Deta5oTVje0UV654DFdY(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onOverflowButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$UYcxZJCzj26nxqdbH2zZpJIxj9Q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBar()V

    return-void
.end method

.method public static synthetic lambda$ZbYmmwjYr8A9uDiiz4DJH5yG1DU(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBars()V

    return-void
.end method

.method public static synthetic lambda$_VJJspTuxLhVY46omeHbyICLerI(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayoutWidthChanged()V

    return-void
.end method

.method public static synthetic lambda$huHE5y4F-tvf8DUbBL5aHpwF05U(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private static ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    .line 541
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    const-string p0, "translationY"

    invoke-static {p2, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 478
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->useMinimalMode()Z

    move-result p3

    .line 479
    iget-boolean p5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eq p5, p3, :cond_0

    .line 480
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    .line 481
    new-instance p3, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$LD8Mf0Smr5zikGIMu3_5ZyeECx8;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$LD8Mf0Smr5zikGIMu3_5ZyeECx8;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 484
    :goto_0
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 485
    new-instance p2, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$_VJJspTuxLhVY46omeHbyICLerI;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlViewLayoutManager$_VJJspTuxLhVY46omeHbyICLerI;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private onLayoutWidthChanged()V
    .locals 9

    .line 633
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 638
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 639
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 640
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 644
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 645
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 646
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 647
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 648
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    if-eqz v1, :cond_2

    const/16 v4, 0x8

    .line 651
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v1

    .line 657
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    .line 659
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 660
    invoke-static {v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-le v5, v0, :cond_7

    .line 665
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 666
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v5, v1

    .line 669
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v6, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    .line 672
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 673
    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v6, v8

    .line 674
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gt v6, v0, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 679
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 681
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 683
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    .line 684
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 689
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 690
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    .line 691
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 692
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_5
    return-void
.end method

.method private onOverflowButtonClick(Landroid/view/View;)V
    .locals 2

    .line 490
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$id;->exo_overflow_show:I

    if-ne v0, v1, :cond_0

    .line 492
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_overflow_hide:I

    if-ne p1, v0, :cond_1

    .line 494
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private postDelayedRunnable(Ljava/lang/Runnable;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 546
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setUxState(I)V
    .locals 3

    .line 453
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    .line 454
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_2

    .line 463
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->notifyOnVisibilityChange()V

    :cond_2
    return-void
.end method

.method private shouldHideInMinimalMode(Landroid/view/View;)Z
    .locals 1

    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 623
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_bottom_bar:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew_with_amount:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd_with_amount:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private showAllBars()V
    .locals 3

    .line 499
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 500
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setUxState(I)V

    .line 501
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    return-void

    .line 505
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 513
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->needToShowBars:Z

    goto :goto_0

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showMainBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 520
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    return-void
.end method

.method private updateLayoutForSizeChange()V
    .locals 5

    .line 592
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 593
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 597
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 598
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 600
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_styled_progress_margin_bottom:I

    .line 601
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 602
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 603
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    instance-of v3, v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    if-eqz v3, :cond_5

    .line 605
    check-cast v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    .line 606
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 607
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->hideScrubber(Z)V

    goto :goto_1

    .line 608
    :cond_3
    iget v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    if-ne v3, v4, :cond_4

    .line 609
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->hideScrubber(Z)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    if-eq v3, v1, :cond_5

    .line 611
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->showScrubber()V

    .line 616
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 617
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v4, :cond_6

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shouldHideInMinimalMode(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private useMinimalMode()Z
    .locals 6

    .line 566
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 567
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 568
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 569
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 570
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 571
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 572
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 573
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 575
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    .line 576
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 578
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sub-int/2addr v2, v3

    .line 581
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    .line 584
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    invoke-static {v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 582
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 585
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    .line 586
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    if-le v0, v2, :cond_1

    if-gt v1, v3, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    return v4
.end method


# virtual methods
.method public getShowButton(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hide()V
    .locals 2

    .line 366
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 370
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v0, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideController()V

    goto :goto_0

    .line 372
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 373
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBar()V

    goto :goto_0

    .line 375
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBars()V

    :cond_3
    :goto_0
    return-void
.end method

.method public hideImmediately()V
    .locals 2

    .line 380
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 384
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideController()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isAnimationEnabled()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    return v0
.end method

.method public isFullyVisible()Z
    .locals 1

    .line 428
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$StyledPlayerControlViewLayoutManager(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 131
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$1$StyledPlayerControlViewLayoutManager(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 169
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 177
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$2$StyledPlayerControlViewLayoutManager(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 314
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animateOverflow(F)V

    return-void
.end method

.method public synthetic lambda$new$3$StyledPlayerControlViewLayoutManager(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 337
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animateOverflow(F)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public removeHideCallbacks()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideAllBarsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetHideCallbacks()V
    .locals 4

    .line 396
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-lez v0, :cond_3

    .line 402
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideControllerRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 404
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->uxState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideMainBarRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->animationEnabled:Z

    return-void
.end method

.method public setShowButton(Landroid/view/View;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/16 p2, 0x8

    .line 436
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 440
    :cond_1
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shouldHideInMinimalMode(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 441
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 443
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 445
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateAll()V

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->styledPlayerControlView:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->requestPlayPauseFocus()V

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->showAllBars()V

    return-void
.end method
