.class public final Lis/xyz/mpv/MPVActivity;
.super Landroid/app/Activity;
.source "MPVActivity.kt"

# interfaces
.implements Lis/xyz/mpv/EventObserver;
.implements Lis/xyz/mpv/TouchGesturesObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lis/xyz/mpv/MPVActivity$TrackData;,
        Lis/xyz/mpv/MPVActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMPVActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MPVActivity.kt\nis/xyz/mpv/MPVActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,801:1\n9060#2,9:802\n10741#2,2:811\n9069#2:813\n9060#2,9:814\n10741#2,2:823\n9069#2:825\n671#3:826\n744#3,2:827\n238#3,2:829\n298#3,7:831\n1309#3:838\n1378#3,3:839\n37#4,2:842\n*E\n*S KotlinDebug\n*F\n+ 1 MPVActivity.kt\nis/xyz/mpv/MPVActivity\n*L\n461#1,9:802\n461#1,2:811\n461#1:813\n462#1,9:814\n462#1,2:823\n462#1:825\n466#1:826\n466#1,2:827\n493#1,2:829\n508#1,7:831\n513#1:838\n513#1,3:839\n513#1,2:842\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00bd\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000f*\u0001 \u0018\u0000 z2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002z{B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010)\u001a\u00020*H\u0002J\u0008\u0010+\u001a\u00020*H\u0002J\u000e\u0010,\u001a\u00020*2\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020*2\u0006\u0010-\u001a\u00020.J\u0008\u00100\u001a\u00020*H\u0002J\u0010\u00101\u001a\u00020\u00062\u0006\u00102\u001a\u000203H\u0016J\u0010\u00104\u001a\u00020\u00062\u0006\u00102\u001a\u000205H\u0016J\u0010\u00106\u001a\u00020*2\u0006\u00107\u001a\u00020\u0016H\u0016J\u0010\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020\nH\u0016J\u0018\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020\n2\u0006\u0010:\u001a\u00020\u0006H\u0016J\u0018\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020\n2\u0006\u0010:\u001a\u00020;H\u0016J\u0018\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020\n2\u0006\u0010:\u001a\u00020\nH\u0016J\u0010\u0010<\u001a\u00020*2\u0006\u00109\u001a\u00020\nH\u0002J\u0018\u0010<\u001a\u00020*2\u0006\u00109\u001a\u00020\n2\u0006\u0010:\u001a\u00020\u0006H\u0002J\u0018\u0010<\u001a\u00020*2\u0006\u00109\u001a\u00020\n2\u0006\u0010:\u001a\u00020;H\u0002J\u0018\u0010<\u001a\u00020*2\u0006\u00109\u001a\u00020\n2\u0006\u0010:\u001a\u00020\nH\u0002J\u0010\u0010=\u001a\u00020*2\u0006\u00107\u001a\u00020\u0016H\u0002J\u0008\u0010>\u001a\u00020\u0014H\u0002J\u0008\u0010?\u001a\u00020*H\u0002J\u0006\u0010@\u001a\u00020*J\u0008\u0010A\u001a\u00020*H\u0002J\u0008\u0010B\u001a\u00020*H\u0002J\u0010\u0010C\u001a\u00020\u00062\u0006\u00106\u001a\u000203H\u0002J\u0012\u0010D\u001a\u00020*2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0014J\u0008\u0010G\u001a\u00020*H\u0014J\u0008\u0010H\u001a\u00020*H\u0014J\u0018\u0010I\u001a\u00020*2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020\u0014H\u0016J\u0008\u0010M\u001a\u00020*H\u0014J\u0012\u0010N\u001a\u0004\u0018\u00010\n2\u0006\u0010O\u001a\u00020PH\u0002J\u0012\u0010Q\u001a\u00020*2\u0008\u0010R\u001a\u0004\u0018\u00010FH\u0002J\u0008\u0010S\u001a\u00020*H\u0002J\u0008\u0010T\u001a\u00020*H\u0002J\u000e\u0010U\u001a\u00020*2\u0006\u0010-\u001a\u00020.J\u000e\u0010V\u001a\u00020*2\u0006\u0010-\u001a\u00020.J\u000e\u0010W\u001a\u00020*2\u0006\u0010-\u001a\u00020.J\u0010\u0010X\u001a\u00020\n2\u0006\u0010Y\u001a\u00020\u0016H\u0002J\u0008\u0010Z\u001a\u00020*H\u0002J\u0012\u0010[\u001a\u0004\u0018\u00010\n2\u0006\u0010\\\u001a\u00020PH\u0002J\u0008\u0010]\u001a\u00020*H\u0002J2\u0010^\u001a\u00020*2\u0006\u0010_\u001a\u00020\n2\u000c\u0010`\u001a\u0008\u0012\u0004\u0012\u00020\u00160a2\u0012\u0010b\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020*0cH\u0002J\u0008\u0010d\u001a\u00020\u0006H\u0002J\u0008\u0010e\u001a\u00020*H\u0002J\u0010\u0010f\u001a\u00020*2\u0006\u0010g\u001a\u00020\nH\u0002J\u000e\u0010h\u001a\u00020*2\u0006\u0010-\u001a\u00020.J\u0008\u0010i\u001a\u00020*H\u0002J\u0008\u0010j\u001a\u00020\u0006H\u0002J\u0016\u0010k\u001a\u00020*2\u000c\u0010l\u001a\u0008\u0012\u0004\u0012\u00020m0aH\u0002J\u0008\u0010n\u001a\u00020*H\u0002J\u0012\u0010o\u001a\u00020*2\u0008\u0008\u0002\u0010p\u001a\u00020\u0006H\u0002J\u0010\u0010q\u001a\u00020*2\u0006\u0010r\u001a\u00020\u0016H\u0002J\u000e\u0010s\u001a\u00020*2\u0006\u0010t\u001a\u00020\u0016J\u0010\u0010u\u001a\u00020*2\u0006\u0010v\u001a\u00020\u0006H\u0002J\u0008\u0010w\u001a\u00020*H\u0002J\u0008\u0010x\u001a\u00020*H\u0002J\u0008\u0010y\u001a\u00020*H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u001a\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u001c0\u001bj\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u001c`\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u000e\u0010\"\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006|"
    }
    d2 = {
        "Lis/xyz/mpv/MPVActivity;",
        "Landroid/app/Activity;",
        "Lis/xyz/mpv/EventObserver;",
        "Lis/xyz/mpv/TouchGesturesObserver;",
        "()V",
        "activityIsForeground",
        "",
        "audioManager",
        "Landroid/media/AudioManager;",
        "autoRotationMode",
        "",
        "backgroundPlayMode",
        "fadeHandler",
        "Landroid/os/Handler;",
        "fadeRunnable",
        "Lis/xyz/mpv/FadeOutControlsRunnable;",
        "gestures",
        "Lis/xyz/mpv/TouchGestures;",
        "gesturesEnabled",
        "initialBright",
        "",
        "initialSeek",
        "",
        "initialVolume",
        "maxVolume",
        "mightWantToToggleControls",
        "onload_commands",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "playbackHasStarted",
        "seekBarChangeListener",
        "is/xyz/mpv/MPVActivity$seekBarChangeListener$1",
        "Lis/xyz/mpv/MPVActivity$seekBarChangeListener$1;",
        "shouldSavePosition",
        "statsEnabled",
        "statsLuaMode",
        "statsOnlyFPS",
        "toast",
        "Landroid/widget/Toast;",
        "userIsOperatingSeekbar",
        "copyAssets",
        "",
        "cycleAudio",
        "cycleOrientation",
        "view",
        "Landroid/view/View;",
        "cycleSpeed",
        "cycleSub",
        "dispatchKeyEvent",
        "ev",
        "Landroid/view/KeyEvent;",
        "dispatchTouchEvent",
        "Landroid/view/MotionEvent;",
        "event",
        "eventId",
        "eventProperty",
        "property",
        "value",
        "",
        "eventPropertyUi",
        "eventUi",
        "getInitialBrightness",
        "hideControls",
        "initControls",
        "initListeners",
        "initMessageToast",
        "interceptKeyDown",
        "onCreate",
        "icicle",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
        "onPropertyChange",
        "p",
        "Lis/xyz/mpv/PropertyChange;",
        "diff",
        "onResume",
        "openContentFd",
        "uri",
        "Landroid/net/Uri;",
        "parseIntentExtras",
        "extras",
        "pickAudio",
        "pickSub",
        "playPause",
        "playlistNext",
        "playlistPrev",
        "prettyTime",
        "d",
        "refreshUi",
        "resolveUri",
        "data",
        "savePosition",
        "selectTrack",
        "type",
        "get",
        "Lkotlin/Function0;",
        "set",
        "Lkotlin/Function1;",
        "shouldBackground",
        "showControls",
        "showToast",
        "msg",
        "switchDecoder",
        "syncSettings",
        "toggleControls",
        "trackSwitchNotification",
        "f",
        "Lis/xyz/mpv/MPVActivity$TrackData;",
        "updateDecoderButton",
        "updateOrientation",
        "initial",
        "updatePlaybackDuration",
        "duration",
        "updatePlaybackPos",
        "position",
        "updatePlaybackStatus",
        "paused",
        "updatePlaylistButtons",
        "updateSpeedButton",
        "updateStats",
        "Companion",
        "TrackData",
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
# The value of this static final field might be set in the static constructor
.field private static final ASPECT_RATIO_MIN:F = 1.2f

# The value of this static final field might be set in the static constructor
.field private static final CONTROLS_DISPLAY_TIMEOUT:J = 0x7d0L

.field public static final Companion:Lis/xyz/mpv/MPVActivity$Companion;

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "mpv"

# The value of this static final field might be set in the static constructor
.field private static final THUMB_SIZE:I = 0xc0


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activityIsForeground:Z

.field private audioManager:Landroid/media/AudioManager;

.field private autoRotationMode:Ljava/lang/String;

.field private backgroundPlayMode:Ljava/lang/String;

.field private fadeHandler:Landroid/os/Handler;

.field private fadeRunnable:Lis/xyz/mpv/FadeOutControlsRunnable;

.field private gestures:Lis/xyz/mpv/TouchGestures;

.field private gesturesEnabled:Z

.field private initialBright:F

.field private initialSeek:I

.field private initialVolume:I

.field private maxVolume:I

.field private mightWantToToggleControls:Z

.field private onload_commands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playbackHasStarted:Z

.field private final seekBarChangeListener:Lis/xyz/mpv/MPVActivity$seekBarChangeListener$1;

.field private shouldSavePosition:Z

.field private statsEnabled:Z

.field private statsLuaMode:I

.field private statsOnlyFPS:Z

.field private toast:Landroid/widget/Toast;

.field private userIsOperatingSeekbar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lis/xyz/mpv/MPVActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lis/xyz/mpv/MPVActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lis/xyz/mpv/MPVActivity;->Companion:Lis/xyz/mpv/MPVActivity$Companion;

    const-string v0, "mpv"

    .line 781
    sput-object v0, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x7d0

    .line 783
    sput-wide v0, Lis/xyz/mpv/MPVActivity;->CONTROLS_DISPLAY_TIMEOUT:J

    const/16 v0, 0xc0

    .line 785
    sput v0, Lis/xyz/mpv/MPVActivity;->THUMB_SIZE:I

    const v0, 0x3f99999a    # 1.2f

    .line 787
    sput v0, Lis/xyz/mpv/MPVActivity;->ASPECT_RATIO_MIN:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->activityIsForeground:Z

    .line 47
    new-instance v1, Lis/xyz/mpv/MPVActivity$seekBarChangeListener$1;

    invoke-direct {v1, p0}, Lis/xyz/mpv/MPVActivity$seekBarChangeListener$1;-><init>(Lis/xyz/mpv/MPVActivity;)V

    iput-object v1, p0, Lis/xyz/mpv/MPVActivity;->seekBarChangeListener:Lis/xyz/mpv/MPVActivity$seekBarChangeListener$1;

    .line 68
    iput-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->gesturesEnabled:Z

    const-string v0, ""

    .line 70
    iput-object v0, p0, Lis/xyz/mpv/MPVActivity;->backgroundPlayMode:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lis/xyz/mpv/MPVActivity;->autoRotationMode:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lis/xyz/mpv/MPVActivity;->onload_commands:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$cycleAudio(Lis/xyz/mpv/MPVActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->cycleAudio()V

    return-void
.end method

.method public static final synthetic access$cycleSub(Lis/xyz/mpv/MPVActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->cycleSub()V

    return-void
.end method

.method public static final synthetic access$eventPropertyUi(Lis/xyz/mpv/MPVActivity;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->eventPropertyUi(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$eventPropertyUi(Lis/xyz/mpv/MPVActivity;Ljava/lang/String;J)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lis/xyz/mpv/MPVActivity;->eventPropertyUi(Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic access$eventPropertyUi(Lis/xyz/mpv/MPVActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lis/xyz/mpv/MPVActivity;->eventPropertyUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$eventPropertyUi(Lis/xyz/mpv/MPVActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lis/xyz/mpv/MPVActivity;->eventPropertyUi(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$eventUi(Lis/xyz/mpv/MPVActivity;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->eventUi(I)V

    return-void
.end method

.method public static final synthetic access$getGestures$p(Lis/xyz/mpv/MPVActivity;)Lis/xyz/mpv/TouchGestures;
    .locals 1

    .line 36
    iget-object p0, p0, Lis/xyz/mpv/MPVActivity;->gestures:Lis/xyz/mpv/TouchGestures;

    if-nez p0, :cond_0

    const-string v0, "gestures"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getUserIsOperatingSeekbar$p(Lis/xyz/mpv/MPVActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lis/xyz/mpv/MPVActivity;->userIsOperatingSeekbar:Z

    return p0
.end method

.method public static final synthetic access$pickAudio(Lis/xyz/mpv/MPVActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->pickAudio()V

    return-void
.end method

.method public static final synthetic access$pickSub(Lis/xyz/mpv/MPVActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->pickSub()V

    return-void
.end method

.method public static final synthetic access$setGestures$p(Lis/xyz/mpv/MPVActivity;Lis/xyz/mpv/TouchGestures;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lis/xyz/mpv/MPVActivity;->gestures:Lis/xyz/mpv/TouchGestures;

    return-void
.end method

.method public static final synthetic access$setUserIsOperatingSeekbar$p(Lis/xyz/mpv/MPVActivity;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lis/xyz/mpv/MPVActivity;->userIsOperatingSeekbar:Z

    return-void
.end method

.method public static final synthetic access$trackSwitchNotification(Lis/xyz/mpv/MPVActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->trackSwitchNotification(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final copyAssets()V
    .locals 17

    .line 160
    invoke-virtual/range {p0 .. p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v0, "subfont.ttf"

    const-string v3, "cacert.pem"

    .line 161
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual/range {p0 .. p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "applicationContext.filesDir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 163
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v7, v3, v6

    const/4 v0, 0x0

    .line 164
    move-object v8, v0

    check-cast v8, Ljava/io/InputStream;

    .line 165
    move-object v9, v0

    check-cast v9, Ljava/io/OutputStream;

    const/4 v10, 0x2

    .line 167
    :try_start_0
    invoke-virtual {v2, v7, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v8

    .line 168
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v14

    int-to-long v14, v14

    cmp-long v16, v12, v14

    if-nez v16, :cond_0

    .line 172
    sget-object v0, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping copy of asset file (exists same size): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_2

    .line 181
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 175
    :cond_0
    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v11, v12

    check-cast v11, Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v9, "ins"

    .line 176
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v11, v5, v10, v0}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 177
    sget-object v0, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copied asset file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 182
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v9, v11

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v9, v11

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 179
    :goto_1
    :try_start_3
    sget-object v10, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to copy asset file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v10, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_1

    .line 181
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v9, :cond_2

    .line 182
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :goto_3
    if-eqz v8, :cond_3

    .line 181
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v9, :cond_4

    .line 182
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    :cond_4
    throw v0

    :cond_5
    return-void
.end method

.method private final cycleAudio()V
    .locals 1

    .line 497
    new-instance v0, Lis/xyz/mpv/MPVActivity$cycleAudio$1;

    invoke-direct {v0, p0}, Lis/xyz/mpv/MPVActivity$cycleAudio$1;-><init>(Lis/xyz/mpv/MPVActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lis/xyz/mpv/MPVActivity;->trackSwitchNotification(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final cycleSub()V
    .locals 1

    .line 501
    new-instance v0, Lis/xyz/mpv/MPVActivity$cycleSub$1;

    invoke-direct {v0, p0}, Lis/xyz/mpv/MPVActivity$cycleSub$1;-><init>(Lis/xyz/mpv/MPVActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lis/xyz/mpv/MPVActivity;->trackSwitchNotification(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final eventPropertyUi(Ljava/lang/String;)V
    .locals 2

    .line 642
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5adaa0e8

    if-eq v0, v1, :cond_1

    const v1, 0x425ef7e0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "track-list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 643
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    invoke-virtual {p1}, Lis/xyz/mpv/MPVView;->loadTracks()V

    goto :goto_0

    :cond_1
    const-string v0, "video-params"

    .line 642
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 644
    invoke-static {p0, p1, v0, v1}, Lis/xyz/mpv/MPVActivity;->updateOrientation$default(Lis/xyz/mpv/MPVActivity;ZILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final eventPropertyUi(Ljava/lang/String;J)V
    .locals 2

    .line 655
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7be3b4ac

    if-eq v0, v1, :cond_1

    const v1, -0x76bbb26c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    long-to-int p1, p2

    .line 657
    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->updatePlaybackDuration(I)V

    goto :goto_0

    :cond_1
    const-string v0, "time-pos"

    .line 655
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    long-to-int p1, p2

    .line 656
    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->updatePlaybackPos(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final eventPropertyUi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final eventPropertyUi(Ljava/lang/String;Z)V
    .locals 2

    .line 649
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x65825f6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 650
    invoke-direct {p0, p2}, Lis/xyz/mpv/MPVActivity;->updatePlaybackStatus(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final eventUi(I)V
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    invoke-virtual {p1}, Lis/xyz/mpv/MPVView;->getPaused()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->updatePlaybackStatus(Z)V

    goto :goto_0

    .line 668
    :cond_2
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->updatePlaylistButtons()V

    :goto_0
    return-void
.end method

.method private final getInitialBrightness()F
    .locals 3

    .line 716
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 717
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 718
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    return v0

    .line 722
    :cond_0
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v1, "screen_brightness"

    .line 724
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    goto :goto_0

    :catch_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0
.end method

.method private final hideControls()V
    .locals 4

    .line 343
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->fadeHandler:Landroid/os/Handler;

    const-string v1, "fadeHandler"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lis/xyz/mpv/MPVActivity;->fadeRunnable:Lis/xyz/mpv/FadeOutControlsRunnable;

    const-string v3, "fadeRunnable"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->fadeHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lis/xyz/mpv/MPVActivity;->fadeRunnable:Lis/xyz/mpv/FadeOutControlsRunnable;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final initListeners()V
    .locals 3

    .line 77
    sget v0, Lis/xyz/mpv/R$id;->controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "controls"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v2, Lis/xyz/mpv/R$id;->cycleAudioBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lis/xyz/mpv/MPVActivity$initListeners$1;

    invoke-direct {v2, p0}, Lis/xyz/mpv/MPVActivity$initListeners$1;-><init>(Lis/xyz/mpv/MPVActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v0, Lis/xyz/mpv/R$id;->controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v2, Lis/xyz/mpv/R$id;->cycleAudioBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lis/xyz/mpv/MPVActivity$initListeners$2;

    invoke-direct {v2, p0}, Lis/xyz/mpv/MPVActivity$initListeners$2;-><init>(Lis/xyz/mpv/MPVActivity;)V

    check-cast v2, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 80
    sget v0, Lis/xyz/mpv/R$id;->controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v2, Lis/xyz/mpv/R$id;->cycleSubsBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lis/xyz/mpv/MPVActivity$initListeners$3;

    invoke-direct {v2, p0}, Lis/xyz/mpv/MPVActivity$initListeners$3;-><init>(Lis/xyz/mpv/MPVActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lis/xyz/mpv/R$id;->controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget v1, Lis/xyz/mpv/R$id;->cycleSubsBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lis/xyz/mpv/MPVActivity$initListeners$4;

    invoke-direct {v1, p0}, Lis/xyz/mpv/MPVActivity$initListeners$4;-><init>(Lis/xyz/mpv/MPVActivity;)V

    check-cast v1, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private final initMessageToast()V
    .locals 3

    .line 85
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "This totally shouldn\'t be seen"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const-string v1, "makeText(applicationCont\u2026t be seen\", LENGTH_SHORT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lis/xyz/mpv/MPVActivity;->toast:Landroid/widget/Toast;

    .line 86
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const-string v1, "toast"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x31

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method private final interceptKeyDown(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 391
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 393
    :cond_0
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->cycleSub()V

    goto :goto_0

    .line 394
    :cond_1
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->cycleAudio()V

    :goto_0
    const/4 v0, 0x0

    .line 398
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_7

    const/16 v1, 0xa5

    if-eq p1, v1, :cond_6

    const/16 v1, 0xaf

    if-eq p1, v1, :cond_5

    const/16 v1, 0xde

    if-eq p1, v1, :cond_4

    const/16 v1, 0x7e

    if-eq p1, v1, :cond_3

    const/16 v1, 0x7f

    if-eq p1, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 406
    :cond_2
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lis/xyz/mpv/MPVView;->setPaused(Ljava/lang/Boolean;)V

    goto :goto_2

    .line 407
    :cond_3
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lis/xyz/mpv/MPVView;->setPaused(Ljava/lang/Boolean;)V

    goto :goto_2

    .line 402
    :cond_4
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->cycleAudio()V

    goto :goto_2

    .line 400
    :cond_5
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->cycleSub()V

    goto :goto_2

    .line 403
    :cond_6
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->toggleControls()Z

    goto :goto_2

    .line 401
    :cond_7
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    invoke-virtual {p1}, Lis/xyz/mpv/MPVView;->cyclePause()V

    :goto_2
    const/4 p1, 0x2

    if-ge v0, p1, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2
.end method

.method private final openContentFd(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 442
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v1, "r"

    .line 444
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fdclose://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 447
    sget-object v0, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open content fd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final parseIntentExtras(Landroid/os/Bundle;)V
    .locals 13

    .line 453
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->onload_commands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "decode_mode"

    .line 458
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    const/4 v1, 0x2

    int-to-byte v2, v1

    const-string v3, "set"

    if-ne v0, v2, :cond_1

    .line 459
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->onload_commands:Ljava/util/ArrayList;

    const-string v2, "file-local-options/hwdec"

    const-string v4, "no"

    filled-new-array {v3, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "subs"

    .line 460
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_f

    .line 461
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 802
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 811
    array-length v8, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_4

    aget-object v10, v0, v9

    .line 461
    instance-of v11, v10, Landroid/net/Uri;

    if-nez v11, :cond_2

    move-object v10, v2

    :cond_2
    check-cast v10, Landroid/net/Uri;

    if-eqz v10, :cond_3

    .line 810
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 813
    :cond_4
    check-cast v7, Ljava/util/List;

    goto :goto_1

    .line 461
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    :goto_1
    const-string v0, "subs.enable"

    .line 462
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 814
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .line 823
    array-length v9, v0

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_8

    aget-object v11, v0, v10

    .line 462
    instance-of v12, v11, Landroid/net/Uri;

    if-nez v12, :cond_6

    move-object v11, v2

    :cond_6
    check-cast v11, Landroid/net/Uri;

    if-eqz v11, :cond_7

    .line 822
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 825
    :cond_8
    check-cast v8, Ljava/util/List;

    goto :goto_3

    .line 462
    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 464
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 465
    invoke-direct {p0, v2}, Lis/xyz/mpv/MPVActivity;->resolveUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 466
    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    .line 826
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .line 827
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroid/net/Uri;

    .line 466
    invoke-virtual {v12, v2}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v12

    if-nez v12, :cond_c

    const/4 v12, 0x1

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_b

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 828
    :cond_d
    check-cast v10, Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    .line 466
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->any(Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "select"

    goto :goto_7

    :cond_e
    const-string v2, "auto"

    .line 468
    :goto_7
    sget-object v9, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding subtitles from intent extras: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v9, p0, Lis/xyz/mpv/MPVActivity;->onload_commands:Ljava/util/ArrayList;

    new-array v10, v4, [Ljava/lang/String;

    const-string v11, "sub-add"

    aput-object v11, v10, v6

    aput-object v7, v10, v5

    aput-object v2, v10, v1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    const-string v0, "position"

    .line 472
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_10

    .line 473
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 474
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->onload_commands:Ljava/util/ArrayList;

    new-array v2, v4, [Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, "start"

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method private final pickAudio()V
    .locals 3

    .line 526
    new-instance v0, Lis/xyz/mpv/MPVActivity$pickAudio$1;

    invoke-direct {v0, p0}, Lis/xyz/mpv/MPVActivity$pickAudio$1;-><init>(Lis/xyz/mpv/MPVActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lis/xyz/mpv/MPVActivity$pickAudio$2;

    invoke-direct {v1, p0}, Lis/xyz/mpv/MPVActivity$pickAudio$2;-><init>(Lis/xyz/mpv/MPVActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v2, "audio"

    invoke-direct {p0, v2, v0, v1}, Lis/xyz/mpv/MPVActivity;->selectTrack(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final pickSub()V
    .locals 3

    .line 528
    new-instance v0, Lis/xyz/mpv/MPVActivity$pickSub$1;

    invoke-direct {v0, p0}, Lis/xyz/mpv/MPVActivity$pickSub$1;-><init>(Lis/xyz/mpv/MPVActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lis/xyz/mpv/MPVActivity$pickSub$2;

    invoke-direct {v1, p0}, Lis/xyz/mpv/MPVActivity$pickSub$2;-><init>(Lis/xyz/mpv/MPVActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v2, "sub"

    invoke-direct {p0, v2, v0, v1}, Lis/xyz/mpv/MPVActivity;->selectTrack(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final prettyTime(I)Ljava/lang/String;
    .locals 7

    .line 551
    div-int/lit16 v0, p1, 0xe10

    .line 552
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 553
    rem-int/lit8 p1, p1, 0x3c

    const-string v2, "java.lang.String.format(this, *args)"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 555
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%02d:%02d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 v6, 0x3

    .line 556
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    array-length p1, v6

    invoke-static {v6, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d:%02d:%02d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final refreshUi()V
    .locals 1

    .line 561
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0}, Lis/xyz/mpv/MPVView;->getTimePos()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0}, Lis/xyz/mpv/MPVView;->getPaused()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lis/xyz/mpv/MPVActivity;->updatePlaybackStatus(Z)V

    .line 564
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0}, Lis/xyz/mpv/MPVView;->getTimePos()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->updatePlaybackPos(I)V

    .line 565
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0}, Lis/xyz/mpv/MPVView;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lis/xyz/mpv/MPVActivity;->updatePlaybackDuration(I)V

    .line 566
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->updatePlaylistButtons()V

    return-void
.end method

.method private final resolveUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .line 428
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->openContentFd(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "rtmps"

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_2
    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_3
    const-string v1, "rtsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_4
    const-string v1, "rtmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_5
    const-string v1, "mmst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_6
    const-string v1, "mmsh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_7
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_8
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_9
    const-string v1, "udp"

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_a
    const-string v1, "rtp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :sswitch_b
    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_2

    .line 437
    sget-object v1, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1a6d3 -> :sswitch_b
        0x1ba6e -> :sswitch_a
        0x1c3c1 -> :sswitch_9
        0x2ff57c -> :sswitch_8
        0x310888 -> :sswitch_7
        0x3333f5 -> :sswitch_6
        0x333401 -> :sswitch_5
        0x359365 -> :sswitch_4
        0x35941f -> :sswitch_3
        0x5f008eb -> :sswitch_2
        0x67cd9ae -> :sswitch_1
        0x38b73479 -> :sswitch_0
    .end sparse-switch
.end method

.method private final savePosition()V
    .locals 2

    .line 281
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->shouldSavePosition:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "eof-reached"

    .line 283
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 284
    sget-object v0, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    const-string v1, "player indicates EOF, not saving watch-later config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "write-watch-later-config"

    .line 287
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    return-void
.end method

.method private final selectTrack(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 506
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0}, Lis/xyz/mpv/MPVView;->getTracks()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v0, Ljava/util/List;

    .line 507
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 832
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 833
    check-cast v4, Lis/xyz/mpv/MPVView$Track;

    .line 508
    invoke-virtual {v4}, Lis/xyz/mpv/MPVView$Track;->getMpvId()I

    move-result v4

    if-ne v4, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    move p2, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, -0x1

    .line 509
    :goto_2
    sget v1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lis/xyz/mpv/MPVView;

    invoke-virtual {v1}, Lis/xyz/mpv/MPVView;->getPaused()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v8, v1

    goto :goto_3

    :cond_4
    const/4 v8, 0x1

    .line 511
    :goto_3
    sget v1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lis/xyz/mpv/MPVView;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lis/xyz/mpv/MPVView;->setPaused(Ljava/lang/Boolean;)V

    .line 513
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v9, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 514
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 838
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 839
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 840
    check-cast v4, Lis/xyz/mpv/MPVView$Track;

    .line 514
    invoke-virtual {v4}, Lis/xyz/mpv/MPVView$Track;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 841
    :cond_5
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    .line 843
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v10, v1

    check-cast v10, [Ljava/lang/CharSequence;

    .line 514
    new-instance v11, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move v4, p2

    move-object v5, p3

    move-object v6, p1

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;-><init>(Lis/xyz/mpv/MPVActivity;Ljava/util/List;ILkotlin/jvm/functions/Function1;Ljava/lang/String;Z)V

    check-cast v11, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v9, v10, p2, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 521
    new-instance v10, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$2;

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$2;-><init>(Lis/xyz/mpv/MPVActivity;Ljava/util/List;ILkotlin/jvm/functions/Function1;Ljava/lang/String;Z)V

    check-cast v10, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 843
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final shouldBackground()Z
    .locals 6

    .line 188
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 190
    :cond_0
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0}, Lis/xyz/mpv/MPVView;->getPaused()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    return v1

    .line 192
    :cond_2
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->backgroundPlayMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x54506df1

    if-eq v3, v4, :cond_4

    const v4, 0x63dca8c

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "never"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_4
    const-string v3, "always"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    :goto_1
    const-string v0, "video-format"

    .line 198
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_8

    const-string v3, "mjpeg"

    const-string v4, "png"

    const-string v5, "bmp"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method private final showControls()V
    .locals 5

    .line 310
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->fadeHandler:Landroid/os/Handler;

    const-string v1, "fadeHandler"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lis/xyz/mpv/MPVActivity;->fadeRunnable:Lis/xyz/mpv/FadeOutControlsRunnable;

    const-string v3, "fadeRunnable"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    sget v0, Lis/xyz/mpv/R$id;->controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "controls"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 316
    sget v0, Lis/xyz/mpv/R$id;->controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    sget v0, Lis/xyz/mpv/R$id;->top_controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v4, "top_controls"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->statsEnabled:Z

    if-eqz v0, :cond_2

    .line 320
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->updateStats()V

    .line 321
    sget v0, Lis/xyz/mpv/R$id;->statsTextView:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, "statsTextView"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    :cond_2
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v4, "window"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v4, "window.decorView"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 327
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->fadeHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lis/xyz/mpv/MPVActivity;->fadeRunnable:Lis/xyz/mpv/FadeOutControlsRunnable;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v1, Ljava/lang/Runnable;

    sget-wide v2, Lis/xyz/mpv/MPVActivity;->CONTROLS_DISPLAY_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final showToast(Ljava/lang/String;)V
    .locals 2

    .line 423
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->toast:Landroid/widget/Toast;

    const-string v1, "toast"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object p1, p0, Lis/xyz/mpv/MPVActivity;->toast:Landroid/widget/Toast;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final syncSettings()V
    .locals 7

    .line 234
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stats_mode"

    const-string v2, ""

    .line 236
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 238
    iput-boolean v4, p0, Lis/xyz/mpv/MPVActivity;->statsEnabled:Z

    .line 239
    iput v4, p0, Lis/xyz/mpv/MPVActivity;->statsLuaMode:I

    goto :goto_4

    :cond_2
    const-string v2, "native"

    .line 240
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "native_fps"

    if-nez v2, :cond_6

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, "lua1"

    .line 244
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "lua2"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 245
    :cond_4
    iput-boolean v4, p0, Lis/xyz/mpv/MPVActivity;->statsEnabled:Z

    .line 246
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    :goto_2
    iput v1, p0, Lis/xyz/mpv/MPVActivity;->statsLuaMode:I

    goto :goto_4

    .line 241
    :cond_6
    :goto_3
    iput-boolean v3, p0, Lis/xyz/mpv/MPVActivity;->statsEnabled:Z

    .line 242
    iput v4, p0, Lis/xyz/mpv/MPVActivity;->statsLuaMode:I

    .line 243
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lis/xyz/mpv/MPVActivity;->statsOnlyFPS:Z

    :cond_7
    :goto_4
    const-string v1, "touch_gestures"

    .line 248
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lis/xyz/mpv/MPVActivity;->gesturesEnabled:Z

    const-string v1, "background_play"

    const-string v2, "never"

    .line 249
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefs.getString(\"background_play\", \"never\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lis/xyz/mpv/MPVActivity;->backgroundPlayMode:Ljava/lang/String;

    const-string v1, "save_position"

    .line 250
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lis/xyz/mpv/MPVActivity;->shouldSavePosition:Z

    const-string v1, "auto"

    const-string v2, "auto_rotation"

    .line 251
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "prefs.getString(\"auto_rotation\", \"auto\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lis/xyz/mpv/MPVActivity;->autoRotationMode:Ljava/lang/String;

    .line 253
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->statsOnlyFPS:Z

    if-eqz v0, :cond_8

    .line 254
    sget v0, Lis/xyz/mpv/R$id;->statsTextView:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide v5, 0xff00ff00L

    long-to-int v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    :cond_8
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->autoRotationMode:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_9

    .line 256
    sget v0, Lis/xyz/mpv/R$id;->orientationBtn:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "orientationBtn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private final toggleControls()Z
    .locals 2

    .line 348
    sget v0, Lis/xyz/mpv/R$id;->controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "controls"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->hideControls()V

    const/4 v0, 0x0

    goto :goto_0

    .line 352
    :cond_0
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->showControls()V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final trackSwitchNotification(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lis/xyz/mpv/MPVActivity$TrackData;",
            ">;)V"
        }
    .end annotation

    .line 480
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVActivity$TrackData;

    invoke-virtual {p1}, Lis/xyz/mpv/MPVActivity$TrackData;->component1()I

    move-result v0

    invoke-virtual {p1}, Lis/xyz/mpv/MPVActivity$TrackData;->component2()Ljava/lang/String;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1be40

    if-eq v1, v2, :cond_2

    const v2, 0x58d9bd6

    if-eq v1, v2, :cond_1

    const v2, 0x6b0147b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Video"

    goto :goto_1

    :cond_1
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Audio"

    goto :goto_1

    :cond_2
    const-string v1, "sub"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Subs"

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, "Unknown"

    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Off"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 493
    :cond_4
    sget v2, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v2}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/MPVView;

    invoke-virtual {v2}, Lis/xyz/mpv/MPVView;->getTracks()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8

    check-cast p1, Ljava/lang/Iterable;

    .line 829
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lis/xyz/mpv/MPVView$Track;

    .line 493
    invoke-virtual {v3}, Lis/xyz/mpv/MPVView$Track;->getMpvId()I

    move-result v3

    if-ne v3, v0, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_5

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 830
    :goto_3
    check-cast v2, Lis/xyz/mpv/MPVView$Track;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lis/xyz/mpv/MPVView$Track;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const-string p1, "???"

    .line 494
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private final updateDecoderButton()V
    .locals 2

    .line 589
    sget v0, Lis/xyz/mpv/R$id;->cycleDecoderBtn:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "cycleDecoderBtn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lis/xyz/mpv/MPVView;

    invoke-virtual {v1}, Lis/xyz/mpv/MPVView;->getHwdecActive()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HW"

    goto :goto_0

    :cond_1
    const-string v1, "SW"

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateOrientation(Z)V
    .locals 5

    .line 616
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->autoRotationMode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x6

    const/4 v3, 0x7

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->autoRotationMode:Ljava/lang/String;

    const-string v4, "landscape"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    :goto_0
    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->setRequestedOrientation(I)V

    :cond_2
    if-eqz p1, :cond_3

    return-void

    .line 627
    :cond_3
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    invoke-virtual {p1}, Lis/xyz/mpv/MPVView;->getVideoW()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    int-to-float p1, p1

    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0}, Lis/xyz/mpv/MPVView;->getVideoH()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_5
    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 628
    sget-object v0, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto rotation: aspect ratio = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-eqz v0, :cond_8

    .line 630
    sget v0, Lis/xyz/mpv/MPVActivity;->ASPECT_RATIO_MIN:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v4, v1, v0

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_6

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    goto :goto_3

    :cond_6
    cmpl-float p1, p1, v1

    if-lez p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x7

    .line 635
    :goto_2
    invoke-virtual {p0, v2}, Lis/xyz/mpv/MPVActivity;->setRequestedOrientation(I)V

    return-void

    :cond_8
    :goto_3
    const/4 p1, -0x1

    .line 632
    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method static synthetic updateOrientation$default(Lis/xyz/mpv/MPVActivity;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 615
    :cond_0
    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->updateOrientation(Z)V

    return-void
.end method

.method private final updatePlaybackDuration(I)V
    .locals 2

    .line 578
    sget v0, Lis/xyz/mpv/R$id;->playbackDurationTxt:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "playbackDurationTxt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->prettyTime(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->userIsOperatingSeekbar:Z

    if-nez v0, :cond_0

    .line 580
    sget v0, Lis/xyz/mpv/R$id;->playbackSeekbar:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const-string v1, "playbackSeekbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method private final updatePlaybackStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f070058

    goto :goto_0

    :cond_0
    const p1, 0x7f070057

    .line 585
    :goto_0
    sget v0, Lis/xyz/mpv/R$id;->playBtn:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method private final updatePlaylistButtons()V
    .locals 8

    const-string v0, "playlist-count"

    .line 597
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "playlist-pos"

    .line 598
    invoke-static {v2}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v4, "nextBtn"

    const-string v5, "prevBtn"

    if-ne v0, v1, :cond_2

    .line 602
    sget v0, Lis/xyz/mpv/R$id;->prevBtn:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 603
    sget v0, Lis/xyz/mpv/R$id;->nextBtn:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 606
    :cond_2
    sget v6, Lis/xyz/mpv/R$id;->prevBtn:I

    invoke-virtual {p0, v6}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 607
    sget v6, Lis/xyz/mpv/R$id;->nextBtn:I

    invoke-virtual {p0, v6}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 609
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f05005a

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 610
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f05005b

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 611
    sget v7, Lis/xyz/mpv/R$id;->prevBtn:I

    invoke-virtual {p0, v7}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 612
    sget v5, Lis/xyz/mpv/R$id;->nextBtn:I

    invoke-virtual {p0, v5}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr v0, v1

    if-ne v2, v0, :cond_4

    goto :goto_3

    :cond_4
    move v3, v6

    :goto_3
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private final updateSpeedButton()V
    .locals 3

    .line 593
    sget v0, Lis/xyz/mpv/R$id;->cycleSpeedBtn:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "cycleSpeedBtn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v2}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/MPVView;

    invoke-virtual {v2}, Lis/xyz/mpv/MPVView;->getPlaybackSpeed()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateStats()V
    .locals 5

    .line 291
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->statsOnlyFPS:Z

    const-string v1, "statsTextView"

    if-eqz v0, :cond_0

    .line 292
    sget v0, Lis/xyz/mpv/R$id;->statsTextView:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v2}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/MPVView;

    invoke-virtual {v2}, Lis/xyz/mpv/MPVView;->getEstimatedVfFps()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FPS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v2}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/MPVView;

    invoke-virtual {v2}, Lis/xyz/mpv/MPVView;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Video: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    sget v3, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v3}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lis/xyz/mpv/MPVView;

    invoke-virtual {v3}, Lis/xyz/mpv/MPVView;->getVideoCodec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hwdec: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v3}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lis/xyz/mpv/MPVView;

    invoke-virtual {v3}, Lis/xyz/mpv/MPVView;->getHwdecActive()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\tA-V: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    sget v4, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v4}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lis/xyz/mpv/MPVView;

    invoke-virtual {v4}, Lis/xyz/mpv/MPVView;->getAvsync()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\tDropped: decoder: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    sget v4, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v4}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lis/xyz/mpv/MPVView;

    invoke-virtual {v4}, Lis/xyz/mpv/MPVView;->getDecoderFrameDropCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", VO: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v4}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lis/xyz/mpv/MPVView;

    invoke-virtual {v4}, Lis/xyz/mpv/MPVView;->getFrameDropCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\tFPS: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    sget v4, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v4}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lis/xyz/mpv/MPVView;

    invoke-virtual {v4}, Lis/xyz/mpv/MPVView;->getFps()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (specified) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v4}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lis/xyz/mpv/MPVView;

    invoke-virtual {v4}, Lis/xyz/mpv/MPVView;->getEstimatedVfFps()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (estimated)\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tResolution: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    sget v4, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v4}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lis/xyz/mpv/MPVView;

    invoke-virtual {v4}, Lis/xyz/mpv/MPVView;->getVideoW()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v4, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v4}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lis/xyz/mpv/MPVView;

    invoke-virtual {v4}, Lis/xyz/mpv/MPVView;->getVideoH()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Audio: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    sget v2, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v2}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/MPVView;

    invoke-virtual {v2}, Lis/xyz/mpv/MPVView;->getAudioCodec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\tSample rate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    sget v2, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v2}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/MPVView;

    invoke-virtual {v2}, Lis/xyz/mpv/MPVView;->getAudioSampleRate()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Hz\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tChannels: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    sget v2, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v2}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/MPVView;

    invoke-virtual {v2}, Lis/xyz/mpv/MPVView;->getAudioChannels()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    sget v2, Lis/xyz/mpv/R$id;->statsTextView:I

    invoke-virtual {p0, v2}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lis/xyz/mpv/MPVActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lis/xyz/mpv/MPVActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final cycleOrientation(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getRequestedOrientation()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 v0, 0x7

    :cond_0
    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final cycleSpeed(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    invoke-virtual {p1}, Lis/xyz/mpv/MPVView;->cycleSpeed()V

    .line 539
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->updateSpeedButton()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->showControls()V

    .line 360
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->interceptKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 362
    :cond_0
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0, p1}, Lis/xyz/mpv/MPVView;->onKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 366
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 374
    sget v0, Lis/xyz/mpv/R$id;->controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "controls"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 375
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->showControls()V

    .line 376
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 379
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 380
    iput-boolean v1, p0, Lis/xyz/mpv/MPVActivity;->mightWantToToggleControls:Z

    .line 381
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-boolean p1, p0, Lis/xyz/mpv/MPVActivity;->mightWantToToggleControls:Z

    if-eqz p1, :cond_3

    .line 382
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->toggleControls()Z

    :cond_3
    return v1
.end method

.method public event(I)V
    .locals 4

    .line 694
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->playbackHasStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->finish()V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 697
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->finish()V

    .line 699
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->activityIsForeground:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 703
    iput-boolean v1, p0, Lis/xyz/mpv/MPVActivity;->playbackHasStarted:Z

    .line 704
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->onload_commands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 705
    invoke-static {v2}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    goto :goto_1

    .line 706
    :cond_3
    iget v0, p0, Lis/xyz/mpv/MPVActivity;->statsLuaMode:I

    if-lez v0, :cond_4

    const-string v0, "script-binding"

    const-string v2, "stats/display-stats-toggle"

    .line 707
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 708
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stats/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lis/xyz/mpv/MPVActivity;->statsLuaMode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    .line 711
    :cond_4
    new-instance v0, Lis/xyz/mpv/MPVActivity$event$1;

    invoke-direct {v0, p0, p1}, Lis/xyz/mpv/MPVActivity$event$1;-><init>(Lis/xyz/mpv/MPVActivity;I)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public eventProperty(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->activityIsForeground:Z

    if-nez v0, :cond_0

    return-void

    .line 674
    :cond_0
    new-instance v0, Lis/xyz/mpv/MPVActivity$eventProperty$1;

    invoke-direct {v0, p0, p1}, Lis/xyz/mpv/MPVActivity$eventProperty$1;-><init>(Lis/xyz/mpv/MPVActivity;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public eventProperty(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->activityIsForeground:Z

    if-nez v0, :cond_0

    return-void

    .line 684
    :cond_0
    new-instance v0, Lis/xyz/mpv/MPVActivity$eventProperty$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lis/xyz/mpv/MPVActivity$eventProperty$3;-><init>(Lis/xyz/mpv/MPVActivity;Ljava/lang/String;J)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public eventProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->activityIsForeground:Z

    if-nez v0, :cond_0

    return-void

    .line 689
    :cond_0
    new-instance v0, Lis/xyz/mpv/MPVActivity$eventProperty$4;

    invoke-direct {v0, p0, p1, p2}, Lis/xyz/mpv/MPVActivity$eventProperty$4;-><init>(Lis/xyz/mpv/MPVActivity;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public eventProperty(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->activityIsForeground:Z

    if-nez v0, :cond_0

    return-void

    .line 679
    :cond_0
    new-instance v0, Lis/xyz/mpv/MPVActivity$eventProperty$2;

    invoke-direct {v0, p0, p1, p2}, Lis/xyz/mpv/MPVActivity$eventProperty$2;-><init>(Lis/xyz/mpv/MPVActivity;Ljava/lang/String;Z)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final initControls()V
    .locals 3

    .line 334
    sget v0, Lis/xyz/mpv/R$id;->controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "controls"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    sget v0, Lis/xyz/mpv/R$id;->top_controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "top_controls"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    sget v0, Lis/xyz/mpv/R$id;->statsTextView:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "statsTextView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x806

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->copyAssets()V

    .line 96
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0a0033

    .line 98
    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->initControls()V

    .line 104
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->initListeners()V

    .line 107
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->initMessageToast()V

    .line 110
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lis/xyz/mpv/MPVActivity;->fadeHandler:Landroid/os/Handler;

    .line 111
    new-instance p1, Lis/xyz/mpv/FadeOutControlsRunnable;

    sget v0, Lis/xyz/mpv/R$id;->controls:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "controls"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p1, p0, v0}, Lis/xyz/mpv/FadeOutControlsRunnable;-><init>(Lis/xyz/mpv/MPVActivity;Landroid/view/View;)V

    iput-object p1, p0, Lis/xyz/mpv/MPVActivity;->fadeRunnable:Lis/xyz/mpv/FadeOutControlsRunnable;

    .line 113
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->syncSettings()V

    const/4 p1, 0x1

    .line 116
    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->updateOrientation(Z)V

    .line 119
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "intent.data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->resolveUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lis/xyz/mpv/MPVActivity;->parseIntentExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "filepath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 127
    sget-object p1, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    const-string v0, "No file given, exiting"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->finish()V

    return-void

    .line 132
    :cond_1
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "applicationContext.filesDir"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationContext.filesDir.path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lis/xyz/mpv/MPVView;->initialize(Ljava/lang/String;)V

    .line 133
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    move-object v1, p0

    check-cast v1, Lis/xyz/mpv/EventObserver;

    invoke-virtual {v0, v1}, Lis/xyz/mpv/MPVView;->addObserver(Lis/xyz/mpv/EventObserver;)V

    .line 134
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0, p1}, Lis/xyz/mpv/MPVView;->playFile(Ljava/lang/String;)V

    .line 136
    sget p1, Lis/xyz/mpv/R$id;->playbackSeekbar:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iget-object v0, p0, Lis/xyz/mpv/MPVActivity;->seekBarChangeListener:Lis/xyz/mpv/MPVActivity$seekBarChangeListener$1;

    check-cast v0, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 138
    iget-boolean p1, p0, Lis/xyz/mpv/MPVActivity;->gesturesEnabled:Z

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 140
    new-instance v0, Lis/xyz/mpv/TouchGestures;

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    move-object v2, p0

    check-cast v2, Lis/xyz/mpv/TouchGesturesObserver;

    invoke-direct {v0, v1, p1, v2}, Lis/xyz/mpv/TouchGestures;-><init>(FFLis/xyz/mpv/TouchGesturesObserver;)V

    iput-object v0, p0, Lis/xyz/mpv/MPVActivity;->gestures:Lis/xyz/mpv/TouchGestures;

    .line 141
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    new-instance v0, Lis/xyz/mpv/MPVActivity$onCreate$1;

    invoke-direct {v0, p0}, Lis/xyz/mpv/MPVActivity$onCreate$1;-><init>(Lis/xyz/mpv/MPVActivity;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Lis/xyz/mpv/MPVView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    const-string p1, "audio"

    .line 144
    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lis/xyz/mpv/MPVActivity;->audioManager:Landroid/media/AudioManager;

    const/4 p1, 0x3

    .line 146
    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->setVolumeControlStream(I)V

    return-void

    .line 144
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDestroy()V
    .locals 3

    .line 151
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lis/xyz/mpv/BackgroundPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 154
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    move-object v1, p0

    check-cast v1, Lis/xyz/mpv/EventObserver;

    invoke-virtual {v0, v1}, Lis/xyz/mpv/MPVView;->removeObserver(Lis/xyz/mpv/EventObserver;)V

    .line 155
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0}, Lis/xyz/mpv/MPVView;->destroy()V

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->isInMultiWindowMode()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    const-string v1, "Going into multi-window mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    .line 210
    :cond_1
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->shouldBackground()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v2, "video-format"

    .line 211
    invoke-static {v2}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_4

    .line 212
    sget-object v2, Lis/xyz/mpv/BackgroundPlaybackService;->Companion:Lis/xyz/mpv/BackgroundPlaybackService$Companion;

    sget v3, Lis/xyz/mpv/MPVActivity;->THUMB_SIZE:I

    invoke-static {v3}, Lis/xyz/mpv/MPVLib;->grabThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lis/xyz/mpv/BackgroundPlaybackService$Companion;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 214
    :cond_4
    sget-object v2, Lis/xyz/mpv/BackgroundPlaybackService;->Companion:Lis/xyz/mpv/BackgroundPlaybackService$Companion;

    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lis/xyz/mpv/BackgroundPlaybackService$Companion;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 217
    :goto_3
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 218
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->savePosition()V

    .line 220
    :cond_5
    sget v2, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v2}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/MPVView;

    invoke-virtual {v2}, Lis/xyz/mpv/MPVView;->onPause()V

    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 223
    iput-boolean v1, p0, Lis/xyz/mpv/MPVActivity;->activityIsForeground:Z

    if-eqz v0, :cond_6

    .line 225
    sget-object v0, Lis/xyz/mpv/MPVActivity;->TAG:Ljava/lang/String;

    const-string v1, "Resuming playback in background"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lis/xyz/mpv/BackgroundPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_6
    return-void
.end method

.method public onPropertyChange(Lis/xyz/mpv/PropertyChange;F)V
    .locals 7
    .param p1    # Lis/xyz/mpv/PropertyChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    sget-object v0, Lis/xyz/mpv/MPVActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lis/xyz/mpv/PropertyChange;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "audioManager"

    const/4 v2, 0x3

    const-string v3, "gestureTextView"

    const/4 v4, 0x0

    if-eq p1, v0, :cond_a

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eq p1, v6, :cond_4

    const/16 v0, 0x25

    if-eq p1, v2, :cond_2

    if-eq p1, v5, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto/16 :goto_4

    .line 776
    :cond_0
    sget p1, Lis/xyz/mpv/R$id;->gestureTextView:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 769
    :cond_1
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v1, "window"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v2, 0x0

    .line 770
    iget v4, p0, Lis/xyz/mpv/MPVActivity;->initialBright:F

    add-float/2addr v4, p2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 771
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 772
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 774
    sget p1, Lis/xyz/mpv/R$id;->gestureTextView:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float p2, p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 762
    :cond_2
    iget p1, p0, Lis/xyz/mpv/MPVActivity;->initialVolume:I

    iget v5, p0, Lis/xyz/mpv/MPVActivity;->maxVolume:I

    int-to-float v5, v5

    mul-float p2, p2, v5

    float-to-int p2, p2

    add-int/2addr p1, p2

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lis/xyz/mpv/MPVActivity;->maxVolume:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int/lit8 p2, p1, 0x64

    .line 763
    iget v5, p0, Lis/xyz/mpv/MPVActivity;->maxVolume:I

    div-int/2addr p2, v5

    .line 764
    iget-object v5, p0, Lis/xyz/mpv/MPVActivity;->audioManager:Landroid/media/AudioManager;

    if-nez v5, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v5, v2, p1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 766
    sget p1, Lis/xyz/mpv/R$id;->gestureTextView:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 750
    :cond_4
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    invoke-virtual {p1}, Lis/xyz/mpv/MPVView;->getDuration()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_9

    iget p1, p0, Lis/xyz/mpv/MPVActivity;->initialSeek:I

    if-gez p1, :cond_6

    goto/16 :goto_2

    :cond_6
    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 752
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget p2, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p2}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lis/xyz/mpv/MPVView;

    invoke-virtual {p2}, Lis/xyz/mpv/MPVView;->getDuration()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 753
    iget p2, p0, Lis/xyz/mpv/MPVActivity;->initialSeek:I

    sub-int p2, p1, p2

    .line 755
    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "seek"

    aput-object v5, v1, v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "absolute"

    aput-object v0, v1, v6

    const-string v0, "keyframes"

    aput-object v0, v1, v2

    invoke-static {v1}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->updatePlaybackPos(I)V

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz p2, :cond_8

    const-string v1, "+"

    goto :goto_1

    :cond_8
    const-string v1, "-"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-direct {p0, p2}, Lis/xyz/mpv/MPVActivity;->prettyTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 759
    sget v0, Lis/xyz/mpv/R$id;->gestureTextView:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->prettyTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    :goto_2
    return-void

    .line 738
    :cond_a
    iput-boolean v4, p0, Lis/xyz/mpv/MPVActivity;->mightWantToToggleControls:Z

    .line 740
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    invoke-virtual {p1}, Lis/xyz/mpv/MPVView;->getTimePos()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_b
    const/4 p1, -0x1

    :goto_3
    iput p1, p0, Lis/xyz/mpv/MPVActivity;->initialSeek:I

    .line 741
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->getInitialBrightness()F

    move-result p1

    iput p1, p0, Lis/xyz/mpv/MPVActivity;->initialBright:F

    .line 742
    iget-object p1, p0, Lis/xyz/mpv/MPVActivity;->audioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lis/xyz/mpv/MPVActivity;->initialVolume:I

    .line 743
    iget-object p1, p0, Lis/xyz/mpv/MPVActivity;->audioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lis/xyz/mpv/MPVActivity;->maxVolume:I

    .line 745
    sget p1, Lis/xyz/mpv/R$id;->gestureTextView:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 746
    sget p1, Lis/xyz/mpv/R$id;->gestureTextView:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ""

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 261
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->activityIsForeground:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->initControls()V

    .line 268
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->syncSettings()V

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->activityIsForeground:Z

    .line 271
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->refreshUi()V

    .line 273
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lis/xyz/mpv/BackgroundPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 276
    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0}, Lis/xyz/mpv/MPVView;->onResume()V

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public final playPause(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    invoke-virtual {p1}, Lis/xyz/mpv/MPVView;->cyclePause()V

    return-void
.end method

.method public final playlistNext(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playlist-next"

    .line 420
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    return-void
.end method

.method public final playlistPrev(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playlist-prev"

    .line 418
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    return-void
.end method

.method public final switchDecoder(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    sget p1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p0, p1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    invoke-virtual {p1}, Lis/xyz/mpv/MPVView;->cycleHwdec()V

    .line 533
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->updateDecoderButton()V

    return-void
.end method

.method public final updatePlaybackPos(I)V
    .locals 2

    .line 570
    sget v0, Lis/xyz/mpv/R$id;->playbackPositionTxt:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "playbackPositionTxt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lis/xyz/mpv/MPVActivity;->prettyTime(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-boolean v0, p0, Lis/xyz/mpv/MPVActivity;->userIsOperatingSeekbar:Z

    if-nez v0, :cond_0

    .line 572
    sget v0, Lis/xyz/mpv/R$id;->playbackSeekbar:I

    invoke-virtual {p0, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const-string v1, "playbackSeekbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 573
    :cond_0
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->updateDecoderButton()V

    .line 574
    invoke-direct {p0}, Lis/xyz/mpv/MPVActivity;->updateSpeedButton()V

    return-void
.end method
