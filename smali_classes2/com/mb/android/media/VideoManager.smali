.class public Lcom/mb/android/media/VideoManager;
.super Ljava/lang/Object;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/VideoManager$SecondaryDisplay;,
        Lcom/mb/android/media/VideoManager$DisplayModeListener;
    }
.end annotation


# static fields
.field public static final SURFACE_16_9:I = 0x3

.field public static final SURFACE_4_3:I = 0x4

.field public static final SURFACE_BEST_FIT:I = 0x0

.field public static final SURFACE_FILL:I = 0x2

.field public static final SURFACE_FIT_SCREEN:I = 0x1

.field public static final SURFACE_ORIGINAL:I = 0x5

.field static mSubtitleSurfaceHolder:Landroid/view/SurfaceHolder;

.field static mSubtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field static mSurfaceHolder:Landroid/view/SurfaceHolder;


# instance fields
.field private final displayHelper:Lcom/mb/android/media/Display/DisplayHelper;

.field private final displayModeListener:Lcom/mb/android/media/VideoManager$DisplayModeListener;

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private mActivity:Lcom/mb/android/MainActivity;

.field private mCurrentFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private mCurrentSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mCurrentSurfaceView:Landroid/view/SurfaceView;

.field private mIsSurfaceCreated:Z

.field private mMediaRouter:Landroid/media/MediaRouter;

.field private mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOriginalOrientation:I

.field private mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

.field private mPresentationDisplayId:I

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceToAttach:Landroid/view/Surface;

.field private mWasFullscreen:Z

.field private videoListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mb/android/MainActivity;Lcom/mb/android/model/logging/ILogger;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/mb/android/media/VideoManager;->mPresentationDisplayId:I

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/mb/android/media/VideoManager;->mWasFullscreen:Z

    .line 378
    new-instance v0, Lcom/mb/android/media/VideoManager$2;

    invoke-direct {v0, p0}, Lcom/mb/android/media/VideoManager$2;-><init>(Lcom/mb/android/media/VideoManager;)V

    iput-object v0, p0, Lcom/mb/android/media/VideoManager;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 420
    new-instance v0, Lcom/mb/android/media/VideoManager$3;

    invoke-direct {v0, p0}, Lcom/mb/android/media/VideoManager$3;-><init>(Lcom/mb/android/media/VideoManager;)V

    iput-object v0, p0, Lcom/mb/android/media/VideoManager;->videoListener:Landroid/content/BroadcastReceiver;

    .line 515
    new-instance v0, Lcom/mb/android/media/VideoManager$4;

    invoke-direct {v0, p0}, Lcom/mb/android/media/VideoManager$4;-><init>(Lcom/mb/android/media/VideoManager;)V

    iput-object v0, p0, Lcom/mb/android/media/VideoManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 83
    iput-object p1, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    .line 84
    iput-object p2, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 85
    new-instance v0, Lcom/mb/android/media/Display/DisplayHelper;

    invoke-direct {p0}, Lcom/mb/android/media/VideoManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/mb/android/media/Display/DisplayHelper;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/media/VideoManager;->displayHelper:Lcom/mb/android/media/Display/DisplayHelper;

    .line 86
    new-instance p2, Lcom/mb/android/media/VideoManager$DisplayModeListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/mb/android/media/VideoManager$DisplayModeListener;-><init>(Lcom/mb/android/media/VideoManager;Lcom/mb/android/media/VideoManager$1;)V

    iput-object p2, p0, Lcom/mb/android/media/VideoManager;->displayModeListener:Lcom/mb/android/media/VideoManager$DisplayModeListener;

    .line 87
    iget-object p2, p0, Lcom/mb/android/media/VideoManager;->displayHelper:Lcom/mb/android/media/Display/DisplayHelper;

    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->displayModeListener:Lcom/mb/android/media/VideoManager$DisplayModeListener;

    invoke-virtual {p2, v0}, Lcom/mb/android/media/Display/DisplayHelper;->registerModeChangeListener(Lcom/mb/android/media/Display/UhdHelperListener;)V

    .line 89
    invoke-direct {p0}, Lcom/mb/android/media/VideoManager;->initMediaRouter()V

    .line 91
    invoke-virtual {p1}, Lcom/mb/android/MainActivity;->getRequestedOrientation()I

    move-result p2

    iput p2, p0, Lcom/mb/android/media/VideoManager;->mOriginalOrientation:I

    .line 93
    invoke-direct {p0}, Lcom/mb/android/media/VideoManager;->copyAssets()V

    .line 95
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p2, p0, Lcom/mb/android/media/VideoManager;->videoListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "videoAspectChanged"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private static AttachSubtitleSurfaceView(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 2

    .line 538
    new-instance v0, Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 539
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setZ(F)V

    .line 540
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 543
    new-instance p2, Landroid/view/SurfaceView;

    invoke-direct {p2, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 544
    invoke-virtual {p2, p0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 545
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 546
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 547
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    sput-object p0, Lcom/mb/android/media/VideoManager;->mSubtitleSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mb/android/media/VideoManager;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mb/android/media/VideoManager;->mCurrentFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/media/VideoManager$SecondaryDisplay;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/mb/android/media/VideoManager;Lcom/mb/android/media/VideoManager$SecondaryDisplay;)Lcom/mb/android/media/VideoManager$SecondaryDisplay;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mb/android/media/VideoManager;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/mb/android/media/VideoManager;->mPresentationDisplayId:I

    return p0
.end method

.method static synthetic access$300(Lcom/mb/android/media/VideoManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/mb/android/media/VideoManager;->removePresentation()V

    return-void
.end method

.method static synthetic access$400(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/MainActivity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    return-object p0
.end method

.method static synthetic access$502(Lcom/mb/android/media/VideoManager;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mb/android/media/VideoManager;->mCurrentSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mb/android/media/VideoManager;Landroid/view/Surface;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/mb/android/media/VideoManager;->attachSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$702(Lcom/mb/android/media/VideoManager;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/mb/android/media/VideoManager;->mIsSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mb/android/media/VideoManager;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/mb/android/media/VideoManager;->enableVideoOutput(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/mb/android/media/VideoManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/mb/android/media/VideoManager;->detachSurface()V

    return-void
.end method

.method private attachSurface(Landroid/view/Surface;)V
    .locals 3

    .line 241
    iput-object p1, p0, Lcom/mb/android/media/VideoManager;->mSurfaceToAttach:Landroid/view/Surface;

    .line 244
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    const-class v2, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.example.android.uamp.ACTION_CMD"

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CMD_NAME"

    const-string v2, "ATTACH_SURFACE"

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "surface"

    .line 248
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    iget-object p1, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in onConfigurationChanged"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 145
    new-array v0, v0, [B

    .line 147
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private copyAssets()V
    .locals 17

    move-object/from16 v1, p0

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/mb/android/media/VideoManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v0, "subfont.ttf"

    .line 101
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/mb/android/media/VideoManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 103
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_6

    aget-object v8, v3, v7

    const/4 v0, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 107
    :try_start_0
    invoke-virtual {v2, v8, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 108
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v14, v14

    cmp-long v16, v12, v14

    if-nez v16, :cond_0

    if-eqz v11, :cond_3

    .line 124
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_5

    .line 115
    :cond_0
    :try_start_3
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    :try_start_4
    invoke-static {v11, v12}, Lcom/mb/android/media/VideoManager;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 117
    iget-object v0, v1, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v9, "Copied asset file %s"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v8, v13, v6

    invoke-interface {v0, v9, v13}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v11, :cond_1

    .line 124
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 133
    :catch_0
    :cond_1
    :goto_1
    :try_start_6
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v12, v9

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v12, v9

    :goto_2
    move-object v9, v11

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v11, v9

    move-object v12, v11

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v12, v9

    .line 119
    :goto_3
    :try_start_7
    iget-object v11, v1, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v13, "Failed to copy asset file %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v6

    invoke-interface {v11, v13, v0, v10}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v9, :cond_2

    .line 124
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    nop

    :cond_2
    :goto_4
    if-eqz v12, :cond_3

    goto :goto_1

    :catch_5
    :cond_3
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v11, v9

    :goto_6
    if-eqz v11, :cond_4

    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    :catch_6
    nop

    :cond_4
    :goto_7
    if-eqz v12, :cond_5

    .line 133
    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 139
    :catch_7
    :cond_5
    throw v0

    :cond_6
    return-void
.end method

.method private createPresentation()V
    .locals 6

    .line 472
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mMediaRouter:Landroid/media/MediaRouter;

    if-nez v0, :cond_0

    return-void

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    .line 480
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 485
    :try_start_0
    const-class v3, Landroid/view/Display;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getType"

    .line 486
    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 487
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 489
    iget-object v3, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v4, "Secondary display is TYPE_VIRTUAL. Displaying on primary screen."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    .line 494
    :goto_1
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 497
    :cond_3
    iget-object v3, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Showing presentation on display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    new-instance v3, Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    invoke-direct {p0}, Lcom/mb/android/media/VideoManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v3, v4, v0, v5}, Lcom/mb/android/media/VideoManager$SecondaryDisplay;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v3, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    .line 499
    iget-object v3, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    iget-object v4, p0, Lcom/mb/android/media/VideoManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v4}, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 501
    :try_start_1
    iget-object v3, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    invoke-virtual {v3}, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->show()V

    .line 502
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/mb/android/media/VideoManager;->mPresentationDisplayId:I
    :try_end_1
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    .line 504
    iget-object v3, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "Couldn\'t show presentation!  Display was removed in the meantime."

    invoke-interface {v3, v0, v4}, Lcom/mb/android/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    iput-object v1, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    goto :goto_2

    .line 509
    :cond_4
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "No secondary display detected"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private detachSurface()V
    .locals 4

    .line 315
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    const-class v2, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.example.android.uamp.ACTION_CMD"

    .line 316
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CMD_NAME"

    const-string v2, "DETACH_SURFACE"

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object v1, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 323
    iget-object v1, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error in detachSurface"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private enableVideoOutput(Z)V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoManager.enableVideoOutput"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 263
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "SET_VIDEO_ENABLED"

    .line 265
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "checkHasVideo"

    .line 266
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "enabled"

    const/4 v2, 0x1

    .line 267
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    iget-object p1, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in onConfigurationChanged"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    return-object v0
.end method

.method private initMediaRouter()V
    .locals 3

    .line 161
    invoke-direct {p0}, Lcom/mb/android/media/VideoManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/mb/android/media/VideoManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 162
    new-instance v0, Lcom/mb/android/media/VideoManager$1;

    invoke-direct {v0, p0}, Lcom/mb/android/media/VideoManager$1;-><init>(Lcom/mb/android/media/VideoManager;)V

    iput-object v0, p0, Lcom/mb/android/media/VideoManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 176
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRouter information : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mb/android/media/VideoManager;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setBrightness$1(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 457
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private removePresentation()V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mMediaRouter:Landroid/media/MediaRouter;

    if-nez v0, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Dismissing presentation because the current route no longer has a presentation display."

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    const/4 v0, -0x1

    .line 533
    iput v0, p0, Lcom/mb/android/media/VideoManager;->mPresentationDisplayId:I

    return-void
.end method

.method private setAutoBrightness()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoManager.setAutoBrightness"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 464
    invoke-virtual {p0, v0}, Lcom/mb/android/media/VideoManager;->setBrightness(F)V

    return-void
.end method


# virtual methods
.method public getPresentation()Lcom/mb/android/media/VideoManager$SecondaryDisplay;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    return-object v0
.end method

.method public getSurfaceToAttach()Landroid/view/Surface;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mSurfaceToAttach:Landroid/view/Surface;

    return-object v0
.end method

.method public synthetic lambda$setResizeMode$0$VideoManager(Ljava/lang/String;)V
    .locals 5

    .line 434
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2dddaf

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x2ff583

    if-eq v0, v1, :cond_1

    const v1, 0x5a753b7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "cover"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    goto :goto_2

    .line 442
    :cond_4
    iget-object p1, p0, Lcom/mb/android/media/VideoManager;->mCurrentFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    goto :goto_2

    .line 439
    :cond_5
    iget-object p1, p0, Lcom/mb/android/media/VideoManager;->mCurrentFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    goto :goto_2

    .line 436
    :cond_6
    iget-object p1, p0, Lcom/mb/android/media/VideoManager;->mCurrentFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    :goto_2
    return-void
.end method

.method public onAppPause(Z)V
    .locals 3

    .line 330
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    const-class v2, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.example.android.uamp.ACTION_CMD"

    .line 331
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CMD_NAME"

    const-string v2, "HANDLE_APP_PAUSE"

    .line 333
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "continuePlayback"

    .line 334
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    iget-object p1, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 339
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in VideoManager.onAppPause"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onAppResume()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mCurrentSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Valid non-null surface received in onResume"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 347
    invoke-direct {p0, v0}, Lcom/mb/android/media/VideoManager;->enableVideoOutput(Z)V

    :cond_0
    return-void
.end method

.method public onBeforePlayVideo(Landroid/view/SurfaceView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Lcom/mb/android/model/dto/MediaSourceInfo;)V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onBeforePlayVideo"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    invoke-direct {p0}, Lcom/mb/android/media/VideoManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 187
    iget-object v2, p0, Lcom/mb/android/media/VideoManager;->displayHelper:Lcom/mb/android/media/Display/DisplayHelper;

    invoke-virtual {v2}, Lcom/mb/android/media/Display/DisplayHelper;->getDisplayModes()V

    .line 188
    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getRefreshRateSwitchingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->displayHelper:Lcom/mb/android/media/Display/DisplayHelper;

    invoke-virtual {v0}, Lcom/mb/android/media/Display/DisplayHelper;->supportsDisplayModeSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p4}, Lcom/mb/android/model/dto/MediaSourceInfo;->getVideoStream()Lcom/mb/android/model/entities/MediaStream;

    move-result-object p4

    .line 190
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    invoke-virtual {v0}, Lcom/mb/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->getWindow()Landroid/view/Window;

    move-result-object v0

    :goto_0
    if-eqz p4, :cond_1

    .line 192
    iget-object v2, p0, Lcom/mb/android/media/VideoManager;->displayHelper:Lcom/mb/android/media/Display/DisplayHelper;

    invoke-virtual {v2, v0, p4}, Lcom/mb/android/media/Display/DisplayHelper;->setBestRefreshRate(Landroid/view/Window;Lcom/mb/android/model/entities/MediaStream;)Z

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    if-nez p4, :cond_2

    .line 197
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;)V

    .line 200
    :cond_2
    invoke-direct {p0}, Lcom/mb/android/media/VideoManager;->createPresentation()V

    .line 202
    iget-object p4, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    if-eqz p4, :cond_3

    .line 203
    iget-object p1, p4, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->mSurfaceView:Landroid/view/SurfaceView;

    .line 204
    iget-object p2, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    iget-object p2, p2, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->mSurfaceFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 205
    iget-object p3, p0, Lcom/mb/android/media/VideoManager;->mPresentation:Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    iget-object p3, p3, Lcom/mb/android/media/VideoManager$SecondaryDisplay;->mOuterVideoFrame:Landroid/widget/FrameLayout;

    .line 208
    :cond_3
    invoke-direct {p0}, Lcom/mb/android/media/VideoManager;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p2, p3}, Lcom/mb/android/media/VideoManager;->AttachSubtitleSurfaceView(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object p3

    sput-object p3, Lcom/mb/android/media/VideoManager;->mSubtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 210
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    sput-object p3, Lcom/mb/android/media/VideoManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 212
    sget-object p3, Lcom/mb/android/media/VideoManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object p3, p0, Lcom/mb/android/media/VideoManager;->mCurrentSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 213
    iput-object p1, p0, Lcom/mb/android/media/VideoManager;->mCurrentSurfaceView:Landroid/view/SurfaceView;

    .line 214
    iput-object p2, p0, Lcom/mb/android/media/VideoManager;->mCurrentFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 216
    iget-object p2, p0, Lcom/mb/android/media/VideoManager;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p3, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 218
    iget-object p2, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Lcom/mb/android/MainActivity;->setRequestedOrientation(I)V

    .line 220
    sget-object p2, Lcom/mb/android/media/VideoManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/mb/android/media/VideoManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 221
    sget-object p2, Lcom/mb/android/media/VideoManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mb/android/media/VideoManager;->attachSurface(Landroid/view/Surface;)V

    .line 224
    :cond_4
    iget-boolean p2, p0, Lcom/mb/android/media/VideoManager;->mIsSurfaceCreated:Z

    if-eqz p2, :cond_5

    .line 225
    invoke-direct {p0, v1}, Lcom/mb/android/media/VideoManager;->enableVideoOutput(Z)V

    :cond_5
    const/4 p2, 0x1

    .line 228
    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 229
    iget-object p1, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, p2}, Lcom/mb/android/MainActivity;->setFullscreen(Z)V

    const-string p1, "auto"

    .line 231
    invoke-virtual {p0, p1}, Lcom/mb/android/media/VideoManager;->setResizeMode(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 278
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    const-class v1, Lcom/mb/android/media/MediaService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.example.android.uamp.ACTION_CMD"

    .line 279
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CMD_NAME"

    const-string v1, "HANDLE_CONFIGURATION_CHANGED"

    .line 281
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    invoke-virtual {v0, p1}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in onConfigurationChanged"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onVideoDestroy()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoManager.onVideoDestroy"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-direct {p0}, Lcom/mb/android/media/VideoManager;->setAutoBrightness()V

    .line 296
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mCurrentSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoManager.setRequestedOrientation back to original"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    iget v2, p0, Lcom/mb/android/media/VideoManager;->mOriginalOrientation:I

    invoke-virtual {v0, v2}, Lcom/mb/android/MainActivity;->setRequestedOrientation(I)V

    .line 303
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mCurrentSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 304
    iget-object v2, p0, Lcom/mb/android/media/VideoManager;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 307
    :cond_1
    iget-boolean v0, p0, Lcom/mb/android/media/VideoManager;->mWasFullscreen:Z

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    invoke-virtual {v0, v1}, Lcom/mb/android/MainActivity;->setFullscreen(Z)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mCurrentSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mCurrentSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 354
    iput-object v1, p0, Lcom/mb/android/media/VideoManager;->mCurrentSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 356
    :cond_0
    sput-object v1, Lcom/mb/android/media/VideoManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 357
    sput-object v1, Lcom/mb/android/media/VideoManager;->mSubtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-void
.end method

.method public setBrightness(F)V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    invoke-virtual {v0}, Lcom/mb/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    .line 455
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 457
    iget-object p1, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    new-instance v2, Lcom/mb/android/media/-$$Lambda$VideoManager$6RafJa4ITKzCZfT3mGFj4Ljqn6E;

    invoke-direct {v2, v0, v1}, Lcom/mb/android/media/-$$Lambda$VideoManager$6RafJa4ITKzCZfT3mGFj4Ljqn6E;-><init>(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, v2}, Lcom/mb/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setResizeMode(Ljava/lang/String;)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/mb/android/media/VideoManager;->mActivity:Lcom/mb/android/MainActivity;

    new-instance v1, Lcom/mb/android/media/-$$Lambda$VideoManager$9NcUHgIlfLf4b-LqL3L8EOh73Io;

    invoke-direct {v1, p0, p1}, Lcom/mb/android/media/-$$Lambda$VideoManager$9NcUHgIlfLf4b-LqL3L8EOh73Io;-><init>(Lcom/mb/android/media/VideoManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mb/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
