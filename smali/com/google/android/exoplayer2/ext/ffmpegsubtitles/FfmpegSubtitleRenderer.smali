.class public Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "FfmpegSubtitleRenderer.java"


# static fields
.field private static final INFLATE_HEADER:B = 0x78t

.field private static final TAG:Ljava/lang/String; = "FfmpegSubtitleRenderer"


# instance fields
.field private final buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final defaultFontPath:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final defaultStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private hasDecodedContent:Z

.field private final inflatedBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private inflater:Ljava/util/zip/Inflater;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inputStreamEnded:Z

.field private nativeContext:J

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

.field private final screenHeight:I

.field private final screenWidth:I

.field private surface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/text/CaptionStyleCompat;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/exoplayer2/text/CaptionStyleCompat;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 62
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 63
    iput p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->screenWidth:I

    .line 64
    iput p2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->screenHeight:I

    .line 65
    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->defaultStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 66
    iput-object p5, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->preferredMimeTypes:Ljava/util/List;

    .line 67
    iput-object p4, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->defaultFontPath:Ljava/lang/String;

    .line 68
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 69
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 70
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 71
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inflatedBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FFmpeg version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FfmpegSubtitleRenderer"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearOutput()V
    .locals 5

    .line 274
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 275
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegClearSurface(J)V

    :cond_0
    return-void
.end method

.method private getExtraData(Ljava/lang/String;Ljava/util/List;)[B
    .locals 8
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

    .line 319
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "application/x-subrip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "application/vobsub"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "text/x-ssa"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v2, "application/smil"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "application/pgs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    return-object v1

    .line 332
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    .line 324
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v7, :cond_4

    .line 325
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a6813e3 -> :sswitch_4
        -0x298f5a4 -> :sswitch_3
        0x310bebca -> :sswitch_2
        0x45059676 -> :sswitch_1
        0x63771bad -> :sswitch_0
    .end sparse-switch
.end method

.method private isExternalFormat(Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .line 300
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 303
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isImageBasedSub(Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .line 161
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/vobsub"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/pgs"

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method private maybeInflateData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 3

    .line 167
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 168
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    goto :goto_0

    :cond_0
    const/16 v2, 0x78

    if-ne v0, v2, :cond_2

    .line 174
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inflater:Ljava/util/zip/Inflater;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inflater:Ljava/util/zip/Inflater;

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inflatedBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inflater:Ljava/util/zip/Inflater;

    invoke-static {p1, v0, v2}, Lcom/google/android/exoplayer2/util/Util;->inflate(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inflatedBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inflatedBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 9

    .line 280
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 281
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 282
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->getCodecName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 285
    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->getExtraData(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    iget v1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->screenWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->screenHeight:I

    .line 284
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegInitialize(Ljava/lang/String;[BII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    .line 286
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->defaultStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v4, p1, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->fontSize:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->defaultStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v5, p1, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->defaultStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v6, p1, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->defaultStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    iget v7, p1, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->defaultFontPath:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegAddDefaultStyles(JIIIILjava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->onOutputChanged()V

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->resetDecoder(Lcom/google/android/exoplayer2/Format;)V

    :goto_0
    return-void
.end method

.method private onOutputChanged()V
    .locals 5

    .line 208
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 209
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegSetSurface(JLandroid/view/Surface;)I

    :cond_0
    return-void
.end method

.method private onOutputRemoved()V
    .locals 0

    return-void
.end method

.method private onOutputReset()V
    .locals 5

    .line 217
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 218
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegOutputReset(J)V

    :cond_0
    return-void
.end method

.method private resetDecoder(Lcom/google/android/exoplayer2/Format;)V
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 311
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->hasDecodedContent:Z

    if-eqz p1, :cond_0

    .line 312
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegReset(J)V

    const/4 p1, 0x0

    .line 313
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->hasDecodedContent:Z

    .line 314
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "FfmpegSubtitleRenderer"

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

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 263
    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2906

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_2

    .line 266
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->preferredMimeTypes:Ljava/util/List;

    goto :goto_0

    .line 269
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 5

    .line 253
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->resetDecoder(Lcom/google/android/exoplayer2/Format;)V

    .line 255
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegRelease(J)V

    .line 256
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    :cond_0
    return-void
.end method

.method protected onEnabled(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 248
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->onEnabled(ZZ)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->clearOutput()V

    .line 235
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->resetDecoder(Lcom/google/android/exoplayer2/Format;)V

    const/4 p1, 0x0

    .line 236
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputStreamEnded:Z

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->clearOutput()V

    const/4 p1, 0x0

    .line 242
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputStreamEnded:Z

    return-void
.end method

.method public render(JJ)V
    .locals 9

    .line 97
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->hasDecodedContent:Z

    if-eqz p3, :cond_0

    .line 98
    iget-wide p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    invoke-static {p3, p4, p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegRenderFrame(JJ)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->onOutputChanged()V

    .line 103
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    .line 104
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    invoke-static {v1, v2, p1, p2}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegAcceptsPackets(JJ)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 107
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->isExternalFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 108
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputStreamEnded:Z

    if-nez p3, :cond_2

    .line 110
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, p3, v1, p4}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    .line 111
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputStreamEnded:Z

    .line 113
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v4, p3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v7, p3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    move-wide v5, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegDecodeFile(JLjava/lang/String;JJ)V

    .line 114
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->hasDecodedContent:Z

    return-void

    .line 118
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputStreamEnded:Z

    if-nez p1, :cond_b

    .line 119
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez p3, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    const/4 p2, -0x5

    if-ne p1, p2, :cond_5

    .line 121
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    return-void

    :cond_5
    const/4 p2, -0x4

    if-ne p1, p2, :cond_7

    .line 124
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 125
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputStreamEnded:Z

    return-void

    .line 128
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    goto :goto_1

    :cond_7
    const/4 p2, -0x3

    if-ne p1, p2, :cond_8

    return-void

    .line 133
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_b

    iget-wide p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-eqz p3, :cond_b

    .line 134
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    if-gtz p2, :cond_9

    .line 137
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    return-void

    .line 141
    :cond_9
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->isImageBasedSub(Lcom/google/android/exoplayer2/Format;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 142
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 143
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->maybeInflateData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 144
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 145
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 146
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p3

    invoke-virtual {p1, p2, p4, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 147
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 148
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    :cond_a
    move-object v3, p1

    move v4, p2

    .line 153
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->nativeContext:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v5, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegDecodeStream(JLjava/nio/ByteBuffer;IJ)V

    .line 154
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->hasDecodedContent:Z

    .line 155
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    :cond_b
    return-void
.end method

.method protected final setOutputSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_1

    .line 194
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->onOutputChanged()V

    goto :goto_0

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->onOutputRemoved()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 203
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->onOutputReset()V

    :cond_2
    :goto_0
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    invoke-static {}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->supportsFormat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 80
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 81
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 82
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleRenderer;->preferredMimeTypes:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    .line 85
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    .line 86
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    :goto_0
    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 78
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1
.end method
