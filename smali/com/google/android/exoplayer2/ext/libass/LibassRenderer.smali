.class public Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "LibassRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LibassRenderer"


# instance fields
.field private decodeThread:Ljava/lang/Thread;

.field private decodeThreadReleased:Z

.field private final defaultFontPath:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final defaultStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private final inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inputStreamEnded:Z

.field private final lock:Ljava/lang/Object;

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

.field private srcHeight:I

.field private srcWidth:I

.field private surface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private trackInitialized:Z


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/text/CaptionStyleCompat;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
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

    .line 59
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->lock:Ljava/lang/Object;

    .line 61
    iput p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->screenWidth:I

    .line 62
    iput p2, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->screenHeight:I

    .line 63
    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->defaultStyle:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 64
    iput-object p5, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->preferredMimeTypes:Ljava/util/List;

    .line 65
    iput-object p4, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->defaultFontPath:Ljava/lang/String;

    .line 66
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 67
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->run()V

    return-void
.end method

.method private canDecode()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputStreamEnded:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private clearOutput()V
    .locals 5

    .line 282
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 283
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->libassClearSurface(J)V

    :cond_0
    return-void
.end method

.method private decode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decodeThreadReleased:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->canDecode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 116
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decodeThreadReleased:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 117
    monitor-exit v0

    return v1

    .line 119
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decodeInternal()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 119
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getExtraData(Ljava/lang/String;Ljava/util/List;)[B
    .locals 2
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

    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x310bebca

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "text/x-ssa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    return-object v0

    .line 333
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    .line 334
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_3
    return-object v0
.end method

.method private onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 292
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->getExtraData(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    iget v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->screenWidth:I

    iget v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->screenHeight:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->defaultFontPath:Ljava/lang/String;

    .line 293
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->libassInitialize([BIILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    .line 296
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->attachmentData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format$AttachmentData;

    .line 297
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format$AttachmentData;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format$AttachmentData;->data:[B

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->libassAddFont(JLjava/lang/String;[B)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->onOutputChanged()V

    goto :goto_1

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->resetDecoder(Lcom/google/android/exoplayer2/Format;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 290
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onOutputChanged()V
    .locals 5

    .line 212
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 213
    iget v3, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->srcWidth:I

    iget v4, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->srcHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->libassSetSurface(JLandroid/view/Surface;II)I

    :cond_0
    return-void
.end method

.method private onOutputRemoved()V
    .locals 0

    return-void
.end method

.method private onOutputReset()V
    .locals 5

    .line 221
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 222
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->libassOutputReset(J)V

    :cond_0
    return-void
.end method

.method private resetDecoder(Lcom/google/android/exoplayer2/Format;)V
    .locals 6
    .param p1    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 315
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->releaseDecoderThread()V

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->trackInitialized:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 320
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->getExtraData(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 323
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->libassReset(J[B)V

    const/4 p1, 0x0

    .line 324
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->trackInitialized:Z

    .line 325
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 327
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private run()V
    .locals 2

    .line 169
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "LibassRenderer"

    const-string v1, "Decoding finished"

    .line 176
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 174
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method decodeInternal()V
    .locals 11

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->getState()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 132
    monitor-exit v0

    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v1

    const/4 v3, -0x5

    if-ne v1, v3, :cond_2

    .line 136
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    .line 137
    monitor-exit v0

    return-void

    :cond_2
    const/4 v3, -0x4

    if-ne v1, v3, :cond_4

    .line 139
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputStreamEnded:Z

    .line 141
    monitor-exit v0

    return-void

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    goto :goto_1

    :cond_4
    const/4 v3, -0x3

    if-ne v1, v3, :cond_5

    .line 146
    monitor-exit v0

    return-void

    .line 148
    :cond_5
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_8

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    if-gtz v8, :cond_6

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    return-void

    .line 156
    :cond_6
    iget-wide v5, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    const-wide/16 v9, 0x3e8

    div-long v9, v0, v9

    .line 157
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->libassDecode(JLjava/nio/ByteBuffer;IJ)J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-nez v5, :cond_7

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    return-void

    .line 162
    :cond_7
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->trackInitialized:Z

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    :cond_8
    return-void

    :catchall_0
    move-exception v1

    .line 148
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "LibassRenderer"

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

    .line 271
    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2906

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_2

    .line 274
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->preferredMimeTypes:Ljava/util/List;

    goto :goto_0

    .line 277
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 5

    .line 261
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->resetDecoder(Lcom/google/android/exoplayer2/Format;)V

    .line 263
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->libassRelease(J)V

    .line 264
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

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

    .line 256
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->onEnabled(ZZ)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->clearOutput()V

    const/4 p1, 0x0

    .line 239
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputStreamEnded:Z

    .line 240
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 241
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->lock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 242
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/VideoListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/video/VideoListener;)V

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 247
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->clearOutput()V

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 249
    :try_start_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 250
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-super/range {p0 .. p5}, Lcom/google/android/exoplayer2/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V

    return-void

    :catchall_0
    move-exception p1

    .line 250
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/video/VideoListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/video/VideoListener;II)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->srcWidth:I

    .line 310
    iput p2, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->srcHeight:I

    .line 311
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->onOutputChanged()V

    return-void
.end method

.method public releaseDecoderThread()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decodeThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 184
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decodeThreadReleased:Z

    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decodeThread:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 186
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public render(JJ)V
    .locals 2

    .line 92
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->trackInitialized:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->surface:Landroid/view/Surface;

    if-eqz p3, :cond_0

    .line 93
    iget-wide p3, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->nativeContext:J

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-static {p3, p4, p1, p2}, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->libassRenderFrame(JJ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->onOutputChanged()V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decodeThread:Ljava/lang/Thread;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decodeThreadReleased:Z

    .line 100
    new-instance p1, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer$1;

    const-string p2, "ExoPlayer:LibassDecoder"

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer$1;-><init>(Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decodeThread:Ljava/lang/Thread;

    .line 107
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method protected final setOutputSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_1

    .line 198
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->onOutputChanged()V

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->onOutputRemoved()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 207
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->onOutputReset()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic setPlaybackSpeed(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Renderer$-CC;->$default$setPlaybackSpeed(Lcom/google/android/exoplayer2/Renderer;FF)V

    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .line 72
    invoke-static {}, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "text/x-ssa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 75
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 76
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 77
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->preferredMimeTypes:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    .line 80
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    .line 81
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    :goto_0
    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 73
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1
.end method
