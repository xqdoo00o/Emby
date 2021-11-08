.class public Lcom/mb/android/download/exo/CustomCacheEvictor;
.super Ljava/lang/Object;
.source "CustomCacheEvictor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private currentSize:J

.field private final leastRecentlyUsed:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p2, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->maxBytes:J

    .line 25
    new-instance p2, Ljava/util/TreeSet;

    sget-object p3, Lcom/mb/android/download/exo/-$$Lambda$CustomCacheEvictor$DcNMmn--J_EKCtBlN3sSvScnSA4;->INSTANCE:Lcom/mb/android/download/exo/-$$Lambda$CustomCacheEvictor$DcNMmn--J_EKCtBlN3sSvScnSA4;

    invoke-direct {p2, p3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p2, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->cacheDir:Ljava/io/File;

    return-void
.end method

.method private cacheFileExists(Ljava/io/File;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static compare(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I
    .locals 5

    .line 107
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastTouchTimestamp:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastTouchTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->compareTo(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I

    move-result p0

    return p0

    .line 112
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastTouchTimestamp:J

    iget-wide p0, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastTouchTimestamp:J

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private evictCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V
    .locals 5

    .line 68
    :goto_0
    iget-wide v0, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->currentSize:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->maxBytes:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 70
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/mb/android/download/exo/CustomCacheEvictor;->cacheFileExists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/mb/android/download/exo/CustomCacheEvictor;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isInCacheDir(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 86
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {v1, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static synthetic lambda$DcNMmn--J_EKCtBlN3sSvScnSA4(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/mb/android/download/exo/CustomCacheEvictor;->compare(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onCacheInitialized()V
    .locals 0

    return-void
.end method

.method public onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4

    .line 48
    iget-object v0, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/mb/android/download/exo/CustomCacheEvictor;->isInCacheDir(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 50
    iget-wide v0, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->currentSize:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->currentSize:J

    const-wide/16 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0, v1}, Lcom/mb/android/download/exo/CustomCacheEvictor;->evictCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    :cond_0
    return-void
.end method

.method public onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-wide v0, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->currentSize:J

    iget-wide p1, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mb/android/download/exo/CustomCacheEvictor;->currentSize:J

    :cond_0
    return-void
.end method

.method public onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0

    return-void
.end method

.method public onStartFile(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 1

    const-wide/16 p3, -0x1

    cmp-long v0, p5, p3

    if-eqz v0, :cond_0

    .line 41
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/mb/android/download/exo/CustomCacheEvictor;->isInCacheDir(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 42
    invoke-direct {p0, p1, p5, p6}, Lcom/mb/android/download/exo/CustomCacheEvictor;->evictCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    :cond_0
    return-void
.end method

.method public requiresCacheSpanTouches()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
