.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;
.super Ljava/lang/Object;
.source "CacheWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private final allowShortContent:Z

.field private bytesCached:J

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private endPosition:J

.field private initialized:Z

.field private volatile isCanceled:Z

.field private nextPosition:J

.field private final progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z[BLcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;)V
    .locals 1
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 84
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 85
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->allowShortContent:Z

    if-nez p4, :cond_0

    const/high16 p3, 0x20000

    .line 86
    new-array p4, p3, [B

    :cond_0
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->temporaryBuffer:[B

    .line 88
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    .line 89
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    .line 90
    iget-wide p1, p2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    return-void
.end method

.method private getLength()J
    .locals 5

    .line 233
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long v2, v0, v2

    :goto_0
    return-wide v2
.end method

.method private onNewBytesCached(J)V
    .locals 9

    .line 226
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    .line 227
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v2, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    move-wide v7, p1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_0
    return-void
.end method

.method private onRequestEndPosition(J)V
    .locals 10

    .line 216
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    .line 219
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    .line 220
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v3, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    const-wide/16 v8, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_1
    return-void
.end method

.method private readBlockToCache(JJ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-long v0, p1, p3

    .line 160
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    cmp-long v8, v0, v2

    if-eqz v8, :cond_1

    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    cmp-long v1, p3, v6

    if-eqz v1, :cond_3

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 169
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p3

    .line 170
    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p3

    .line 173
    :try_start_1
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->allowShortContent:Z

    if-eqz p4, :cond_2

    if-eqz v0, :cond_2

    .line 175
    invoke-static {p3}, Lcom/google/android/exoplayer2/upstream/DataSourceException;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 179
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    goto :goto_2

    .line 181
    :cond_2
    throw p3

    :cond_3
    :goto_2
    move-wide p3, v6

    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_4

    .line 188
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 189
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 190
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3, v6, v7}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p3

    .line 191
    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide p3

    :cond_4
    if-eqz v0, :cond_5

    cmp-long v1, p3, v6

    if-eqz v1, :cond_5

    add-long/2addr p3, p1

    .line 194
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onRequestEndPosition(J)V

    :cond_5
    const/4 p3, 0x0

    const/4 p4, 0x0

    :cond_6
    :goto_4
    const/4 v1, -0x1

    if-eq p3, v1, :cond_7

    .line 199
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 200
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->temporaryBuffer:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->temporaryBuffer:[B

    array-length v3, v3

    invoke-virtual {p3, v2, v5, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I

    move-result p3

    if-eq p3, v1, :cond_6

    int-to-long v1, p3

    .line 202
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onNewBytesCached(J)V

    add-int/2addr p4, p3

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    int-to-long v0, p4

    add-long/2addr p1, v0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onRequestEndPosition(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 211
    :goto_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 212
    throw p1

    :cond_8
    :goto_6
    int-to-long p1, p4

    .line 211
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-wide p1
.end method

.method private throwIfCanceled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 237
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->isCanceled:Z

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public cache()V
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 121
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->initialized:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    move-wide v3, v1

    .line 126
    :cond_1
    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    .line 128
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v9, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-interface/range {v5 .. v10}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    .line 129
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v5, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    const-wide/16 v10, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_2
    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->initialized:Z

    .line 135
    :cond_3
    :goto_1
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    cmp-long v0, v5, v3

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    return-void

    .line 136
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 137
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-nez v0, :cond_6

    move-wide v11, v5

    goto :goto_3

    :cond_6
    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    sub-long/2addr v3, v7

    move-wide v11, v3

    .line 139
    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    invoke-interface/range {v7 .. v12}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_7

    .line 141
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    goto :goto_1

    :cond_7
    neg-long v3, v3

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    move-wide v3, v1

    .line 146
    :cond_8
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    invoke-direct {p0, v5, v6, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->readBlockToCache(JJ)J

    move-result-wide v3

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    goto :goto_1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->isCanceled:Z

    return-void
.end method
