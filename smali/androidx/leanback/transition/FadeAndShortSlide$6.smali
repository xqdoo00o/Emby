.class Landroidx/leanback/transition/FadeAndShortSlide$6;
.super Landroidx/leanback/transition/FadeAndShortSlide$CalculateSlide;
.source "FadeAndShortSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/transition/FadeAndShortSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/transition/FadeAndShortSlide;


# direct methods
.method constructor <init>(Landroidx/leanback/transition/FadeAndShortSlide;)V
    .locals 0

    .line 139
    iput-object p1, p0, Landroidx/leanback/transition/FadeAndShortSlide$6;->this$0:Landroidx/leanback/transition/FadeAndShortSlide;

    invoke-direct {p0}, Landroidx/leanback/transition/FadeAndShortSlide$CalculateSlide;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneY(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 3

    const/4 v0, 0x1

    .line 142
    aget v1, p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 143
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 144
    iget-object v2, p0, Landroidx/leanback/transition/FadeAndShortSlide$6;->this$0:Landroidx/leanback/transition/FadeAndShortSlide;

    invoke-virtual {v2}, Landroidx/leanback/transition/FadeAndShortSlide;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_0

    .line 145
    aget p4, p4, v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    :goto_0
    if-ge v1, p4, :cond_1

    .line 148
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getVerticalDistance(Landroid/view/ViewGroup;)F

    move-result p1

    sub-float/2addr p3, p1

    return p3

    .line 150
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getVerticalDistance(Landroid/view/ViewGroup;)F

    move-result p1

    add-float/2addr p3, p1

    return p3
.end method
