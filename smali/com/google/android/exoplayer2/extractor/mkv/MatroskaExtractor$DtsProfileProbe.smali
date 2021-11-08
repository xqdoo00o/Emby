.class final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$DtsProfileProbe;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DtsProfileProbe"
.end annotation


# instance fields
.field private isProfileDetermined:Z

.field public outputFormat:Lcom/google/android/exoplayer2/Format;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0

    .line 2180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$DtsProfileProbe;-><init>()V

    return-void
.end method

.method private commitOutputFormat(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V
    .locals 1

    const/4 v0, 0x1

    .line 2250
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$DtsProfileProbe;->isProfileDetermined:Z

    .line 2251
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$DtsProfileProbe;->outputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method private readOutputFormat(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V
    .locals 6

    const/16 p2, 0x80

    .line 2200
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2201
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-array v1, p2, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 2202
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, 0xa

    .line 2204
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    if-ge v4, v5, :cond_1

    shl-int/lit8 v3, v3, 0x8

    .line 2206
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    or-int/2addr v3, v4

    .line 2207
    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/DtsUtil;->isSyncWord(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2208
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    add-int/lit8 v1, v1, -0x3

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/audio/DtsUtil;->getDtsFrameSize([BI)I

    move-result v1

    .line 2209
    rem-int/lit8 v3, v1, 0x4

    add-int/2addr v1, v3

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-gtz v1, :cond_2

    .line 2215
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void

    :cond_2
    sub-int p2, v1, p2

    .line 2219
    :try_start_1
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    sub-int/2addr p3, v1

    if-lez p3, :cond_5

    .line 2224
    rem-int/lit8 p2, p3, 0x4

    add-int/2addr p3, p2

    .line 2225
    new-array p2, p3, [B

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    .line 2226
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 2227
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p2

    if-ge v2, p2, :cond_5

    shl-int/lit8 p2, v3, 0x8

    .line 2229
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p3

    or-int v3, p2, p3

    .line 2230
    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/DtsUtil;->isLosslessSyncWord(I)Z

    move-result p2

    if-nez p2, :cond_4

    .line 2231
    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/DtsUtil;->isHighResSyncWord(I)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2232
    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$DtsProfileProbe;->outputFormat:Lcom/google/android/exoplayer2/Format;

    .line 2233
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    const-string p3, "audio/vnd.dts.hd"

    .line 2234
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    .line 2235
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$DtsProfileProbe;->outputFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_0
    move-exception p2

    :try_start_2
    const-string p3, "MatroskaExtractor"

    const-string v0, "Failed to determine DTS Profile."

    .line 2242
    invoke-static {p3, v0, p2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2245
    :cond_5
    :goto_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void

    :goto_5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 2246
    throw p2
.end method


# virtual methods
.method public identifyProfile(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V
    .locals 1

    .line 2187
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$DtsProfileProbe;->isProfileDetermined:Z

    if-eqz v0, :cond_0

    return-void

    .line 2190
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$DtsProfileProbe;->readOutputFormat(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V

    .line 2191
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$DtsProfileProbe;->commitOutputFormat(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V

    return-void
.end method
