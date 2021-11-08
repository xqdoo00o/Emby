.class public Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field public static final EXTENSION_RENDERER_MODE_PREFER_AUDIO:I = 0x4

.field public static final EXTENSION_RENDERER_MODE_PREFER_TEXT:I = 0x8

.field public static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private allowedVideoJoiningTimeMs:J

.field private captionStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

.field private final context:Landroid/content/Context;

.field private defaultFontPath:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableAsyncQueueing:Z

.field private enableAudioTrackPlaybackParams:Z

.field private enableDecoderFallback:Z

.field private enableFloatOutput:Z

.field private enableOffload:Z

.field private enableSynchronizeCodecInteractionsWithQueueing:Z

.field private extensionRendererMode:I

.field private forceAsyncQueueingSynchronizationWorkaround:Z

.field private forceStereoOutput:Z

.field private mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

.field private preferredExtensionRendererMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private viewportHeight:I

.field private viewportWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->captionStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->defaultFontPath:Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    const-wide/16 v1, 0x1388

    .line 148
    iput-wide v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 149
    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->preferredExtensionRendererMimeTypes:Ljava/util/List;

    .line 151
    sget-object v1, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iput-object v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->captionStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 152
    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->defaultFontPath:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x1388

    .line 164
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget-object v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->captionStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->defaultFontPath:Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 177
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 178
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 179
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->preferredExtensionRendererMimeTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected buildAudioRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Z",
            "Lcom/google/android/exoplayer2/audio/AudioSink;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p8

    const-string v9, "DefaultRenderersFactory"

    .line 623
    new-instance v10, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    move-object v2, v10

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 631
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableAsyncQueueing:Z

    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->experimentalSetAsynchronousBufferQueueingEnabled(Z)V

    .line 632
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->forceAsyncQueueingSynchronizationWorkaround:Z

    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->experimentalSetForceAsyncQueueingSynchronizationWorkaround(Z)V

    .line 634
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableSynchronizeCodecInteractionsWithQueueing:Z

    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(Z)V

    .line 636
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    return-void

    .line 641
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v2

    and-int/lit8 v3, p2, 0x6

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_2

    return-void

    :cond_2
    :goto_0
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    const-string v7, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 652
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 653
    new-array v8, v6, [Ljava/lang/Class;

    const-class v10, Landroid/os/Handler;

    aput-object v10, v8, v5

    const-class v10, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v10, v8, v4

    const-class v10, Lcom/google/android/exoplayer2/audio/AudioSink;

    aput-object v10, v8, v3

    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 659
    new-array v8, v6, [Ljava/lang/Object;

    aput-object p6, v8, v5

    aput-object p7, v8, v4

    aput-object p5, v8, v3

    .line 660
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v2, 0x1

    .line 661
    :try_start_1
    invoke-virtual {v0, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v2, "Loaded LibopusAudioRenderer."

    .line 662
    invoke-static {v9, v2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 667
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating Opus extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move v8, v2

    :catch_2
    :goto_1
    :try_start_2
    const-string v2, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 673
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 674
    new-array v7, v6, [Ljava/lang/Class;

    const-class v10, Landroid/os/Handler;

    aput-object v10, v7, v5

    const-class v10, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v10, v7, v4

    const-class v10, Lcom/google/android/exoplayer2/audio/AudioSink;

    aput-object v10, v7, v3

    .line 675
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 680
    new-array v7, v6, [Ljava/lang/Object;

    aput-object p6, v7, v5

    aput-object p7, v7, v4

    aput-object p5, v7, v3

    .line 681
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v7, v8, 0x1

    .line 682
    :try_start_3
    invoke-virtual {v0, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v2, "Loaded LibflacAudioRenderer."

    .line 683
    invoke-static {v9, v2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 688
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FLAC extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move v7, v8

    :catch_5
    :goto_2
    :try_start_4
    const-string v2, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 695
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v8, 0x5

    .line 696
    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Landroid/os/Handler;

    aput-object v11, v10, v5

    const-class v11, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v11, v10, v4

    const-class v11, Lcom/google/android/exoplayer2/audio/AudioSink;

    aput-object v11, v10, v3

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v6

    const-class v11, Ljava/util/List;

    const/4 v12, 0x4

    aput-object v11, v10, v12

    .line 697
    invoke-virtual {v2, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 704
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p6, v8, v5

    aput-object p7, v8, v4

    aput-object p5, v8, v3

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->forceStereoOutput:Z

    .line 706
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v6

    iget-object v3, v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->preferredExtensionRendererMimeTypes:Ljava/util/List;

    aput-object v3, v8, v12

    .line 705
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Renderer;

    .line 707
    invoke-virtual {v0, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegAudioRenderer."

    .line 708
    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_3

    :catch_6
    move-exception v0

    .line 713
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FFmpeg extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    :goto_3
    return-void
.end method

.method protected buildAudioSink(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 863
    new-instance v6, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 864
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    move-object v0, v6

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;ZZZ)V

    return-object v6
.end method

.method protected buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 828
    new-instance p1, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/metadata/MetadataOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 816
    new-instance p1, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/text/TextOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 732
    new-instance p1, Lcom/google/android/exoplayer2/text/TextRenderer;

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "DefaultRenderersFactory"

    if-nez p4, :cond_0

    const-string p2, "buildTextRenderers: extensions turned off"

    .line 735
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 738
    :cond_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p2

    and-int/lit8 p3, p4, 0xa

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    add-int/lit8 p2, p2, -0x1

    const-string p3, "buildTextRenderers: decremented index"

    .line 742
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_2

    const-string p2, "buildTextRenderers: flags not met"

    .line 744
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const/4 p3, 0x4

    const/4 p4, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x5

    :try_start_0
    const-string v4, "com.google.android.exoplayer2.ext.libass.LibassRenderer"

    .line 752
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 753
    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    const-class v6, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, p4

    const-class v6, Ljava/util/List;

    aput-object v6, v5, p3

    .line 754
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 761
    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->viewportWidth:I

    .line 762
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->viewportHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->captionStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->defaultFontPath:Ljava/lang/String;

    aput-object v6, v5, p4

    iget-object v6, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->preferredExtensionRendererMimeTypes:Ljava/util/List;

    aput-object v6, v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v5, p2, 0x1

    .line 764
    :try_start_1
    invoke-virtual {p5, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string p2, "Loaded LibassRenderer."

    .line 765
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v4, p2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 771
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Error instantiating Libass extension"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception v4

    move v5, p2

    :goto_1
    const-string p2, "Did NOT load LibassRenderer."

    .line 768
    invoke-static {p1, p2, v4}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    :try_start_2
    const-string p2, "com.google.android.exoplayer2.ext.ffmpegsubtitles.FfmpegSubtitleRenderer"

    .line 778
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 779
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v0

    const-class v6, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    aput-object v6, v4, v1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, p4

    const-class v6, Ljava/util/List;

    aput-object v6, v4, p3

    .line 780
    invoke-virtual {p2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 787
    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->viewportWidth:I

    .line 788
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->viewportHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->captionStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->defaultFontPath:Ljava/lang/String;

    aput-object v0, v3, p4

    iget-object p4, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->preferredExtensionRendererMimeTypes:Ljava/util/List;

    aput-object p4, v3, p3

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Renderer;

    .line 790
    invoke-virtual {p5, v5, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string p2, "Loaded FfmpegSubtitleRenderer."

    .line 791
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 797
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Error instantiating FFmpeg Subtitle extension"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p2

    const-string p3, "Did NOT load ffmpegSubtitleRenderer."

    .line 794
    invoke-static {p1, p3, p2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p9

    const-string v11, "DefaultRenderersFactory"

    .line 489
    new-instance v12, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    const/16 v10, 0x32

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p7

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 498
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableAsyncQueueing:Z

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->experimentalSetAsynchronousBufferQueueingEnabled(Z)V

    .line 499
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->forceAsyncQueueingSynchronizationWorkaround:Z

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->experimentalSetForceAsyncQueueingSynchronizationWorkaround(Z)V

    .line 501
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableSynchronizeCodecInteractionsWithQueueing:Z

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(Z)V

    .line 503
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    return-void

    .line 508
    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v2

    and-int/lit8 v3, p2, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_2

    return-void

    :cond_2
    :goto_0
    const/16 v3, 0x32

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x2

    :try_start_0
    const-string v9, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 518
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 519
    new-array v10, v7, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v6

    const-class v12, Landroid/os/Handler;

    aput-object v12, v10, v4

    const-class v12, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    aput-object v12, v10, v8

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v5

    .line 520
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 526
    new-array v10, v7, [Ljava/lang/Object;

    .line 529
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v6

    aput-object p5, v10, v4

    aput-object p6, v10, v8

    .line 532
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v5

    .line 528
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v2, 0x1

    .line 533
    :try_start_1
    invoke-virtual {v0, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v2, "Loaded LibvpxVideoRenderer."

    .line 534
    invoke-static {v11, v2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 539
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating VP9 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move v10, v2

    :catch_2
    :goto_1
    :try_start_2
    const-string v2, "com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer"

    .line 545
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 546
    new-array v9, v7, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v9, v6

    const-class v12, Landroid/os/Handler;

    aput-object v12, v9, v4

    const-class v12, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    aput-object v12, v9, v8

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v9, v5

    .line 547
    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 553
    new-array v9, v7, [Ljava/lang/Object;

    .line 556
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v6

    aput-object p5, v9, v4

    aput-object p6, v9, v8

    .line 559
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v5

    .line 555
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v9, v10, 0x1

    .line 560
    :try_start_3
    invoke-virtual {v0, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v2, "Loaded Libgav1VideoRenderer."

    .line 561
    invoke-static {v11, v2}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 566
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating AV1 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move v9, v10

    :catch_5
    :goto_2
    :try_start_4
    const-string v2, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegVideoRenderer"

    .line 573
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v10, 0x5

    .line 574
    new-array v12, v10, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v6

    const-class v13, Landroid/os/Handler;

    aput-object v13, v12, v4

    const-class v13, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    aput-object v13, v12, v8

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v5

    const-class v13, Ljava/util/List;

    aput-object v13, v12, v7

    .line 575
    invoke-virtual {v2, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 582
    new-array v10, v10, [Ljava/lang/Object;

    .line 585
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v6

    aput-object p5, v10, v4

    aput-object p6, v10, v8

    .line 588
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v5

    iget-object v3, v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->preferredExtensionRendererMimeTypes:Ljava/util/List;

    aput-object v3, v10, v7

    .line 584
    invoke-virtual {v2, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Renderer;

    .line 590
    invoke-virtual {v0, v9, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegVideoRenderer."

    .line 591
    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_3

    :catch_6
    move-exception v0

    .line 596
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FFmpeg extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    :goto_3
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;
    .locals 12

    move-object v10, p0

    .line 432
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 433
    iget-object v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v3, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-boolean v4, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableDecoderFallback:Z

    iget-wide v7, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildVideoRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V

    .line 443
    iget-object v0, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-boolean v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableFloatOutput:Z

    iget-boolean v2, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableAudioTrackPlaybackParams:Z

    iget-boolean v3, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableOffload:Z

    .line 444
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildAudioSink(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 446
    iget-object v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v3, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-boolean v4, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableDecoderFallback:Z

    move-object v0, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V

    .line 456
    :cond_0
    iget-object v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v0, p0

    move-object/from16 v2, p4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildTextRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 458
    iget-object v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildMetadataRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 460
    iget-object v0, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, v0, v1, v11}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 461
    iget-object v0, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v1, v10, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v2, p1

    invoke-virtual {p0, v0, p1, v1, v11}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 462
    new-array v0, v0, [Lcom/google/android/exoplayer2/Renderer;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Renderer;

    return-object v0
.end method

.method public experimentalSetAsynchronousBufferQueueingEnabled(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 272
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableAsyncQueueing:Z

    return-object p0
.end method

.method public experimentalSetForceAsyncQueueingSynchronizationWorkaround(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->forceAsyncQueueingSynchronizationWorkaround:Z

    return-object p0
.end method

.method public experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableSynchronizeCodecInteractionsWithQueueing:Z

    return-object p0
.end method

.method public setAllowedVideoJoiningTimeMs(J)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 421
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    return-object p0
.end method

.method public setCaptionStyle(Lcom/google/android/exoplayer2/text/CaptionStyleCompat;)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->captionStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    return-object p0
.end method

.method public setDefaultFontFilePath(Ljava/lang/String;)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->defaultFontPath:Ljava/lang/String;

    return-object p0
.end method

.method public setEnableAudioFloatOutput(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableFloatOutput:Z

    return-object p0
.end method

.method public setEnableAudioOffload(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 382
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableOffload:Z

    return-object p0
.end method

.method public setEnableAudioTrackPlaybackParams(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 406
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableAudioTrackPlaybackParams:Z

    return-object p0
.end method

.method public setEnableDecoderFallback(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 318
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->enableDecoderFallback:Z

    return-object p0
.end method

.method public setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 195
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    return-object p0
.end method

.method public setForceStereoAudioOutput(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 360
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->forceStereoOutput:Z

    return-object p0
.end method

.method public setMediaCodecSelector(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    return-object p0
.end method

.method public setPreferredExtensionRendererMimeTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/DefaultRenderersFactory;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 208
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->preferredExtensionRendererMimeTypes:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public setViewportSize(II)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 0

    .line 221
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->viewportWidth:I

    .line 222
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->viewportHeight:I

    return-object p0
.end method

.method public setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;)Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 1

    .line 236
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getCurrentDisplayModeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 237
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setViewportSize(II)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object p1

    return-object p1
.end method
