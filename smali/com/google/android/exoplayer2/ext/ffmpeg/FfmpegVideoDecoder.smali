.class final Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;
.super Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.source "FfmpegVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/decoder/SimpleDecoder<",
        "Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;",
        "Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;",
        "Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FfmpegVideoDecoder"

.field private static final VIDEO_DECODER_ERROR_INVALID_DATA:I = -0x1

.field private static final VIDEO_DECODER_ERROR_OTHER:I = -0x2

.field private static final VIDEO_DECODER_ERROR_READ_FRAME:I = -0x3

.field private static final VIDEO_DECODER_SUCCESS:I


# instance fields
.field private final codecName:Ljava/lang/String;

.field private final extraData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private format:Lcom/google/android/exoplayer2/Format;

.field private nativeContext:J

.field private volatile outputMode:I


# direct methods
.method public constructor <init>(IIIILcom/google/android/exoplayer2/Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
        }
    .end annotation

    .line 69
    new-array p1, p1, [Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    new-array p2, p2, [Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    .line 72
    invoke-static {}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->getCodecName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->codecName:Ljava/lang/String;

    .line 76
    iget-object p1, p5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p2, p5, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->getExtraData(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->extraData:[B

    .line 77
    iput-object p5, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->format:Lcom/google/android/exoplayer2/Format;

    .line 78
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->codecName:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->extraData:[B

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->ffmpegInitialize(Ljava/lang/String;[BI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    .line 79
    iget-wide p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    const-wide/16 p4, 0x0

    cmp-long v0, p1, p4

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->setInitialInputBufferSize(I)V

    return-void

    .line 80
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Failed to initialize decoder."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Failed to load decoder native library."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native ffmpegFlushOutput(J)I
.end method

.method private native ffmpegInitialize(Ljava/lang/String;[BI)J
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private native ffmpegReceiveFrame(JILcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;Z)I
.end method

.method private native ffmpegRelease(J)V
.end method

.method private native ffmpegRenderFrame(JLandroid/view/Surface;Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;II)I
.end method

.method private native ffmpegReset(J)J
.end method

.method private native ffmpegSendPacket(JLjava/nio/ByteBuffer;IJ)I
.end method

.method private static getExtraData(Ljava/lang/String;Ljava/util/List;)[B
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "video/mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "video/avc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "video/mp4v-es"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "video/mpeg2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "video/wvc1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "video/mpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "video/hevc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 105
    :pswitch_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 93
    :pswitch_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 94
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 95
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 96
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x63185e82 -> :sswitch_6
        -0x6315f167 -> :sswitch_5
        -0x63114f9f -> :sswitch_4
        0x57c4b9 -> :sswitch_3
        0x46cdc642 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x4f62635d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$aKIa3iYcJg-APIYJl9C43FSmyFU(Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInputBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->createInputBuffer()Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createInputBuffer()Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;
    .locals 2

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Lcom/google/android/exoplayer2/decoder/OutputBuffer;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->createOutputBuffer()Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createOutputBuffer()Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;
    .locals 2

    .line 133
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    new-instance v1, Lcom/google/android/exoplayer2/ext/ffmpeg/-$$Lambda$FfmpegVideoDecoder$aKIa3iYcJg-APIYJl9C43FSmyFU;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ext/ffmpeg/-$$Lambda$FfmpegVideoDecoder$aKIa3iYcJg-APIYJl9C43FSmyFU;-><init>(Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;-><init>(Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner;)V

    return-object v0
.end method

.method protected bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
    .locals 2

    .line 194
    new-instance v0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic decode(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/decoder/OutputBuffer;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 36
    check-cast p1, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    check-cast p2, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->decode(Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected decode(Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;Z)Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p3, :cond_0

    .line 141
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->ffmpegReset(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    .line 142
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    .line 143
    new-instance p1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Error resetting (see logcat)."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 148
    :cond_0
    iget-object p3, p1, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 151
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->timeUs:J

    move-object v0, p0

    move-object v3, p3

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->ffmpegSendPacket(JLjava/nio/ByteBuffer;IJ)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIDEO_DECODER_ERROR_READ_FRAME: timeUs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->timeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FfmpegVideoDecoder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->ffmpegFlushOutput(J)I

    move-result v1

    if-nez v1, :cond_1

    .line 160
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->timeUs:J

    move-object v0, p0

    move-object v3, p3

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->ffmpegSendPacket(JLjava/nio/ByteBuffer;IJ)I

    move-result v0

    :cond_1
    const/4 p3, 0x0

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 166
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->setFlags(I)V

    return-object p3

    :cond_2
    const-string v3, "ffmpegDecode error: (see logcat)"

    const/4 v4, -0x2

    if-ne v0, v4, :cond_3

    .line 169
    new-instance p1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    invoke-direct {p1, v3}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 173
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    .line 176
    iget-wide v6, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    iget v8, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->outputMode:I

    move-object v5, p0

    move-object v9, p2

    move v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->ffmpegReceiveFrame(JILcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;Z)I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 178
    new-instance p1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    invoke-direct {p1, v3}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    if-ne v5, v2, :cond_5

    .line 182
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->addFlag(I)V

    :cond_5
    if-nez v0, :cond_6

    .line 186
    iget-object p1, p1, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->format:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p2, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->format:Lcom/google/android/exoplayer2/Format;

    :cond_6
    return-object p3
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegLibrary;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 199
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 200
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->ffmpegRelease(J)V

    const-wide/16 v0, 0x0

    .line 201
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    return-void
.end method

.method public renderToSurface(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;
        }
    .end annotation

    .line 215
    iget v0, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 218
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->nativeContext:J

    iget v7, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->width:I

    iget v8, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->height:I

    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->ffmpegRenderFrame(JLandroid/view/Surface;Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;II)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_0

    return-void

    .line 221
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Buffer render error: "

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;

    const-string p2, "Invalid output mode."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputMode(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->outputMode:I

    return-void
.end method
