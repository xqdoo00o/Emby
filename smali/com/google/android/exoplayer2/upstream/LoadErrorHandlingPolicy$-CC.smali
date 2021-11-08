.class public final synthetic Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$-CC;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# direct methods
.method public static $default$getBlacklistDurationMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;IJLjava/io/IOException;I)J
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public static $default$getBlacklistDurationMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J
    .locals 7
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 83
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->mediaLoadData:Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->loadEventInfo:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->loadDurationMs:J

    iget-object v5, p1, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    iget v6, p1, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->errorCount:I

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getBlacklistDurationMsFor(IJLjava/io/IOException;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static $default$getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;IJLjava/io/IOException;I)J
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public static $default$getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J
    .locals 7
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 111
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->mediaLoadData:Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->loadEventInfo:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->loadDurationMs:J

    iget-object v5, p1, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    iget v6, p1, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->errorCount:I

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static $default$onLoadTaskConcluded(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;J)V
    .locals 0

    return-void
.end method
