.class public abstract Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "DecoderVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/DecoderVideoRenderer$ReinitializationState;
    }
.end annotation


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private consecutiveDroppedFrameCount:I

.field private decoder:Lcom/google/android/exoplayer2/decoder/Decoder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/Decoder<",
            "Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/DecoderException;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private initialPositionUs:J

.field private inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private joiningDeadlineMs:J

.field private lastRenderTimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field private outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

.field private outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputFormat:Lcom/google/android/exoplayer2/Format;

.field private outputMode:I

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private renderedFirstFrameAfterEnable:Z

.field private renderedFirstFrameAfterReset:Z

.field private reportedHeight:I

.field private reportedPixelWidthHeightRatio:F

.field private reportedWidth:I

.field private sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private surface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private waitingForFirstSampleInFormat:Z


# direct methods
.method protected constructor <init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 1
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 160
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 161
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    .line 162
    iput p5, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maxDroppedFramesToNotify:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 163
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 164
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 165
    new-instance p1, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 166
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newFlagsOnlyInstance()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 167
    new-instance p1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p1, p3, p4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 p1, -0x1

    .line 169
    iput p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    return-void
.end method

.method private clearRenderedFirstFrame()V
    .locals 1

    const/4 v0, 0x0

    .line 917
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 1

    const/4 v0, -0x1

    .line 935
    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedWidth:I

    .line 936
    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 937
    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedPixelWidthHeightRatio:F

    return-void
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    .line 788
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-nez v0, :cond_0

    return v1

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget v3, v3, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 792
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget v2, v2, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->skippedOutputBufferCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 796
    iget p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 799
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    .line 801
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    .line 802
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    const/4 p1, 0x1

    .line 803
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamEnded:Z

    :goto_0
    return v1

    .line 808
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->processOutputBuffer(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 810
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->timeUs:J

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onProcessedOutputBuffer(J)V

    .line 811
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    :cond_4
    return p1
.end method

.method private feedInputBuffer()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;,
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 727
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    if-nez v2, :cond_1

    .line 728
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    .line 729
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    if-nez v0, :cond_1

    return v1

    .line 734
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 735
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->setFlags(I)V

    .line 736
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 737
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    .line 738
    iput v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    return v1

    .line 742
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 743
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v3

    const/4 v5, -0x5

    if-eq v3, v5, :cond_7

    const/4 v0, -0x4

    if-eq v3, v0, :cond_4

    const/4 v0, -0x3

    if-ne v3, v0, :cond_3

    return v1

    .line 770
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 750
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 751
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 752
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 753
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    return v1

    .line 756
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v0, :cond_6

    .line 757
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->timeUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v5, v6, v3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 758
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    .line 760
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->flip()V

    .line 761
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v1, v0, Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;->format:Lcom/google/android/exoplayer2/Format;

    .line 762
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onQueueInputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;)V

    .line 763
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 764
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 765
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 766
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 767
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    return v4

    .line 747
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    return v4

    :cond_8
    :goto_0
    return v1
.end method

.method private hasOutput()Z
    .locals 2

    .line 884
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isBufferLate(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBufferVeryLate(J)Z
    .locals 3

    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeInitDecoder()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_0

    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 690
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 691
    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    if-nez v0, :cond_2

    .line 693
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 705
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 706
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/Decoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 707
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 708
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 709
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 710
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v4

    sub-long v7, v5, v1

    .line 709
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 715
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .line 962
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 963
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 964
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 965
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 966
    iput v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    .line 967
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyRenderedFirstFrame()V
    .locals 2

    const/4 v0, 0x1

    .line 921
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 922
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_0

    .line 923
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 924
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(IIF)V
    .locals 2

    .line 941
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedHeight:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedPixelWidthHeightRatio:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 943
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedWidth:I

    .line 944
    iput p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedHeight:I

    .line 945
    iput p3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedPixelWidthHeightRatio:F

    .line 946
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 2

    .line 929
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 5

    .line 952
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedHeight:I

    if-eq v0, v1, :cond_1

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedHeight:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->reportedPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    :cond_1
    return-void
.end method

.method private onOutputChanged()V
    .locals 2

    .line 889
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 891
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 892
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 893
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setJoiningDeadlineMs()V

    :cond_0
    return-void
.end method

.method private onOutputRemoved()V
    .locals 0

    .line 898
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 899
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    return-void
.end method

.method private onOutputReset()V
    .locals 0

    .line 905
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 906
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    return-void
.end method

.method private processOutputBuffer(JJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 828
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->initialPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 829
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->initialPositionUs:J

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->timeUs:J

    sub-long/2addr v0, p1

    .line 833
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->hasOutput()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 835
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 836
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->skipOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V

    return v3

    :cond_1
    return v4

    .line 842
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->timeUs:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamOffsetUs:J

    sub-long/2addr v5, v7

    .line 843
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_3

    .line 845
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    .line 848
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    .line 849
    iget-wide v9, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    sub-long/2addr v7, v9

    .line 850
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->getState()I

    move-result v2

    const/4 v9, 0x2

    if-ne v2, v9, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 851
    :goto_0
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    if-nez v9, :cond_5

    if-nez v2, :cond_6

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    if-eqz v9, :cond_7

    goto :goto_1

    :cond_5
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v9, :cond_7

    :cond_6
    :goto_1
    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_d

    if-eqz v2, :cond_8

    .line 857
    invoke-virtual {p0, v0, v1, v7, v8}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_c

    .line 862
    iget-wide v7, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->initialPositionUs:J

    cmp-long v2, p1, v7

    if-nez v2, :cond_9

    goto :goto_3

    .line 867
    :cond_9
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->shouldDropBuffersToKeyframe(JJ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 868
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeDropBuffersToKeyframe(J)Z

    move-result p1

    if-eqz p1, :cond_a

    return v4

    .line 870
    :cond_a
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->shouldDropOutputBuffer(JJ)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 871
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V

    return v3

    :cond_b
    const-wide/16 p1, 0x7530

    cmp-long p3, v0, p1

    if-gez p3, :cond_c

    .line 876
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V

    return v3

    :cond_c
    :goto_3
    return v4

    .line 858
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V

    return v3
.end method

.method private setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 679
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 5

    .line 910
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 912
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 674
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method


# virtual methods
.method protected canReuseDecoder(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .locals 7

    .line 666
    new-instance v6, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v6
.end method

.method protected abstract createDecoder(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;)Lcom/google/android/exoplayer2/decoder/Decoder;
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
            "+",
            "Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/DecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation
.end method

.method protected dropOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 482
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 483
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    return-void
.end method

.method protected flushDecoder()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 329
    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 330
    iget v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 332
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeInitDecoder()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 334
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    .line 335
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-eqz v2, :cond_1

    .line 336
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    .line 337
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->flush()V

    .line 340
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    :goto_0
    return-void
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

    .line 247
    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 249
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setOutputBufferRenderer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 251
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    goto :goto_0

    .line 253
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 9

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v0, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->hasOutput()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    return v1

    .line 229
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 232
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 237
    :cond_4
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    return v0
.end method

.method protected maybeDropBuffersToKeyframe(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 500
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 503
    iget p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->updateDroppedBufferCounters(I)V

    .line 504
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flushDecoder()V

    return v1
.end method

.method protected onDisabled()V
    .locals 3

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 302
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearReportedVideoSize()V

    .line 303
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    .line 305
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 306
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->releaseDecoder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 309
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 262
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 263
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 264
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    const/4 p1, 0x0

    .line 265
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderedFirstFrameAfterEnable:Z

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V
    .locals 8
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 369
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->waitingForFirstSampleInFormat:Z

    .line 370
    iget-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/exoplayer2/Format;

    .line 371
    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setSourceDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 372
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 373
    iput-object v5, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    .line 375
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-nez p1, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeInitDecoder()V

    .line 377
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 383
    new-instance v1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 385
    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    goto :goto_0

    .line 391
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->canReuseDecoder(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v1

    .line 394
    :goto_0
    iget p1, v1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-nez p1, :cond_3

    .line 395
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    if-eqz p1, :cond_2

    .line 397
    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    goto :goto_1

    .line 400
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->releaseDecoder()V

    .line 401
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeInitDecoder()V

    .line 404
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 271
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamEnded:Z

    .line 272
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->clearRenderedFirstFrame()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 273
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->initialPositionUs:J

    .line 274
    iput p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 275
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flushDecoder()V

    :cond_0
    if-eqz p3, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    .line 281
    :cond_1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 283
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->formatQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 425
    iget p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;)V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 4

    const/4 v0, 0x0

    .line 288
    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 295
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->joiningDeadlineMs:J

    .line 296
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 318
    iput-wide p4, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamOffsetUs:J

    .line 319
    invoke-super/range {p0 .. p5}, Lcom/google/android/exoplayer2/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V

    return-void
.end method

.method protected releaseDecoder()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderInputBuffer;

    .line 348
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    const/4 v1, 0x0

    .line 349
    iput v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReinitializationState:I

    .line 350
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderReceivedBuffers:Z

    .line 351
    iput v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->buffersInCodecCount:I

    .line 352
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 354
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/Decoder;->release()V

    .line 355
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    .line 356
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    .line 358
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setDecoderDrmSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void
.end method

.method public render(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 176
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 184
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v1

    const/4 v3, -0x5

    if-ne v1, v3, :cond_1

    .line 186
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne v1, p1, :cond_2

    .line 189
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 190
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputStreamEnded:Z

    .line 191
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputStreamEnded:Z

    :cond_2
    return-void

    .line 200
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeInitDecoder()V

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_6

    :try_start_0
    const-string v0, "drainAndFeed"

    .line 205
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 206
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 207
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 208
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 210
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->inputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method protected renderOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;JLcom/google/android/exoplayer2/Format;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->frameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    .line 554
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const/4 v6, 0x0

    move-wide v1, p2

    move-object v5, p4

    .line 553
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 556
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->lastRenderTimeUs:J

    .line 557
    iget p2, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->mode:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 558
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez p2, :cond_2

    .line 559
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_3

    if-nez v1, :cond_3

    .line 561
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->dropOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V

    goto :goto_4

    :cond_3
    if-eqz p4, :cond_4

    .line 565
    iget p4, p4, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    goto :goto_2

    :cond_4
    const/high16 p4, 0x3f800000    # 1.0f

    .line 566
    :goto_2
    iget v1, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->width:I

    iget v2, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->height:I

    invoke-direct {p0, v1, v2, p4}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeNotifyVideoSizeChanged(IIF)V

    if-eqz p2, :cond_5

    .line 568
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;->setOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V

    goto :goto_3

    .line 570
    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->renderOutputBufferToSurface(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;Landroid/view/Surface;)V

    .line 572
    :goto_3
    iput p3, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 573
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 574
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    :goto_4
    return-void
.end method

.method protected abstract renderOutputBufferToSurface(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation
.end method

.method protected abstract setDecoderOutputMode(I)V
.end method

.method protected final setOutputBufferRenderer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eq v0, p1, :cond_2

    .line 628
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 630
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    const/4 p1, 0x0

    .line 631
    iput p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    .line 632
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz p1, :cond_0

    .line 633
    iget p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 635
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onOutputChanged()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 639
    iput p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    .line 640
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onOutputRemoved()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 644
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onOutputReset()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected final setOutputSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 597
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_2

    .line 599
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 601
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputBufferRenderer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    const/4 p1, 0x1

    .line 602
    iput p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    .line 603
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoder:Lcom/google/android/exoplayer2/decoder/Decoder;

    if-eqz p1, :cond_0

    .line 604
    iget p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->setDecoderOutputMode(I)V

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onOutputChanged()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 610
    iput p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->outputMode:I

    .line 611
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onOutputRemoved()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 615
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->onOutputReset()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJ)Z
    .locals 0

    .line 450
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->isBufferVeryLate(J)Z

    move-result p1

    return p1
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 0

    .line 437
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result p1

    return p1
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 1

    .line 463
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->isBufferLate(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 p1, 0x186a0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected skipOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 473
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    return-void
.end method

.method protected updateDroppedBufferCounters(I)V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    .line 516
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    .line 517
    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 518
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->consecutiveDroppedFrameCount:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 519
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 520
    iget p1, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->droppedFrames:I

    if-lt v0, p1, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DecoderVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method
