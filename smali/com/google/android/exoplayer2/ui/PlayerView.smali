.class public Lcom/google/android/exoplayer2/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "PlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlayerView$ShowBuffering;
    }
.end annotation


# static fields
.field private static final PICTURE_TYPE_FRONT_COVER:I = 0x3

.field private static final PICTURE_TYPE_NOT_SET:I = -0x1

.field public static final SHOW_BUFFERING_ALWAYS:I = 0x2

.field public static final SHOW_BUFFERING_NEVER:I = 0x0

.field public static final SHOW_BUFFERING_WHEN_PLAYING:I = 0x1

.field private static final SURFACE_TYPE_NONE:I = 0x0

.field private static final SURFACE_TYPE_SPHERICAL_GL_SURFACE_VIEW:I = 0x3

.field private static final SURFACE_TYPE_SURFACE_VIEW:I = 0x1

.field private static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x2

.field private static final SURFACE_TYPE_VIDEO_DECODER_GL_SURFACE_VIEW:I = 0x4


# instance fields
.field private final adOverlayFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final artworkView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bufferingView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

.field private final contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private controllerAutoShow:Z

.field private controllerHideDuringAds:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customErrorMessage:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private defaultArtwork:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private final errorMessageView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isTouching:Z

.field private keepContentOnPlayerReset:Z

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private player:Lcom/google/android/exoplayer2/Player;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private showBuffering:I

.field private final shutterView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final surfaceView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private textureViewRotation:I

.field private useArtwork:Z

.field private useController:Z

.field private useSensorRotation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 340
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 342
    new-instance v3, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isInEditMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 345
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 346
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 347
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 348
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 349
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 350
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    .line 351
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 352
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 353
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 354
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 355
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 356
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 361
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->addView(Landroid/view/View;)V

    return-void

    .line 367
    :cond_1
    sget v3, Lcom/google/android/exoplayer2/ui/R$layout;->exo_player_view:I

    const/16 v5, 0x1388

    const/4 v6, 0x1

    .line 378
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView:[I

    invoke-virtual {v8, v2, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 382
    :try_start_0
    sget v9, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    .line 383
    sget v10, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v8, v10, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 384
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_player_layout_id:I

    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 385
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_artwork:I

    invoke-virtual {v8, v11, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 386
    sget v12, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_default_artwork:I

    .line 387
    invoke-virtual {v8, v12, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 388
    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_controller:I

    invoke-virtual {v8, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 389
    sget v14, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_surface_type:I

    invoke-virtual {v8, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 390
    sget v15, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_resize_mode:I

    invoke-virtual {v8, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 391
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_show_timeout:I

    .line 392
    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 393
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_hide_on_touch:I

    .line 394
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 395
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_auto_show:I

    invoke-virtual {v8, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 396
    sget v6, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_show_buffering:I

    move/from16 v16, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 397
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_keep_content_on_player_reset:I

    move/from16 v17, v4

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 398
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 400
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_hide_during_ads:I

    const/4 v4, 0x1

    .line 401
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 402
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_sensor_rotation:I

    move/from16 v18, v3

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z

    .line 403
    invoke-virtual {v8, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v8, v18

    move/from16 v16, v5

    move v5, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 406
    throw v0

    :cond_2
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1388

    .line 409
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v3, 0x40000

    .line 410
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDescendantFocusability(I)V

    .line 413
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_content_frame:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 414
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_3

    .line 415
    invoke-static {v3, v15}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    .line 419
    :cond_3
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_shutter:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 420
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v3, :cond_4

    if-eqz v9, :cond_4

    .line 421
    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 425
    :cond_4
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_8

    if-eqz v14, :cond_8

    .line 426
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v7, 0x2

    if-eq v14, v7, :cond_7

    const/4 v7, 0x3

    if-eq v14, v7, :cond_6

    const/4 v7, 0x4

    if-eq v14, v7, :cond_5

    .line 443
    new-instance v7, Landroid/view/SurfaceView;

    invoke-direct {v7, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    .line 440
    :cond_5
    new-instance v7, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    .line 434
    :cond_6
    new-instance v7, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 435
    iget-object v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;)V

    .line 436
    iget-boolean v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    .line 437
    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    .line 431
    :cond_7
    new-instance v7, Landroid/view/TextureView;

    invoke-direct {v7, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 446
    :goto_2
    iget-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 449
    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 453
    :goto_3
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_ad_overlay:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 456
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_overlay:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 459
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_artwork:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v11, :cond_9

    .line 460
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    if-eqz v12, :cond_a

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 466
    :cond_a
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitles:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 467
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v3, :cond_b

    .line 468
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 469
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 473
    :cond_b
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_buffering:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    .line 474
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz v3, :cond_c

    .line 475
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :cond_c
    iput v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    .line 480
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_error_message:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 481
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_d

    .line 482
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    :cond_d
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 487
    sget v6, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v3, :cond_e

    .line 489
    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v7, 0x0

    goto :goto_5

    :cond_e
    if-eqz v6, :cond_f

    .line 493
    new-instance v3, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {v3, v0, v9, v7, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 494
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setId(I)V

    .line 495
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 497
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 498
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 499
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 501
    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 503
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_10

    move/from16 v0, v16

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    :goto_6
    iput v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 504
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    .line 505
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    .line 506
    iput-boolean v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v13, :cond_11

    .line 507
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_11

    const/4 v7, 0x1

    :cond_11
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    .line 510
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_12

    .line 511
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    :cond_12
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateControllerVisibility()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->toggleControllerVisibility()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)I
    .locals 0

    .line 266
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->textureViewRotation:I

    return p0
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/ui/PlayerView;I)I
    .locals 0

    .line 266
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->textureViewRotation:I

    return p1
.end method

.method static synthetic access$300(Landroid/view/TextureView;I)V
    .locals 0

    .line 266
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/Player;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method private static applyTextureViewRotation(Landroid/view/TextureView;I)V
    .locals 6

    .line 1493
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1494
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1495
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    div-float v4, v2, v4

    int-to-float p1, p1

    .line 1499
    invoke-virtual {v0, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1502
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1503
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1504
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1506
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v1, p1

    .line 1507
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v2, p1

    .line 1505
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1511
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private closeShutter()V
    .locals 2

    .line 1419
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1420
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1

    .line 1482
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1483
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private static configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1477
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1478
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private hideArtwork()V
    .locals 2

    .line 1412
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 1413
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1414
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isDpadKey(I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

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

.method private isPlayingAd()Z
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeShowController(Z)V
    .locals 2

    .line 1288
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_0

    return-void

    .line 1291
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1292
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1293
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1295
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController(Z)V

    :cond_3
    return-void
.end method

.method private setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1369
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1370
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    .line 1373
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v6, :cond_0

    .line 1374
    check-cast v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 1375
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    goto :goto_1

    .line 1376
    :cond_0
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    if-eqz v6, :cond_3

    .line 1377
    check-cast v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    .line 1378
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    :goto_1
    const/4 v7, 0x3

    if-eq v3, v0, :cond_1

    if-ne v5, v7, :cond_3

    .line 1384
    :cond_1
    array-length v3, v6

    invoke-static {v6, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1385
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-ne v5, v7, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v4
.end method

.method private setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "artworkView"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1398
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1399
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1402
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->onContentAspectRatioChanged(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V

    .line 1403
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1404
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private static setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .locals 0

    .line 1488
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method private shouldShowControllerIndefinitely()Z
    .locals 3

    .line 1301
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1304
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    .line 1305
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1308
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private showController(Z)V
    .locals 1

    .line 1312
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowTimeoutMs(I)V

    .line 1316
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->show()V

    return-void
.end method

.method public static switchTargetView(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ui/PlayerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/ui/PlayerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 532
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 535
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_2
    return-void
.end method

.method private toggleControllerVisibility()Z
    .locals 2

    .line 1275
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1279
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_0

    .line 1280
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateBuffering()V
    .locals 4

    .line 1425
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1426
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1428
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1430
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1431
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private updateContentDescription()V
    .locals 3

    .line 1454
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 1456
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1457
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_1

    .line 1459
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1457
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1463
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1462
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1455
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateControllerVisibility()V
    .locals 1

    .line 1468
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1471
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    :goto_0
    return-void
.end method

.method private updateErrorMessage()V
    .locals 3

    .line 1436
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1437
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1438
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1443
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eqz v1, :cond_2

    .line 1444
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/util/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 1445
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1448
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateForCurrentTrackSelections(Z)V
    .locals 4

    .line 1324
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_7

    .line 1325
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1333
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_1

    .line 1335
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    .line 1338
    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 1339
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v1, v2, :cond_3

    .line 1340
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->getRendererType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1343
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1349
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    .line 1351
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1352
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentStaticMetadata()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1353
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1357
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 1362
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    return-void

    .line 1326
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_8

    .line 1327
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideArtwork()V

    .line 1328
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->closeShutter()V

    :cond_8
    return-void
.end method

.method private useArtwork()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "artworkView"
        }
        result = true
    .end annotation

    .line 1267
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private useController()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "controller"
        }
        result = true
    .end annotation

    .line 1258
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 806
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 810
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isDpadKey(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 812
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 814
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_1

    .line 816
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 821
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 823
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 819
    :cond_4
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    :goto_1
    return v2
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 836
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 1239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1241
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;

    const/4 v3, 0x3

    const-string v4, "Transparent overlay does not impact viewability"

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;-><init>(Landroid/view/View;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v1, :cond_1

    .line 1248
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;-><init>(Landroid/view/View;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getAdOverlayViews()[Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider$-CC;->$default$getAdOverlayViews(Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;)[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .line 1233
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const-string v1, "exo_ad_overlay must be present for ad playback"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getControllerAutoShow()Z
    .locals 1

    .line 912
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    .line 892
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .line 871
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1133
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1144
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    return v0
.end method

.method public getUseController()Z
    .locals 1

    .line 687
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1121
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    :cond_0
    return-void
.end method

.method public isControllerVisible()Z
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onContentAspectRatioChanged(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    .line 1224
    instance-of p3, p3, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1204
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_0

    .line 1205
    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1191
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_0

    .line 1192
    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->onResume()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1149
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1152
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    return v1

    .line 1157
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->isTouching:Z

    if-eqz p1, :cond_2

    .line 1158
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->isTouching:Z

    .line 1159
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->performClick()Z

    return v0

    :cond_2
    return v1

    .line 1154
    :cond_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->isTouching:Z

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1176
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1179
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1170
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 1171
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->toggleControllerVisibility()Z

    move-result v0

    return v0
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1098
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 923
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    .line 933
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideDuringAds:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerHideOnTouch:Z

    .line 903
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 884
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 886
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController()V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 944
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 949
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    .line 951
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;

    if-eqz p1, :cond_2

    .line 953
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    :cond_2
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 799
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 800
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    .line 801
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 679
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 680
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 681
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_0
    return-void
.end method

.method public setErrorMessageProvider(Lcom/google/android/exoplayer2/util/ErrorMessageProvider;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/util/ErrorMessageProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ErrorMessageProvider<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eq v0, p1, :cond_0

    .line 787
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    .line 788
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    :cond_0
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 1
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1086
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setExtraAdGroupMarkers([J[Z)V

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1040
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setFastForwardIncrementMs(I)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 742
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_0

    .line 743
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->keepContentOnPlayerReset:Z

    const/4 p1, 0x0

    .line 744
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/PlaybackPreparer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 968
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 7
    .param p1    # Lcom/google/android/exoplayer2/Player;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 559
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_2

    .line 561
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 560
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 567
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 568
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 570
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 571
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v6, v5, Landroid/view/TextureView;

    if-eqz v6, :cond_4

    .line 572
    check-cast v5, Landroid/view/TextureView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_3

    .line 573
    :cond_4
    instance-of v6, v5, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v6, :cond_5

    .line 574
    check-cast v5, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V

    goto :goto_3

    .line 575
    :cond_5
    instance-of v6, v5, Landroid/view/SurfaceView;

    if-eqz v6, :cond_6

    .line 576
    check-cast v5, Landroid/view/SurfaceView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 579
    :cond_6
    :goto_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 581
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player$TextComponent;->removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 584
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_8

    .line 585
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 587
    :cond_8
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 588
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 589
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 591
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    .line 592
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateErrorMessage()V

    .line 593
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    if-eqz p1, :cond_10

    .line 595
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 597
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v2, v1, Landroid/view/TextureView;

    if-eqz v2, :cond_a

    .line 598
    check-cast v1, Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_4

    .line 599
    :cond_a
    instance-of v2, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v2, :cond_b

    .line 600
    check-cast v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V

    goto :goto_4

    .line 601
    :cond_b
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_c

    .line 602
    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 604
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 606
    :cond_d
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 608
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$TextComponent;->addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 609
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v1, :cond_e

    .line 610
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player$TextComponent;->getCurrentCues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 613
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_f

    .line 614
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 616
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/PlayerView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 617
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_5

    .line 619
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    :goto_5
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1029
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setRewindIncrementMs(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    .line 773
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    if-eq v0, p1, :cond_0

    .line 774
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->showBuffering:I

    .line 775
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateBuffering()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 660
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    if-eq v1, p1, :cond_2

    .line 661
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useArtwork:Z

    .line 662
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_2
    return-void
.end method

.method public setUseController(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 697
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 698
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 701
    :cond_2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useController:Z

    .line 702
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 703
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_2

    .line 704
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_4

    .line 705
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    .line 706
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 708
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 2

    .line 756
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z

    if-eq v0, p1, :cond_0

    .line 757
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->useSensorRotation:Z

    .line 758
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_0

    .line 759
    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 625
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 628
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showController()V
    .locals 1

    .line 852
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController(Z)V

    return-void
.end method
