.class public final Lis/xyz/mpv/MPVView;
.super Landroid/view/SurfaceView;
.source "MPVView.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lis/xyz/mpv/MPVView$Track;,
        Lis/xyz/mpv/MPVView$TrackDelegate;,
        Lis/xyz/mpv/MPVView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMPVView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MPVView.kt\nis/xyz/mpv/MPVView\n*L\n1#1,353:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0006\n\u0002\u0008\u000f\n\u0002\u0010$\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 m2\u00020\u00012\u00020\u0002:\u0003mnoB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020RJ\u0006\u0010S\u001a\u00020PJ\u0006\u0010T\u001a\u00020PJ\u0006\u0010U\u001a\u00020PJ\u0006\u0010V\u001a\u00020PJ\u0006\u0010W\u001a\u00020PJ\u0006\u0010X\u001a\u00020PJ\u0008\u0010Y\u001a\u00020PH\u0003J\u000e\u0010Z\u001a\u00020P2\u0006\u0010[\u001a\u00020\u0015J\u0006\u0010\\\u001a\u00020PJ\u0008\u0010]\u001a\u00020PH\u0002J\u000e\u0010^\u001a\u00020*2\u0006\u0010_\u001a\u00020`J\u0006\u0010a\u001a\u00020PJ\u0006\u0010b\u001a\u00020PJ\u000e\u0010c\u001a\u00020P2\u0006\u0010\"\u001a\u00020\u0015J\u000e\u0010d\u001a\u00020P2\u0006\u0010Q\u001a\u00020RJ(\u0010e\u001a\u00020P2\u0006\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020\t2\u0006\u0010i\u001a\u00020\t2\u0006\u0010j\u001a\u00020\tH\u0016J\u0010\u0010k\u001a\u00020P2\u0006\u0010f\u001a\u00020gH\u0016J\u0010\u0010l\u001a\u00020P2\u0006\u0010f\u001a\u00020gH\u0016R+\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0013R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0017R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0013R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0013R\u0013\u0010 \u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0017R\u0010\u0010\"\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010#\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0017R\u0013\u0010%\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0017R\u0013\u0010\'\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0013R\u0013\u0010)\u001a\u0004\u0018\u00010*8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R(\u0010-\u001a\u0004\u0018\u00010*2\u0008\u0010-\u001a\u0004\u0018\u00010*8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010,\"\u0004\u0008/\u00100R(\u00103\u001a\u0004\u0018\u0001022\u0008\u00101\u001a\u0004\u0018\u0001028F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R+\u00108\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008;\u0010\u0010\u001a\u0004\u00089\u0010\u000c\"\u0004\u0008:\u0010\u000eR(\u0010=\u001a\u0004\u0018\u00010\t2\u0008\u0010<\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008>\u0010\u0013\"\u0004\u0008?\u0010@R,\u0010A\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D0C0BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u0013\u0010I\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010\u0017R\u0013\u0010K\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010\u0013R\u0013\u0010M\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010\u0013\u00a8\u0006p"
    }
    d2 = {
        "Lis/xyz/mpv/MPVView;",
        "Landroid/view/SurfaceView;",
        "Landroid/view/SurfaceHolder$Callback;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "<set-?>",
        "",
        "aid",
        "getAid",
        "()I",
        "setAid",
        "(I)V",
        "aid$delegate",
        "Lis/xyz/mpv/MPVView$TrackDelegate;",
        "audioChannels",
        "getAudioChannels",
        "()Ljava/lang/Integer;",
        "audioCodec",
        "",
        "getAudioCodec",
        "()Ljava/lang/String;",
        "audioSampleRate",
        "getAudioSampleRate",
        "avsync",
        "getAvsync",
        "decoderFrameDropCount",
        "getDecoderFrameDropCount",
        "duration",
        "getDuration",
        "estimatedVfFps",
        "getEstimatedVfFps",
        "filePath",
        "filename",
        "getFilename",
        "fps",
        "getFps",
        "frameDropCount",
        "getFrameDropCount",
        "hwdecActive",
        "",
        "getHwdecActive",
        "()Ljava/lang/Boolean;",
        "paused",
        "getPaused",
        "setPaused",
        "(Ljava/lang/Boolean;)V",
        "speed",
        "",
        "playbackSpeed",
        "getPlaybackSpeed",
        "()Ljava/lang/Double;",
        "setPlaybackSpeed",
        "(Ljava/lang/Double;)V",
        "sid",
        "getSid",
        "setSid",
        "sid$delegate",
        "progress",
        "timePos",
        "getTimePos",
        "setTimePos",
        "(Ljava/lang/Integer;)V",
        "tracks",
        "",
        "",
        "Lis/xyz/mpv/MPVView$Track;",
        "getTracks",
        "()Ljava/util/Map;",
        "setTracks",
        "(Ljava/util/Map;)V",
        "videoCodec",
        "getVideoCodec",
        "videoH",
        "getVideoH",
        "videoW",
        "getVideoW",
        "addObserver",
        "",
        "o",
        "Lis/xyz/mpv/EventObserver;",
        "cycleAudio",
        "cycleHwdec",
        "cyclePause",
        "cycleSpeed",
        "cycleSub",
        "destroy",
        "initOptions",
        "initialize",
        "configDir",
        "loadTracks",
        "observeProperties",
        "onKey",
        "event",
        "Landroid/view/KeyEvent;",
        "onPause",
        "onResume",
        "playFile",
        "removeObserver",
        "surfaceChanged",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "format",
        "width",
        "height",
        "surfaceCreated",
        "surfaceDestroyed",
        "Companion",
        "Track",
        "TrackDelegate",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lis/xyz/mpv/MPVView$Companion;

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "mpv"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final aid$delegate:Lis/xyz/mpv/MPVView$TrackDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private filePath:Ljava/lang/String;

.field private final sid$delegate:Lis/xyz/mpv/MPVView$TrackDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tracks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lis/xyz/mpv/MPVView$Track;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lis/xyz/mpv/MPVView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sid"

    const-string v4, "getSid()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lis/xyz/mpv/MPVView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "aid"

    const-string v4, "getAid()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lis/xyz/mpv/MPVView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lis/xyz/mpv/MPVView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lis/xyz/mpv/MPVView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lis/xyz/mpv/MPVView;->Companion:Lis/xyz/mpv/MPVView$Companion;

    const-string v0, "mpv"

    .line 350
    sput-object v0, Lis/xyz/mpv/MPVView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 213
    new-array p1, p1, [Lkotlin/Pair;

    .line 214
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "audio"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 215
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "video"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 216
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "sub"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    .line 213
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lis/xyz/mpv/MPVView;->tracks:Ljava/util/Map;

    .line 313
    new-instance p1, Lis/xyz/mpv/MPVView$TrackDelegate;

    invoke-direct {p1}, Lis/xyz/mpv/MPVView$TrackDelegate;-><init>()V

    iput-object p1, p0, Lis/xyz/mpv/MPVView;->sid$delegate:Lis/xyz/mpv/MPVView$TrackDelegate;

    .line 314
    new-instance p1, Lis/xyz/mpv/MPVView$TrackDelegate;

    invoke-direct {p1}, Lis/xyz/mpv/MPVView$TrackDelegate;-><init>()V

    iput-object p1, p0, Lis/xyz/mpv/MPVView;->aid$delegate:Lis/xyz/mpv/MPVView$TrackDelegate;

    return-void
.end method

.method private final initOptions()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "hardware_decoding"

    .line 36
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "no"

    if-eqz v2, :cond_0

    const-string v2, "mediacodec-copy"

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 42
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    .line 43
    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Landroid/view/WindowManager;

    .line 44
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    const-string v5, "disp"

    .line 45
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v5

    const-string v6, "disp.mode"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    .line 47
    sget-object v6, Lis/xyz/mpv/MPVView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Display "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " reports FPS of "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, "display-fps"

    invoke-static {v5, v4}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 43
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2
    sget-object v4, Lis/xyz/mpv/MPVView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android version too old, disabling refresh rate functionality "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " < 23)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v4, 0x3

    .line 55
    invoke-static {v4}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v5

    .line 56
    sget-object v6, Lis/xyz/mpv/MPVView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device reports optimal sample rate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "audio-samplerate"

    invoke-static {v6, v5}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xb

    .line 63
    new-array v5, v5, [Lis/xyz/mpv/MPVView$initOptions$Property;

    .line 64
    new-instance v6, Lis/xyz/mpv/MPVView$initOptions$Property;

    const-string v7, "default_audio_language"

    const-string v8, "alang"

    invoke-direct {v6, v7, v8}, Lis/xyz/mpv/MPVView$initOptions$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 65
    new-instance v6, Lis/xyz/mpv/MPVView$initOptions$Property;

    const-string v8, "default_subtitle_language"

    const-string v9, "slang"

    invoke-direct {v6, v8, v9}, Lis/xyz/mpv/MPVView$initOptions$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v1

    .line 68
    new-instance v6, Lis/xyz/mpv/MPVView$initOptions$Property;

    const-string v8, "video_scale"

    const-string v9, "scale"

    invoke-direct {v6, v8, v9}, Lis/xyz/mpv/MPVView$initOptions$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x2

    aput-object v6, v5, v8

    .line 69
    new-instance v6, Lis/xyz/mpv/MPVView$initOptions$Property;

    const-string v9, "video_scale_param1"

    const-string v10, "scale-param1"

    invoke-direct {v6, v9, v10}, Lis/xyz/mpv/MPVView$initOptions$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v4

    const/4 v4, 0x4

    .line 70
    new-instance v6, Lis/xyz/mpv/MPVView$initOptions$Property;

    const-string v9, "video_scale_param2"

    const-string v10, "scale-param2"

    invoke-direct {v6, v9, v10}, Lis/xyz/mpv/MPVView$initOptions$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v4

    const/4 v4, 0x5

    .line 72
    new-instance v6, Lis/xyz/mpv/MPVView$initOptions$Property;

    const-string v9, "video_downscale"

    const-string v10, "dscale"

    invoke-direct {v6, v9, v10}, Lis/xyz/mpv/MPVView$initOptions$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v4

    const/4 v4, 0x6

    .line 73
    new-instance v6, Lis/xyz/mpv/MPVView$initOptions$Property;

    const-string v9, "video_downscale_param1"

    const-string v10, "dscale-param1"

    invoke-direct {v6, v9, v10}, Lis/xyz/mpv/MPVView$initOptions$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v4

    const/4 v4, 0x7

    .line 74
    new-instance v6, Lis/xyz/mpv/MPVView$initOptions$Property;

    const-string v9, "video_downscale_param2"

    const-string v10, "dscale-param2"

    invoke-direct {v6, v9, v10}, Lis/xyz/mpv/MPVView$initOptions$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v4

    const/16 v4, 0x8

    .line 76
    new-instance v6, Lis/xyz/mpv/MPVView$initOptions$Property;

    const-string v9, "video_tscale"

    const-string v10, "tscale"

    invoke-direct {v6, v9, v10}, Lis/xyz/mpv/MPVView$initOptions$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v4

    const/16 v4, 0x9

    .line 77
    new-instance v6, Lis/xyz/mpv/MPVView$initOptions$Property;

    const-string v9, "video_tscale_param1"

    const-string v10, "tscale-param1"

    invoke-direct {v6, v9, v10}, Lis/xyz/mpv/MPVView$initOptions$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v4

    const/16 v4, 0xa

    .line 78
    new-instance v6, Lis/xyz/mpv/MPVView$initOptions$Property;

    const-string v9, "video_tscale_param2"

    const-string v10, "tscale-param2"

    invoke-direct {v6, v9, v10}, Lis/xyz/mpv/MPVView$initOptions$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v4

    .line 81
    array-length v4, v5

    const/4 v6, 0x0

    :goto_2
    const-string v9, ""

    if-ge v6, v4, :cond_6

    aget-object v10, v5, v6

    invoke-virtual {v10}, Lis/xyz/mpv/MPVView$initOptions$Property;->component1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lis/xyz/mpv/MPVView$initOptions$Property;->component2()Ljava/lang/String;

    move-result-object v10

    .line 82
    invoke-interface {v0, v11, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 83
    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_4

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v11, 0x1

    :goto_4
    if-nez v11, :cond_5

    .line 84
    invoke-static {v10, v9}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    const-string v1, "video_debanding"

    .line 87
    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "gradfun"

    .line 88
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "gpu"

    const-string v6, "yes"

    if-eqz v4, :cond_7

    const-string v1, "vf"

    const-string v4, "gradfun=radius=12"

    .line 90
    invoke-static {v1, v4}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 91
    :cond_7
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "deband"

    .line 92
    invoke-static {v1, v6}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d0061

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "video_sync"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "video-sync"

    .line 96
    invoke-static {v4, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "video_interpolation"

    .line 98
    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "vidsync"

    .line 99
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v9, "display-"

    invoke-static {v1, v9, v7, v8, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 100
    sget-object v1, Lis/xyz/mpv/MPVView;->TAG:Ljava/lang/String;

    const-string v4, "Interpolation enabled but video-sync not set to a \'display\' mode, this won\'t work!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v1, "interpolation"

    .line 101
    invoke-static {v1, v6}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v1, "gpudebug"

    .line 104
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "gpu-debug"

    .line 105
    invoke-static {v1, v6}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v1, "video_fastdecode"

    .line 107
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "vd-lavc-fast"

    .line 108
    invoke-static {v0, v6}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "vd-lavc-skiploopfilter"

    const-string v1, "nonkey"

    .line 109
    invoke-static {v0, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v0, "vo"

    .line 114
    invoke-static {v0, v5}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gpu-context"

    const-string v1, "android"

    .line 115
    invoke-static {v0, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hwdec"

    .line 116
    invoke-static {v0, v2}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hwdec-codecs"

    const-string v1, "h264,hevc,mpeg4,mpeg2video,vp8,vp9"

    .line 117
    invoke-static {v0, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ao"

    const-string v1, "opensles"

    .line 118
    invoke-static {v0, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tls-verify"

    .line 119
    invoke-static {v0, v6}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "this.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "this.context.filesDir"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cacert.pem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tls-ca-file"

    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "input-default-bindings"

    .line 121
    invoke-static {v0, v6}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "33554432"

    const-string v1, "demuxer-max-bytes"

    .line 123
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "demuxer-max-back-bytes"

    .line 124
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "save-position-on-quit"

    .line 125
    invoke-static {v0, v3}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final observeProperties()V
    .locals 6

    const/4 v0, 0x5

    .line 193
    new-array v0, v0, [Lis/xyz/mpv/MPVView$observeProperties$Property;

    .line 194
    new-instance v1, Lis/xyz/mpv/MPVView$observeProperties$Property;

    const/4 v2, 0x4

    const-string v3, "time-pos"

    invoke-direct {v1, v3, v2}, Lis/xyz/mpv/MPVView$observeProperties$Property;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 195
    new-instance v1, Lis/xyz/mpv/MPVView$observeProperties$Property;

    const-string v4, "duration"

    invoke-direct {v1, v4, v2}, Lis/xyz/mpv/MPVView$observeProperties$Property;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 196
    new-instance v1, Lis/xyz/mpv/MPVView$observeProperties$Property;

    const/4 v4, 0x3

    const-string v5, "pause"

    invoke-direct {v1, v5, v4}, Lis/xyz/mpv/MPVView$observeProperties$Property;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x2

    aput-object v1, v0, v5

    .line 197
    new-instance v1, Lis/xyz/mpv/MPVView$observeProperties$Property;

    const-string v5, "track-list"

    invoke-direct {v1, v5, v3}, Lis/xyz/mpv/MPVView$observeProperties$Property;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    .line 198
    new-instance v1, Lis/xyz/mpv/MPVView$observeProperties$Property;

    const-string v4, "video-params"

    invoke-direct {v1, v4, v3}, Lis/xyz/mpv/MPVView$observeProperties$Property;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    .line 201
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lis/xyz/mpv/MPVView$observeProperties$Property;->component1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lis/xyz/mpv/MPVView$observeProperties$Property;->component2()I

    move-result v2

    .line 202
    invoke-static {v4, v2}, Lis/xyz/mpv/MPVLib;->observeProperty(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lis/xyz/mpv/MPVView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lis/xyz/mpv/MPVView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lis/xyz/mpv/MPVView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lis/xyz/mpv/MPVView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lis/xyz/mpv/MPVView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addObserver(Lis/xyz/mpv/EventObserver;)V
    .locals 1
    .param p1    # Lis/xyz/mpv/EventObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->addObserver(Lis/xyz/mpv/EventObserver;)V

    return-void
.end method

.method public final cycleAudio()V
    .locals 2

    const-string v0, "cycle"

    const-string v1, "audio"

    .line 319
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    return-void
.end method

.method public final cycleHwdec()V
    .locals 2

    .line 321
    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getHwdecActive()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "no"

    goto :goto_0

    :cond_1
    const-string v0, "mediacodec-copy"

    :goto_0
    const-string v1, "hwdec"

    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final cyclePause()V
    .locals 2

    const-string v0, "cycle"

    const-string v1, "pause"

    .line 318
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    return-void
.end method

.method public final cycleSpeed()V
    .locals 5

    const/4 v0, 0x7

    .line 324
    new-array v0, v0, [Ljava/lang/Double;

    const-wide v1, 0x3fb999999999999aL    # 0.1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 325
    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getPlaybackSpeed()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v2

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVView;->setPlaybackSpeed(Ljava/lang/Double;)V

    return-void
.end method

.method public final cycleSub()V
    .locals 2

    const-string v0, "cycle"

    const-string v1, "sub"

    .line 320
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 151
    invoke-static {}, Lis/xyz/mpv/MPVLib;->destroy()V

    return-void
.end method

.method public final getAid()I
    .locals 3

    iget-object v0, p0, Lis/xyz/mpv/MPVView;->aid$delegate:Lis/xyz/mpv/MPVView$TrackDelegate;

    sget-object v1, Lis/xyz/mpv/MPVView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lis/xyz/mpv/MPVView$TrackDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)I

    move-result v0

    return v0
.end method

.method public final getAudioChannels()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "audio-params/channel-count"

    .line 297
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getAudioCodec()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "audio-codec"

    .line 291
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAudioSampleRate()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "audio-params/samplerate"

    .line 294
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getAvsync()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "avsync"

    .line 267
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDecoderFrameDropCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "decoder-frame-drop-count"

    .line 270
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getDuration()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "duration"

    .line 250
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getEstimatedVfFps()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "estimated-vf-fps"

    .line 279
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "filename"

    .line 264
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFps()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "fps"

    .line 276
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFrameDropCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "frame-drop-count"

    .line 273
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getHwdecActive()Ljava/lang/Boolean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "hwdec-current"

    .line 257
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getPaused()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pause"

    .line 246
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaybackSpeed()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "speed"

    .line 260
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getSid()I
    .locals 3

    iget-object v0, p0, Lis/xyz/mpv/MPVView;->sid$delegate:Lis/xyz/mpv/MPVView$TrackDelegate;

    sget-object v1, Lis/xyz/mpv/MPVView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lis/xyz/mpv/MPVView$TrackDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)I

    move-result v0

    return v0
.end method

.method public final getTimePos()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "time-pos"

    .line 253
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getTracks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lis/xyz/mpv/MPVView$Track;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 213
    iget-object v0, p0, Lis/xyz/mpv/MPVView;->tracks:Ljava/util/Map;

    return-object v0
.end method

.method public final getVideoCodec()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "video-codec"

    .line 288
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoH()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "video-params/h"

    .line 285
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoW()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "video-params/w"

    .line 282
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final initialize(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "configDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 19
    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->create(Landroid/content/Context;)V

    const-string v0, "config"

    const-string v1, "yes"

    .line 20
    invoke-static {v0, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "config-dir"

    .line 21
    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lis/xyz/mpv/MPVLib;->init()V

    .line 23
    invoke-direct {p0}, Lis/xyz/mpv/MPVView;->initOptions()V

    .line 24
    invoke-direct {p0}, Lis/xyz/mpv/MPVView;->observeProperties()V

    return-void
.end method

.method public final loadTracks()V
    .locals 8

    .line 219
    iget-object v0, p0, Lis/xyz/mpv/MPVView;->tracks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lis/xyz/mpv/MPVView;->tracks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 222
    iget-object v2, p0, Lis/xyz/mpv/MPVView;->tracks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v1, Ljava/util/List;

    new-instance v2, Lis/xyz/mpv/MPVView$Track;

    const/4 v3, -0x1

    const-string v4, "None"

    invoke-direct {v2, v3, v4}, Lis/xyz/mpv/MPVView$Track;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "track-list/count"

    .line 224
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_9

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track-list/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/type"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 227
    :cond_4
    iget-object v4, p0, Lis/xyz/mpv/MPVView;->tracks:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 228
    sget-object v3, Lis/xyz/mpv/MPVView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unknown track type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 231
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/lang"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    const-string v4, "unk"

    .line 232
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/id"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 233
    new-instance v5, Lis/xyz/mpv/MPVView$Track;

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-direct {v5, v3, v4}, Lis/xyz/mpv/MPVView$Track;-><init>(ILjava/lang/String;)V

    .line 237
    iget-object v3, p0, Lis/xyz/mpv/MPVView;->tracks:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public final onKey(Landroid/view/KeyEvent;)Z
    .locals 14
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 160
    :cond_1
    sget-object v0, Lis/xyz/mpv/KeyMapping;->map:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_5

    .line 163
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-nez v0, :cond_3

    .line 164
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 165
    sget-object v0, Lis/xyz/mpv/MPVView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unmapped non-printable key "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    .line 169
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    const/high16 v3, -0x80000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_4

    return v2

    :cond_4
    int-to-char v0, v0

    .line 172
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_6

    return v4

    .line 178
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 179
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "shift"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 180
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "ctrl"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 181
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "alt"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 182
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "meta"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 184
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "keydown"

    goto :goto_0

    :cond_b
    const-string p1, "keyup"

    .line 185
    :goto_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    move-object v5, v3

    check-cast v5, Ljava/lang/Iterable;

    const-string p1, "+"

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    return v4
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "vid"

    const-string v1, "no"

    .line 133
    invoke-static {v0, v1}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVView;->setPaused(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 140
    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const-string v1, "holder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const-string v2, "holder.surface"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lis/xyz/mpv/MPVView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Valid non-null surface received in onResume: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lis/xyz/mpv/MPVView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "vid"

    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setPropertyInt(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final playFile(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lis/xyz/mpv/MPVView;->filePath:Ljava/lang/String;

    return-void
.end method

.method public final removeObserver(Lis/xyz/mpv/EventObserver;)V
    .locals 1
    .param p1    # Lis/xyz/mpv/EventObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->removeObserver(Lis/xyz/mpv/EventObserver;)V

    return-void
.end method

.method public final setAid(I)V
    .locals 3

    iget-object v0, p0, Lis/xyz/mpv/MPVView;->aid$delegate:Lis/xyz/mpv/MPVView$TrackDelegate;

    sget-object v1, Lis/xyz/mpv/MPVView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lis/xyz/mpv/MPVView$TrackDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;I)V

    return-void
.end method

.method public final setPaused(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "pause"

    .line 247
    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setPlaybackSpeed(Ljava/lang/Double;)V
    .locals 1
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "speed"

    .line 261
    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setPropertyDouble(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public final setSid(I)V
    .locals 3

    iget-object v0, p0, Lis/xyz/mpv/MPVView;->sid$delegate:Lis/xyz/mpv/MPVView$TrackDelegate;

    sget-object v1, Lis/xyz/mpv/MPVView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lis/xyz/mpv/MPVView$TrackDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;I)V

    return-void
.end method

.method public final setTimePos(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "time-pos"

    .line 254
    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setPropertyInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final setTracks(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lis/xyz/mpv/MPVView$Track;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lis/xyz/mpv/MPVView;->tracks:Ljava/util/Map;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x78

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android-surface-size"

    invoke-static {p2, p1}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    sget-object v0, Lis/xyz/mpv/MPVView;->TAG:Ljava/lang/String;

    const-string v1, "Creating libmpv Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->attachSurface(Landroid/view/Surface;)V

    .line 335
    iget-object p1, p0, Lis/xyz/mpv/MPVView;->filePath:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 336
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "loadfile"

    aput-object v3, v1, v2

    if-eqz p1, :cond_0

    aput-object p1, v1, v0

    invoke-static {v1}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 337
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lis/xyz/mpv/MPVView;->filePath:Ljava/lang/String;

    goto :goto_0

    .line 336
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "vid"

    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setPropertyInt(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lis/xyz/mpv/MPVLib;->detachSurface()V

    return-void
.end method
