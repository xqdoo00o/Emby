.class public final Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;
.super Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;
.source "FfmpegVideoRenderer.java"


# static fields
.field private static final DEFAULT_INPUT_BUFFER_SIZE:I

.field private static final DEFAULT_NUM_OF_INPUT_BUFFERS:I = 0x4

.field private static final DEFAULT_NUM_OF_OUTPUT_BUFFERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FfmpegVideoRenderer"


# instance fields
.field private decoder:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final numInputBuffers:I

.field private final numOutputBuffers:I

.field private preferredMimeTypes:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final threads:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    const/16 v1, 0x500

    .line 56
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v1

    const/16 v2, 0x2d0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    mul-int v1, v1, v0

    mul-int/lit16 v1, v1, 0x1800

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->DEFAULT_INPUT_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IIIILjava/util/List;)V
    .locals 0
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "IIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;-><init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    .line 124
    iput p6, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->threads:I

    .line 125
    iput p7, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->numInputBuffers:I

    .line 126
    iput p8, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->numOutputBuffers:I

    .line 127
    iput-object p9, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->preferredMimeTypes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILjava/util/List;)V
    .locals 11
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x4

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v10, p6

    .line 89
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;-><init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;IIIILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/Decoder;
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
            ")",
            "Lcom/google/android/exoplayer2/decoder/Decoder<",
            "Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;",
            "Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;",
            "Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
        }
    .end annotation

    const-string p2, "createFfmpegVideoDecoder"

    .line 159
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 160
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget p2, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->DEFAULT_INPUT_BUFFER_SIZE:I

    :goto_0
    move v3, p2

    .line 162
    new-instance p2, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;

    iget v1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->numInputBuffers:I

    iget v2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->numOutputBuffers:I

    iget v4, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->threads:I

    move-object v0, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;-><init>(IIIILcom/google/android/exoplayer2/Format;)V

    .line 164
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;

    .line 165
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-object p2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "FfmpegVideoRenderer"

    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/16 v0, 0x2906

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 191
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->preferredMimeTypes:Ljava/util/List;

    goto :goto_0

    .line 194
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->handleMessage(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected renderOutputBufferToSurface(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->renderToSurface(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    .line 177
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    return-void

    .line 173
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Failed to render output buffer to surface: decoder is not initialized."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setDecoderOutputMode(I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->decoder:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->setOutputMode(I)V

    :cond_0
    return-void
.end method

.method public final supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .line 138
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->supportsFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    .line 142
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 143
    :cond_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 144
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 146
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoRenderer;->preferredMimeTypes:Ljava/util/List;

    .line 147
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    :goto_0
    const/16 v0, 0x10

    .line 148
    invoke-static {p1, v0, v2}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v2
.end method
