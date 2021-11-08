.class public final synthetic Lcom/google/android/exoplayer2/ext/ffmpeg/-$$Lambda$FfmpegVideoDecoder$aKIa3iYcJg-APIYJl9C43FSmyFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/-$$Lambda$FfmpegVideoDecoder$aKIa3iYcJg-APIYJl9C43FSmyFU;->f$0:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpeg/-$$Lambda$FfmpegVideoDecoder$aKIa3iYcJg-APIYJl9C43FSmyFU;->f$0:Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;

    check-cast p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;->lambda$aKIa3iYcJg-APIYJl9C43FSmyFU(Lcom/google/android/exoplayer2/ext/ffmpeg/FfmpegVideoDecoder;Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    return-void
.end method
