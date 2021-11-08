.class public final Lis/xyz/mpv/TouchGestures;
.super Ljava/lang/Object;
.source "TouchGestures.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lis/xyz/mpv/TouchGestures$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001#B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u0011H\u0002J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0003H\u0002R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000f\u00a8\u0006$"
    }
    d2 = {
        "Lis/xyz/mpv/TouchGestures;",
        "",
        "width",
        "",
        "height",
        "observer",
        "Lis/xyz/mpv/TouchGesturesObserver;",
        "(FFLis/xyz/mpv/TouchGesturesObserver;)V",
        "CONTROL_BRIGHT_MAX",
        "CONTROL_SEEK_MAX",
        "CONTROL_VOLUME_MAX",
        "DEADZONE",
        "",
        "TRIGGER_RATE",
        "getHeight",
        "()F",
        "initialPos",
        "Landroid/graphics/PointF;",
        "lastPos",
        "getObserver",
        "()Lis/xyz/mpv/TouchGesturesObserver;",
        "state",
        "Lis/xyz/mpv/TouchGestures$State;",
        "trigger",
        "getWidth",
        "onTouchEvent",
        "",
        "e",
        "Landroid/view/MotionEvent;",
        "processMovement",
        "p",
        "sendPropertyChange",
        "",
        "Lis/xyz/mpv/PropertyChange;",
        "diff",
        "State",
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
.field private final CONTROL_BRIGHT_MAX:F

.field private final CONTROL_SEEK_MAX:F

.field private final CONTROL_VOLUME_MAX:F

.field private final DEADZONE:I

.field private final TRIGGER_RATE:I

.field private final height:F

.field private initialPos:Landroid/graphics/PointF;

.field private lastPos:Landroid/graphics/PointF;

.field private final observer:Lis/xyz/mpv/TouchGesturesObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private state:Lis/xyz/mpv/TouchGestures$State;

.field private trigger:F

.field private final width:F


# direct methods
.method public constructor <init>(FFLis/xyz/mpv/TouchGesturesObserver;)V
    .locals 1
    .param p3    # Lis/xyz/mpv/TouchGesturesObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "observer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lis/xyz/mpv/TouchGestures;->width:F

    iput p2, p0, Lis/xyz/mpv/TouchGestures;->height:F

    iput-object p3, p0, Lis/xyz/mpv/TouchGestures;->observer:Lis/xyz/mpv/TouchGesturesObserver;

    .line 29
    sget-object p1, Lis/xyz/mpv/TouchGestures$State;->Up:Lis/xyz/mpv/TouchGestures$State;

    iput-object p1, p0, Lis/xyz/mpv/TouchGestures;->state:Lis/xyz/mpv/TouchGestures$State;

    .line 31
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lis/xyz/mpv/TouchGestures;->initialPos:Landroid/graphics/PointF;

    .line 33
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lis/xyz/mpv/TouchGestures;->lastPos:Landroid/graphics/PointF;

    const/16 p1, 0x1e

    .line 38
    iput p1, p0, Lis/xyz/mpv/TouchGestures;->TRIGGER_RATE:I

    const/high16 p1, 0x43160000    # 150.0f

    .line 41
    iput p1, p0, Lis/xyz/mpv/TouchGestures;->CONTROL_SEEK_MAX:F

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 43
    iput p1, p0, Lis/xyz/mpv/TouchGestures;->CONTROL_VOLUME_MAX:F

    .line 46
    iput p1, p0, Lis/xyz/mpv/TouchGestures;->CONTROL_BRIGHT_MAX:F

    const/4 p1, 0x5

    .line 50
    iput p1, p0, Lis/xyz/mpv/TouchGestures;->DEADZONE:I

    .line 53
    iget p1, p0, Lis/xyz/mpv/TouchGestures;->width:F

    iget p2, p0, Lis/xyz/mpv/TouchGestures;->height:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget p2, p0, Lis/xyz/mpv/TouchGestures;->TRIGGER_RATE:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lis/xyz/mpv/TouchGestures;->trigger:F

    return-void
.end method

.method private final processMovement(Landroid/graphics/PointF;)Z
    .locals 6

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lis/xyz/mpv/TouchGestures;->lastPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lis/xyz/mpv/TouchGestures;->lastPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    iget v1, p0, Lis/xyz/mpv/TouchGestures;->trigger:F

    const/4 v2, 0x3

    int-to-float v3, v2

    div-float/2addr v1, v3

    const/4 v3, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return v3

    .line 61
    :cond_0
    iget-object v0, p0, Lis/xyz/mpv/TouchGestures;->lastPos:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 63
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lis/xyz/mpv/TouchGestures;->initialPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 64
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lis/xyz/mpv/TouchGestures;->initialPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    .line 66
    iget-object v1, p0, Lis/xyz/mpv/TouchGestures;->state:Lis/xyz/mpv/TouchGestures$State;

    sget-object v4, Lis/xyz/mpv/TouchGestures$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lis/xyz/mpv/TouchGestures$State;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    sget-object v0, Lis/xyz/mpv/PropertyChange;->Bright:Lis/xyz/mpv/PropertyChange;

    iget v1, p0, Lis/xyz/mpv/TouchGestures;->CONTROL_BRIGHT_MAX:F

    neg-float v1, v1

    mul-float v1, v1, p1

    iget p1, p0, Lis/xyz/mpv/TouchGestures;->height:F

    div-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lis/xyz/mpv/TouchGestures;->sendPropertyChange(Lis/xyz/mpv/PropertyChange;F)V

    goto :goto_1

    .line 86
    :cond_2
    sget-object v0, Lis/xyz/mpv/PropertyChange;->Volume:Lis/xyz/mpv/PropertyChange;

    iget v1, p0, Lis/xyz/mpv/TouchGestures;->CONTROL_VOLUME_MAX:F

    neg-float v1, v1

    mul-float v1, v1, p1

    iget p1, p0, Lis/xyz/mpv/TouchGestures;->height:F

    div-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lis/xyz/mpv/TouchGestures;->sendPropertyChange(Lis/xyz/mpv/PropertyChange;F)V

    goto :goto_1

    .line 84
    :cond_3
    sget-object p1, Lis/xyz/mpv/PropertyChange;->Seek:Lis/xyz/mpv/PropertyChange;

    iget v1, p0, Lis/xyz/mpv/TouchGestures;->CONTROL_SEEK_MAX:F

    mul-float v1, v1, v0

    iget v0, p0, Lis/xyz/mpv/TouchGestures;->width:F

    div-float/2addr v1, v0

    invoke-direct {p0, p1, v1}, Lis/xyz/mpv/TouchGestures;->sendPropertyChange(Lis/xyz/mpv/PropertyChange;F)V

    goto :goto_1

    .line 70
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lis/xyz/mpv/TouchGestures;->trigger:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 71
    sget-object p1, Lis/xyz/mpv/TouchGestures$State;->ControlSeek:Lis/xyz/mpv/TouchGestures$State;

    iput-object p1, p0, Lis/xyz/mpv/TouchGestures;->state:Lis/xyz/mpv/TouchGestures$State;

    goto :goto_0

    .line 72
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lis/xyz/mpv/TouchGestures;->trigger:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 74
    iget-object p1, p0, Lis/xyz/mpv/TouchGestures;->initialPos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lis/xyz/mpv/TouchGestures;->width:F

    int-to-float v1, v5

    div-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 75
    sget-object p1, Lis/xyz/mpv/TouchGestures$State;->ControlVolume:Lis/xyz/mpv/TouchGestures$State;

    iput-object p1, p0, Lis/xyz/mpv/TouchGestures;->state:Lis/xyz/mpv/TouchGestures$State;

    goto :goto_0

    .line 77
    :cond_6
    sget-object p1, Lis/xyz/mpv/TouchGestures$State;->ControlBright:Lis/xyz/mpv/TouchGestures$State;

    iput-object p1, p0, Lis/xyz/mpv/TouchGestures;->state:Lis/xyz/mpv/TouchGestures$State;

    .line 80
    :cond_7
    :goto_0
    iget-object p1, p0, Lis/xyz/mpv/TouchGestures;->state:Lis/xyz/mpv/TouchGestures$State;

    sget-object v0, Lis/xyz/mpv/TouchGestures$State;->Down:Lis/xyz/mpv/TouchGestures$State;

    if-eq p1, v0, :cond_8

    .line 81
    sget-object p1, Lis/xyz/mpv/PropertyChange;->Init:Lis/xyz/mpv/PropertyChange;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lis/xyz/mpv/TouchGestures;->sendPropertyChange(Lis/xyz/mpv/PropertyChange;F)V

    .line 90
    :cond_8
    :goto_1
    iget-object p1, p0, Lis/xyz/mpv/TouchGestures;->state:Lis/xyz/mpv/TouchGestures$State;

    sget-object v0, Lis/xyz/mpv/TouchGestures$State;->Up:Lis/xyz/mpv/TouchGestures$State;

    if-eq p1, v0, :cond_9

    iget-object p1, p0, Lis/xyz/mpv/TouchGestures;->state:Lis/xyz/mpv/TouchGestures$State;

    sget-object v0, Lis/xyz/mpv/TouchGestures$State;->Down:Lis/xyz/mpv/TouchGestures$State;

    if-eq p1, v0, :cond_9

    const/4 v3, 0x1

    :cond_9
    return v3
.end method

.method private final sendPropertyChange(Lis/xyz/mpv/PropertyChange;F)V
    .locals 1

    .line 94
    iget-object v0, p0, Lis/xyz/mpv/TouchGestures;->observer:Lis/xyz/mpv/TouchGesturesObserver;

    invoke-interface {v0, p1, p2}, Lis/xyz/mpv/TouchGesturesObserver;->onPropertyChange(Lis/xyz/mpv/PropertyChange;F)V

    return-void
.end method


# virtual methods
.method public final getHeight()F
    .locals 1

    .line 19
    iget v0, p0, Lis/xyz/mpv/TouchGestures;->height:F

    return v0
.end method

.method public final getObserver()Lis/xyz/mpv/TouchGesturesObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-object v0, p0, Lis/xyz/mpv/TouchGestures;->observer:Lis/xyz/mpv/TouchGesturesObserver;

    return-object v0
.end method

.method public final getWidth()F
    .locals 1

    .line 19
    iget v0, p0, Lis/xyz/mpv/TouchGestures;->width:F

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lis/xyz/mpv/TouchGestures;->processMovement(Landroid/graphics/PointF;)Z

    move-result v1

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lis/xyz/mpv/TouchGestures;->processMovement(Landroid/graphics/PointF;)Z

    move-result p1

    .line 102
    sget-object v0, Lis/xyz/mpv/PropertyChange;->Finalize:Lis/xyz/mpv/PropertyChange;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lis/xyz/mpv/TouchGestures;->sendPropertyChange(Lis/xyz/mpv/PropertyChange;F)V

    .line 103
    sget-object v0, Lis/xyz/mpv/TouchGestures$State;->Up:Lis/xyz/mpv/TouchGestures$State;

    iput-object v0, p0, Lis/xyz/mpv/TouchGestures;->state:Lis/xyz/mpv/TouchGestures$State;

    return p1

    .line 108
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lis/xyz/mpv/TouchGestures;->height:F

    iget v4, p0, Lis/xyz/mpv/TouchGestures;->DEADZONE:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    const/16 v4, 0x64

    int-to-float v5, v4

    div-float/2addr v3, v5

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lis/xyz/mpv/TouchGestures;->height:F

    iget v6, p0, Lis/xyz/mpv/TouchGestures;->DEADZONE:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float v3, v3, v4

    div-float/2addr v3, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    goto :goto_1

    .line 110
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lis/xyz/mpv/TouchGestures;->initialPos:Landroid/graphics/PointF;

    .line 111
    iget-object p1, p0, Lis/xyz/mpv/TouchGestures;->lastPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lis/xyz/mpv/TouchGestures;->initialPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 112
    sget-object p1, Lis/xyz/mpv/TouchGestures$State;->Down:Lis/xyz/mpv/TouchGestures$State;

    iput-object p1, p0, Lis/xyz/mpv/TouchGestures;->state:Lis/xyz/mpv/TouchGestures$State;

    :goto_0
    return v1

    :cond_4
    :goto_1
    return v2
.end method
