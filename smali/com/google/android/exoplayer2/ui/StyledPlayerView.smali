.class public Lcom/google/android/exoplayer2/ui/StyledPlayerView;
.super Landroid/widget/FrameLayout;
.source "StyledPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerView$ShowBuffering;
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

.field private final componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

.field private final contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private controllerAutoShow:Z

.field private controllerHideDuringAds:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;
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

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 342
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 344
    new-instance v3, Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isInEditMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 347
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 348
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    .line 349
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    .line 350
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    .line 351
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 352
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    .line 353
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 354
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 355
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 356
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 357
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 358
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 363
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->addView(Landroid/view/View;)V

    return-void

    .line 369
    :cond_1
    sget v3, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_player_view:I

    const/16 v5, 0x1388

    const/4 v6, 0x1

    .line 380
    iput-boolean v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView:[I

    invoke-virtual {v8, v2, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 385
    :try_start_0
    sget v9, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_shutter_background_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    .line 386
    sget v10, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_shutter_background_color:I

    .line 387
    invoke-virtual {v8, v10, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 388
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_player_layout_id:I

    .line 389
    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 390
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_use_artwork:I

    invoke-virtual {v8, v11, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 391
    sget v12, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_default_artwork:I

    .line 392
    invoke-virtual {v8, v12, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 393
    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_use_controller:I

    invoke-virtual {v8, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 394
    sget v14, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_surface_type:I

    invoke-virtual {v8, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 395
    sget v15, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_resize_mode:I

    invoke-virtual {v8, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 396
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_show_timeout:I

    .line 397
    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 398
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_hide_on_touch:I

    .line 399
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 400
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_auto_show:I

    .line 401
    invoke-virtual {v8, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 402
    sget v6, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_show_buffering:I

    move/from16 v16, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 403
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_keep_content_on_player_reset:I

    move/from16 v17, v4

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    .line 404
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    .line 407
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_hide_during_ads:I

    const/4 v4, 0x1

    .line 408
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 409
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerView_use_sensor_rotation:I

    move/from16 v18, v3

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z

    .line 410
    invoke-virtual {v8, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
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

    .line 413
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

    .line 416
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v3, 0x40000

    .line 417
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setDescendantFocusability(I)V

    .line 420
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_content_frame:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 421
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_3

    .line 422
    invoke-static {v3, v15}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    .line 426
    :cond_3
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_shutter:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    .line 427
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    if-eqz v3, :cond_4

    if-eqz v9, :cond_4

    .line 428
    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 432
    :cond_4
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_8

    if-eqz v14, :cond_8

    .line 433
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v7, 0x2

    if-eq v14, v7, :cond_7

    const/4 v7, 0x3

    if-eq v14, v7, :cond_6

    const/4 v7, 0x4

    if-eq v14, v7, :cond_5

    .line 450
    new-instance v7, Landroid/view/SurfaceView;

    invoke-direct {v7, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    .line 447
    :cond_5
    new-instance v7, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    .line 441
    :cond_6
    new-instance v7, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 442
    iget-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setSingleTapListener(Lcom/google/android/exoplayer2/ui/spherical/SingleTapListener;)V

    .line 443
    iget-boolean v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z

    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    .line 444
    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    .line 438
    :cond_7
    new-instance v7, Landroid/view/TextureView;

    invoke-direct {v7, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    .line 453
    :goto_2
    iget-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 456
    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    .line 460
    :goto_3
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_ad_overlay:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 463
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_overlay:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 466
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_artwork:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v11, :cond_9

    .line 467
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork:Z

    if-eqz v12, :cond_a

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 473
    :cond_a
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitles:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 474
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v3, :cond_b

    .line 475
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 476
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 480
    :cond_b
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_buffering:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    .line 481
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz v3, :cond_c

    .line 482
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_c
    iput v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    .line 487
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_error_message:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 488
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_d

    .line 489
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    :cond_d
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 494
    sget v6, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v3, :cond_e

    .line 496
    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v7, 0x0

    goto :goto_5

    :cond_e
    if-eqz v6, :cond_f

    .line 500
    new-instance v3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {v3, v0, v9, v7, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 501
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setId(I)V

    .line 502
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 504
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 505
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 506
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 508
    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 510
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_10

    move/from16 v0, v16

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    :goto_6
    iput v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    .line 511
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    .line 512
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    .line 513
    iput-boolean v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    if-eqz v13, :cond_11

    .line 514
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_11

    const/4 v7, 0x1

    :cond_11
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    .line 515
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_12

    .line 516
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hideImmediately()V

    .line 517
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V

    .line 519
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateControllerVisibility()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isPlayingAd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z
    .locals 0

    .line 268
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->toggleControllerVisibility()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)I
    .locals 0

    .line 268
    iget p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->textureViewRotation:I

    return p0
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/ui/StyledPlayerView;I)I
    .locals 0

    .line 268
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->textureViewRotation:I

    return p1
.end method

.method static synthetic access$300(Landroid/view/TextureView;I)V
    .locals 0

    .line 268
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->applyTextureViewRotation(Landroid/view/TextureView;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/Player;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/StyledPlayerView;Z)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateBuffering()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

    return-void
.end method

.method private static applyTextureViewRotation(Landroid/view/TextureView;I)V
    .locals 6

    .line 1515
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1516
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1517
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

    .line 1521
    invoke-virtual {v0, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1524
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1525
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1526
    invoke-virtual {v0, v3, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1528
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v1, p1

    .line 1529
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v2, p1

    .line 1527
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1533
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private closeShutter()V
    .locals 2

    .line 1441
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1442
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1

    .line 1504
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1505
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

    .line 1499
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1500
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private hideArtwork()V
    .locals 2

    .line 1434
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 1435
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1436
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

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

    .line 1342
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

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

    .line 1308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_0

    return-void

    .line 1311
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1312
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1313
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1314
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1316
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showController(Z)V

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

    .line 1391
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1392
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    .line 1395
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v6, :cond_0

    .line 1396
    check-cast v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 1397
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    goto :goto_1

    .line 1398
    :cond_0
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    if-eqz v6, :cond_3

    .line 1399
    check-cast v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureData:[B

    .line 1400
    iget v5, v5, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->pictureType:I

    :goto_1
    const/4 v7, 0x3

    if-eq v3, v0, :cond_1

    if-ne v5, v7, :cond_3

    .line 1406
    :cond_1
    array-length v3, v6

    invoke-static {v6, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1407
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

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

    .line 1420
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1421
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1424
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onContentAspectRatioChanged(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V

    .line 1425
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1426
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private static setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .locals 0

    .line 1510
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method private shouldShowControllerIndefinitely()Z
    .locals 3

    .line 1322
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1325
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    .line 1326
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1327
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1330
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Player;

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

    .line 1334
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowTimeoutMs(I)V

    .line 1338
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->show()V

    return-void
.end method

.method public static switchTargetView(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/ui/StyledPlayerView;Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/ui/StyledPlayerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 541
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 544
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_2
    return-void
.end method

.method private toggleControllerVisibility()Z
    .locals 3

    .line 1293
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1297
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    return v2

    .line 1299
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_2

    .line 1300
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hide()V

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private updateBuffering()V
    .locals 4

    .line 1447
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1448
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1450
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1452
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1453
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->bufferingView:Landroid/view/View;

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

    .line 1476
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 1478
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1479
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_1

    .line 1481
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1479
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1485
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1484
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1477
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateControllerVisibility()V
    .locals 1

    .line 1490
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideController()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1493
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    :goto_0
    return-void
.end method

.method private updateErrorMessage()V
    .locals 3

    .line 1458
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1459
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1460
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1461
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1465
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eqz v1, :cond_2

    .line 1466
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/util/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 1467
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1468
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1470
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateForCurrentTrackSelections(Z)V
    .locals 4

    .line 1346
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_7

    .line 1347
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1355
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_1

    .line 1357
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->closeShutter()V

    .line 1360
    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 1361
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v1, v2, :cond_3

    .line 1362
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->getRendererType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1365
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideArtwork()V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1371
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->closeShutter()V

    .line 1373
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1374
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

    .line 1375
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1379
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 1384
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideArtwork()V

    return-void

    .line 1348
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    if-nez p1, :cond_8

    .line 1349
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideArtwork()V

    .line 1350
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->closeShutter()V

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

    .line 1285
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork:Z

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

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

    .line 1276
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

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

    .line 815
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 819
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isDpadKey(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 821
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 823
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    goto :goto_1

    .line 825
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 830
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 832
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 828
    :cond_4
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    :goto_1
    return v2
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 845
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

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

    .line 1257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1259
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;

    const/4 v3, 0x3

    const-string v4, "Transparent overlay does not impact viewability"

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;-><init>(Landroid/view/View;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v1, :cond_1

    .line 1266
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;-><init>(Landroid/view/View;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
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

    .line 1251
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const-string v1, "exo_ad_overlay must be present for ad playback"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getControllerAutoShow()Z
    .locals 1

    .line 921
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    .line 901
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .line 880
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1152
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1163
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork:Z

    return v0
.end method

.method public getUseController()Z
    .locals 1

    .line 696
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1140
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hide()V

    :cond_0
    return-void
.end method

.method public isControllerFullyVisible()Z
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

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

    .line 1242
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

    .line 1222
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_0

    .line 1223
    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1209
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_0

    .line 1210
    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->onResume()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1168
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1171
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    return v1

    .line 1176
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isTouching:Z

    if-eqz p1, :cond_2

    .line 1177
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isTouching:Z

    .line 1178
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->performClick()Z

    move-result p1

    return p1

    :cond_2
    return v1

    .line 1173
    :cond_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->isTouching:Z

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1194
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1197
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1188
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 1189
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->toggleControllerVisibility()Z

    move-result v0

    return v0
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1117
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setControlDispatcher(Lcom/google/android/exoplayer2/ControlDispatcher;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 932
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    .line 942
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideDuringAds:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerHideOnTouch:Z

    .line 912
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 974
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;)V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerShowTimeoutMs:I

    .line 893
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showController()V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 953
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 958
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->removeVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V

    .line 960
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controllerVisibilityListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;

    if-eqz p1, :cond_2

    .line 962
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->addVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V

    :cond_2
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 808
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 809
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    .line 810
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 688
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 689
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 690
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

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

    .line 795
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    if-eq v0, p1, :cond_0

    .line 796
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->errorMessageProvider:Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    .line 797
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

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

    .line 1105
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setExtraAdGroupMarkers([J[Z)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_0

    .line 752
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->keepContentOnPlayerReset:Z

    const/4 p1, 0x0

    .line 753
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

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

    .line 989
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 7
    .param p1    # Lcom/google/android/exoplayer2/Player;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 568
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

    .line 570
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

    .line 569
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 576
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 577
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 579
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 580
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v6, v5, Landroid/view/TextureView;

    if-eqz v6, :cond_4

    .line 581
    check-cast v5, Landroid/view/TextureView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_3

    .line 582
    :cond_4
    instance-of v6, v5, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v6, :cond_5

    .line 583
    check-cast v5, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V

    goto :goto_3

    .line 584
    :cond_5
    instance-of v6, v5, Landroid/view/SurfaceView;

    if-eqz v6, :cond_6

    .line 585
    check-cast v5, Landroid/view/SurfaceView;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/Player$VideoComponent;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 588
    :cond_6
    :goto_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 590
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player$TextComponent;->removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 593
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_8

    .line 594
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 596
    :cond_8
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    .line 597
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 598
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 600
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateBuffering()V

    .line 601
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateErrorMessage()V

    .line 602
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    if-eqz p1, :cond_10

    .line 604
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getVideoComponent()Lcom/google/android/exoplayer2/Player$VideoComponent;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 606
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v2, v1, Landroid/view/TextureView;

    if-eqz v2, :cond_a

    .line 607
    check-cast v1, Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_4

    .line 608
    :cond_a
    instance-of v2, v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v2, :cond_b

    .line 609
    check-cast v1, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setVideoComponent(Lcom/google/android/exoplayer2/Player$VideoComponent;)V

    goto :goto_4

    .line 610
    :cond_b
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_c

    .line 611
    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 613
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$VideoComponent;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 615
    :cond_d
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getTextComponent()Lcom/google/android/exoplayer2/Player$TextComponent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 617
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$TextComponent;->addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 618
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v1, :cond_e

    .line 619
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player$TextComponent;->getCurrentCues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 622
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_f

    .line 623
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 625
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 626
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->maybeShowController(Z)V

    goto :goto_5

    .line 628
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->hideController()V

    :goto_5
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    .line 782
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    if-eq v0, p1, :cond_0

    .line 783
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showBuffering:I

    .line 784
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateBuffering()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowSubtitleButton(Z)V

    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setShowVrButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->artworkView:Landroid/widget/ImageView;

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

    .line 669
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork:Z

    if-eq v1, p1, :cond_2

    .line 670
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useArtwork:Z

    .line 671
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_2
    return-void
.end method

.method public setUseController(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 706
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

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

    .line 707
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 710
    :cond_2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController:Z

    .line 711
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 712
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_2

    .line 713
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    if-eqz p1, :cond_4

    .line 714
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->hide()V

    .line 715
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->controller:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 717
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->updateContentDescription()V

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 2

    .line 765
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z

    if-eq v0, p1, :cond_0

    .line 766
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->useSensorRotation:Z

    .line 767
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    if-eqz v1, :cond_0

    .line 768
    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setUseSensorRotation(Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 634
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 637
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showController()V
    .locals 1

    .line 861
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->shouldShowControllerIndefinitely()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->showController(Z)V

    return-void
.end method
