.class final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrueHdSampleRechunker"
.end annotation


# instance fields
.field private chunkFlags:I

.field private chunkOffset:I

.field private chunkSampleCount:I

.field private chunkSize:I

.field private chunkTimeUs:J

.field private foundSyncframe:Z

.field private final syncframePrefix:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2131
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->syncframePrefix:[B

    return-void
.end method


# virtual methods
.method public outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 2172
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSampleCount:I

    if-lez v0, :cond_0

    .line 2173
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkTimeUs:J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkFlags:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkOffset:I

    iget-object v7, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    const/4 p1, 0x0

    .line 2175
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSampleCount:I

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 2135
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    .line 2136
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSampleCount:I

    return-void
.end method

.method public sampleMetadata(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;JIII)V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 2154
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    if-nez v0, :cond_0

    return-void

    .line 2157
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSampleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSampleCount:I

    if-nez v0, :cond_1

    .line 2159
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkTimeUs:J

    .line 2160
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkFlags:I

    const/4 p2, 0x0

    .line 2161
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    .line 2163
    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSize:I

    .line 2164
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkOffset:I

    .line 2165
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->chunkSampleCount:I

    const/16 p3, 0x10

    if-lt p2, p3, :cond_2

    .line 2166
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V

    :cond_2
    return-void
.end method

.method public startSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2140
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    if-eqz v0, :cond_0

    return-void

    .line 2143
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->syncframePrefix:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 2144
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 2145
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->syncframePrefix:[B

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseTrueHdSyncframeAudioSampleCount([B)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 2148
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->foundSyncframe:Z

    return-void
.end method
