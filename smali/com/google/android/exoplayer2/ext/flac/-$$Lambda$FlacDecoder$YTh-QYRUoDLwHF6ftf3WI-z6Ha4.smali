.class public final synthetic Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$FlacDecoder$YTh-QYRUoDLwHF6ftf3WI-z6Ha4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/OutputBuffer$Owner;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$FlacDecoder$YTh-QYRUoDLwHF6ftf3WI-z6Ha4;->f$0:Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/-$$Lambda$FlacDecoder$YTh-QYRUoDLwHF6ftf3WI-z6Ha4;->f$0:Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;

    check-cast p1, Lcom/google/android/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;->lambda$YTh-QYRUoDLwHF6ftf3WI-z6Ha4(Lcom/google/android/exoplayer2/ext/flac/FlacDecoder;Lcom/google/android/exoplayer2/decoder/OutputBuffer;)V

    return-void
.end method
