.class public Lcom/mb/android/media/Display/UhdHelper;
.super Ljava/lang/Object;
.source "UhdHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;,
        Lcom/mb/android/media/Display/UhdHelper$WorkHandler;
    }
.end annotation


# static fields
.field public static final HEIGHT_UHD:I = 0x870

.field private static final INTERSTITIAL_FADED_BROADCAST_MSG:I = 0x4

.field private static final INTERSTITIAL_TIMEOUT_MSG:I = 0x5

.field public static final MODESWITCH_OVERLAY_DISABLE:Ljava/lang/String; = "com.amazon.tv.notification.modeswitch_overlay.action.DISABLE"

.field public static final MODESWITCH_OVERLAY_ENABLE:Ljava/lang/String; = "com.amazon.tv.notification.modeswitch_overlay.action.ENABLE"

.field public static final MODESWITCH_OVERLAY_EXTRA_STATE:Ljava/lang/String; = "com.amazon.tv.notification.modeswitch_overlay.extra.STATE"

.field public static final MODESWITCH_OVERLAY_STATE_CHANGED:Ljava/lang/String; = "com.amazon.tv.notification.modeswitch_overlay.action.STATE_CHANGED"

.field private static final MODE_CHANGED_MSG:I = 0x1

.field private static final MODE_CHANGE_TIMEOUT_MSG:I = 0x2

.field public static final OVERLAY_STATE_DISMISSED:I = 0x0

.field private static final SEND_CALLBACK_WITH_SUPPLIED_RESULT:I = 0x3

.field public static final SET_MODE_TIMEOUT_DELAY_MS:I = 0x3a98

.field public static final SHOW_INTERSTITIAL_TIMEOUT_DELAY_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "UhdHelper"

.field public static final version:Ljava/lang/String; = "v1.1"


# instance fields
.field private currentOverlayStatus:I

.field private isInterstitialFadeReceived:Z

.field isReceiversRegistered:Z

.field mContext:Landroid/content/Context;

.field mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mInternalDisplay:Lcom/mb/android/media/Display/Display;

.field private mIsSetModeInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListener:Lcom/mb/android/media/Display/UhdHelperListener;

.field private mTargetWindow:Landroid/view/Window;

.field private mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

.field private overlayStateChangeReceiver:Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;

.field private sDisplayClassName:Ljava/lang/String;

.field private sGetModeIdMethodName:Ljava/lang/String;

.field private sGetModeMethodName:Ljava/lang/String;

.field private sGetPhysicalHeightMethodName:Ljava/lang/String;

.field private sGetPhysicalWidthMethodName:Ljava/lang/String;

.field private sGetRefreshRateMethodName:Ljava/lang/String;

.field private sPreferredDisplayModeIdFieldName:Ljava/lang/String;

.field private sSupportedModesMethodName:Ljava/lang/String;

.field private showInterstitial:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.view.Display"

    .line 30
    iput-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->sDisplayClassName:Ljava/lang/String;

    const-string v0, "getSupportedModes"

    .line 31
    iput-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->sSupportedModesMethodName:Ljava/lang/String;

    const-string v0, "preferredDisplayModeId"

    .line 32
    iput-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->sPreferredDisplayModeIdFieldName:Ljava/lang/String;

    const-string v0, "getMode"

    .line 33
    iput-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->sGetModeMethodName:Ljava/lang/String;

    const-string v0, "getModeId"

    .line 34
    iput-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->sGetModeIdMethodName:Ljava/lang/String;

    const-string v0, "getPhysicalHeight"

    .line 35
    iput-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->sGetPhysicalHeightMethodName:Ljava/lang/String;

    const-string v0, "getPhysicalWidth"

    .line 36
    iput-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->sGetPhysicalWidthMethodName:Ljava/lang/String;

    const-string v0, "getRefreshRate"

    .line 37
    iput-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->sGetRefreshRateMethodName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/mb/android/media/Display/UhdHelper;->showInterstitial:Z

    .line 44
    iput-boolean v0, p0, Lcom/mb/android/media/Display/UhdHelper;->isInterstitialFadeReceived:Z

    .line 74
    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mContext:Landroid/content/Context;

    .line 75
    new-instance p1, Lcom/mb/android/media/Display/Display;

    invoke-direct {p1}, Lcom/mb/android/media/Display/Display;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mInternalDisplay:Lcom/mb/android/media/Display/Display;

    .line 76
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mIsSetModeInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance p1, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;-><init>(Lcom/mb/android/media/Display/UhdHelper;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    .line 78
    new-instance p1, Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;-><init>(Lcom/mb/android/media/Display/UhdHelper;Lcom/mb/android/media/Display/UhdHelper$1;)V

    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->overlayStateChangeReceiver:Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;

    .line 79
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 80
    iput-boolean v0, p0, Lcom/mb/android/media/Display/UhdHelper;->isReceiversRegistered:Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mb/android/media/Display/UhdHelper;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/mb/android/media/Display/UhdHelper;->isInterstitialFadeReceived:Z

    return p0
.end method

.method static synthetic access$202(Lcom/mb/android/media/Display/UhdHelper;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/mb/android/media/Display/UhdHelper;->isInterstitialFadeReceived:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mb/android/media/Display/UhdHelper;ILjava/lang/reflect/Field;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mb/android/media/Display/UhdHelper;->initModeChange(ILjava/lang/reflect/Field;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mb/android/media/Display/UhdHelper;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/mb/android/media/Display/UhdHelper;->currentOverlayStatus:I

    return p0
.end method

.method static synthetic access$402(Lcom/mb/android/media/Display/UhdHelper;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/mb/android/media/Display/UhdHelper;->currentOverlayStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/mb/android/media/Display/UhdHelper;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mb/android/media/Display/UhdHelper;->hideOptimizingOverlay()V

    return-void
.end method

.method static synthetic access$600(Lcom/mb/android/media/Display/UhdHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/media/Display/UhdHelper;->mIsSetModeInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mb/android/media/Display/UhdHelper;)Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/media/Display/UhdHelper;->overlayStateChangeReceiver:Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mb/android/media/Display/UhdHelper;)Lcom/mb/android/media/Display/UhdHelper$WorkHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    return-object p0
.end method

.method private convertReturnedModeToInternalMode(Ljava/lang/Object;)Lcom/mb/android/media/Display/Display$Mode;
    .locals 7

    .line 247
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/mb/android/media/Display/UhdHelper;->sGetModeIdMethodName:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 249
    iget-object v3, p0, Lcom/mb/android/media/Display/UhdHelper;->sGetPhysicalWidthMethodName:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 250
    iget-object v4, p0, Lcom/mb/android/media/Display/UhdHelper;->sGetPhysicalHeightMethodName:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 251
    iget-object v5, p0, Lcom/mb/android/media/Display/UhdHelper;->sGetRefreshRateMethodName:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 252
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->mInternalDisplay:Lcom/mb/android/media/Display/Display;

    invoke-virtual {v0, v1, v3, v4, p1}, Lcom/mb/android/media/Display/Display;->getModeInstance(IIIF)Lcom/mb/android/media/Display/Display$Mode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    sget-object v0, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    const-string v1, "error converting"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getCurrentDisplay()Landroid/view/Display;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/mb/android/media/Display/UhdHelper;->getCurrentDisplay(Landroid/hardware/display/DisplayManager;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "display"

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 316
    invoke-static {p0}, Lcom/mb/android/media/Display/UhdHelper;->getCurrentDisplay(Landroid/hardware/display/DisplayManager;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private static getCurrentDisplay(Landroid/hardware/display/DisplayManager;)Landroid/view/Display;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.hardware.display.category.PRESENTATION"

    .line 298
    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 300
    array-length v3, v1

    if-lez v3, :cond_1

    .line 301
    aget-object p0, v1, v2

    return-object p0

    .line 303
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 304
    array-length v1, p0

    if-nez v1, :cond_2

    goto :goto_0

    .line 309
    :cond_2
    aget-object p0, p0, v2

    return-object p0

    .line 305
    :cond_3
    :goto_0
    sget-object p0, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    const-string v1, "ERROR on device to get the display"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private hideOptimizingOverlay()V
    .locals 2

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.tv.notification.modeswitch_overlay.action.DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/mb/android/media/Display/UhdHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 499
    sget-object v0, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    const-string v1, "Sending the broadcast to hide display overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initModeChange(ILjava/lang/reflect/Field;)V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->mTargetWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez p2, :cond_0

    .line 466
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 467
    iget-object v1, p0, Lcom/mb/android/media/Display/UhdHelper;->sPreferredDisplayModeIdFieldName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 470
    :cond_0
    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 471
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mTargetWindow:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catch_0
    move-exception p1

    .line 474
    sget-object p2, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v1, v0}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private isAmazonFireTVDevice()Z
    .locals 3

    .line 208
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 209
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "AFT"

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Amazon"

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showOptimizingOverlay()V
    .locals 2

    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.tv.notification.modeswitch_overlay.action.ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/mb/android/media/Display/UhdHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 490
    sget-object v0, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    const-string v1, "Sending the broadcast to display overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getMode()Lcom/mb/android/media/Display/Display$Mode;
    .locals 4

    .line 221
    invoke-direct {p0}, Lcom/mb/android/media/Display/UhdHelper;->getCurrentDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 226
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mb/android/media/Display/UhdHelper;->sDisplayClassName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 227
    iget-object v3, p0, Lcom/mb/android/media/Display/UhdHelper;->sGetModeMethodName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 228
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lcom/mb/android/media/Display/UhdHelper;->convertReturnedModeToInternalMode(Ljava/lang/Object;)Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 231
    sget-object v2, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object v0, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    const-string v2, "Current Mode is not present in supported Modes"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getSupportedModes()[Lcom/mb/android/media/Display/Display$Mode;
    .locals 7

    const/4 v0, 0x0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/media/Display/UhdHelper;->sDisplayClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/mb/android/media/Display/UhdHelper;->sSupportedModesMethodName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 271
    invoke-direct {p0}, Lcom/mb/android/media/Display/UhdHelper;->getCurrentDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 272
    array-length v2, v1

    new-array v0, v2, [Lcom/mb/android/media/Display/Display$Mode;

    .line 274
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 275
    invoke-direct {p0, v5}, Lcom/mb/android/media/Display/UhdHelper;->convertReturnedModeToInternalMode(Ljava/lang/Object;)Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v5

    aput-object v5, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :catch_0
    move-exception v1

    .line 278
    sget-object v2, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public registerModeChangeListener(Lcom/mb/android/media/Display/UhdHelperListener;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mListener:Lcom/mb/android/media/Display/UhdHelperListener;

    return-void
.end method

.method public setPreferredDisplayModeId(Landroid/view/Window;IZ)V
    .locals 9

    .line 344
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 348
    iget-object v1, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    iget-object v2, p0, Lcom/mb/android/media/Display/UhdHelper;->mListener:Lcom/mb/android/media/Display/UhdHelperListener;

    invoke-static {v1, v2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->access$900(Lcom/mb/android/media/Display/UhdHelper$WorkHandler;Lcom/mb/android/media/Display/UhdHelperListener;)V

    .line 350
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    .line 353
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v1, v2, :cond_1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/mb/android/media/Display/UhdHelper;->isAmazonFireTVDevice()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x0

    const/4 v5, 0x3

    if-nez v1, :cond_3

    .line 365
    sget-object p1, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to set preferred Display mode on an unsupported device: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    invoke-virtual {p1, v5, v4, v4, v2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 369
    :cond_3
    invoke-direct {p0}, Lcom/mb/android/media/Display/UhdHelper;->isAmazonFireTVDevice()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p3, 0x0

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->mIsSetModeInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    sget-object p1, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    const-string p2, "setPreferredDisplayModeId is already in progress! Cannot set another while it is in progress"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    invoke-virtual {p1, v5, v2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 380
    :cond_5
    invoke-virtual {p0}, Lcom/mb/android/media/Display/UhdHelper;->getMode()Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 381
    invoke-virtual {v0}, Lcom/mb/android/media/Display/Display$Mode;->getModeId()I

    move-result v1

    if-ne v1, p2, :cond_6

    goto/16 :goto_8

    .line 388
    :cond_6
    invoke-virtual {p0}, Lcom/mb/android/media/Display/UhdHelper;->getSupportedModes()[Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v0

    .line 391
    array-length v1, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_9

    aget-object v7, v0, v6

    .line 392
    invoke-virtual {v7}, Lcom/mb/android/media/Display/Display$Mode;->getModeId()I

    move-result v8

    if-ne v8, p2, :cond_8

    .line 393
    invoke-virtual {v7}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalHeight()I

    move-result v0

    const/16 v1, 0x870

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    move v1, v0

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    if-nez v0, :cond_a

    .line 399
    sget-object p1, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    const-string p2, "Requested mode id not among the supported Mode Id."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    invoke-virtual {p1, v5, v4, v4, v2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 406
    :cond_a
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->mIsSetModeInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 408
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    invoke-virtual {v0, p2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->setExpectedMode(I)V

    .line 409
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mb/android/media/Display/UhdHelper;->overlayStateChangeReceiver:Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.amazon.tv.notification.modeswitch_overlay.action.STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 410
    new-instance v0, Lcom/mb/android/media/Display/UhdHelper$1;

    invoke-direct {v0, p0}, Lcom/mb/android/media/Display/UhdHelper$1;-><init>(Lcom/mb/android/media/Display/UhdHelper;)V

    iput-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 430
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v6, p0, Lcom/mb/android/media/Display/UhdHelper;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v7, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    invoke-virtual {v0, v6, v7}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 431
    iput-boolean v4, p0, Lcom/mb/android/media/Display/UhdHelper;->isReceiversRegistered:Z

    .line 433
    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mTargetWindow:Landroid/view/Window;

    if-eqz p3, :cond_b

    if-eqz v1, :cond_b

    const/4 p1, 0x1

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    .line 434
    :goto_6
    iput-boolean p1, p0, Lcom/mb/android/media/Display/UhdHelper;->showInterstitial:Z

    .line 437
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mTargetWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 442
    :try_start_0
    iget-object p3, p0, Lcom/mb/android/media/Display/UhdHelper;->sPreferredDisplayModeIdFieldName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    iget-boolean p3, p0, Lcom/mb/android/media/Display/UhdHelper;->showInterstitial:Z

    if-eqz p3, :cond_c

    .line 451
    iput-boolean v3, p0, Lcom/mb/android/media/Display/UhdHelper;->isInterstitialFadeReceived:Z

    .line 452
    invoke-direct {p0}, Lcom/mb/android/media/Display/UhdHelper;->showOptimizingOverlay()V

    .line 453
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    .line 455
    :cond_c
    invoke-direct {p0, p2, p1}, Lcom/mb/android/media/Display/UhdHelper;->initModeChange(ILjava/lang/reflect/Field;)V

    :goto_7
    return-void

    :catch_0
    move-exception p1

    .line 444
    sget-object p2, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    invoke-virtual {p1, v5, v4, v4, v2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 382
    :cond_d
    :goto_8
    sget-object p1, Lcom/mb/android/media/Display/UhdHelper;->TAG:Ljava/lang/String;

    const-string p2, "Current mode id same as mode id requested or is Null. Aborting."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mWorkHandler:Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    invoke-virtual {p1, v5, v4, v4, v0}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterDisplayModeChangeListener(Lcom/mb/android/media/Display/UhdHelperListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 519
    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper;->mListener:Lcom/mb/android/media/Display/UhdHelperListener;

    return-void
.end method
