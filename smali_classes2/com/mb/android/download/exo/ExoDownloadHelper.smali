.class public Lcom/mb/android/download/exo/ExoDownloadHelper;
.super Ljava/lang/Object;
.source "ExoDownloadHelper.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

.field private downloadCache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

.field private downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

.field private downloadTracker:Lcom/mb/android/download/exo/ExoDownloadTracker;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->okHttpClient:Lokhttp3/OkHttpClient;

    const-string p2, "Emby"

    .line 38
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public static backgroundTransferStatusToString(II)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 96
    invoke-static {p0}, Lcom/mb/android/download/exo/ExoDownloadHelper;->getStatusString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {p0, p1}, Lcom/mb/android/download/exo/ExoDownloadHelper;->getReasonString(II)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 p1, 0x2

    .line 103
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object p0, p1, v0

    const-string p0, "%s%s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildHttpDataSourceFactory()Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 3

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSourceFactory;

    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->okHttpClient:Lokhttp3/OkHttpClient;

    iget-object v2, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->userAgent:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDatabaseProvider()Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/database/ExoDatabaseProvider;

    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/database/ExoDatabaseProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    return-object v0
.end method

.method private static getReasonString(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x4

    if-ne p0, v2, :cond_1

    if-eq p1, v0, :cond_0

    return-object v1

    :cond_0
    const-string p0, "FAILURE_REASON_UNKNOWN"

    return-object p0

    :cond_1
    if-ne p0, v0, :cond_2

    :cond_2
    return-object v1
.end method

.method private static getStatusString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "Restarting"

    return-object p0

    :cond_1
    const-string p0, "Removing"

    return-object p0

    :cond_2
    const-string p0, "Failed"

    return-object p0

    :cond_3
    const-string p0, "Downloading"

    return-object p0

    :cond_4
    const-string p0, "Stopped"

    return-object p0

    :cond_5
    const-string p0, "Queued"

    return-object p0
.end method

.method private declared-synchronized initDownloadManager()V
    .locals 6

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;

    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadHelper;->getDatabaseProvider()Lcom/google/android/exoplayer2/database/DatabaseProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;-><init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    .line 80
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadHelper;->getDownloadCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object v1

    .line 82
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadHelper;->buildHttpDataSourceFactory()Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;

    .line 83
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadHelper;->getDownloadCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v3

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCacheWriteDataSinkFactory(Lcom/google/android/exoplayer2/upstream/DataSink$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->DEFAULT:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 84
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCacheKeyFactory(Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object v1

    .line 85
    new-instance v2, Lcom/google/android/exoplayer2/offline/DownloadManager;

    iget-object v3, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->context:Landroid/content/Context;

    new-instance v4, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/offline/DefaultDownloaderFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/exoplayer2/offline/DownloadManager;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;Lcom/google/android/exoplayer2/offline/DownloaderFactory;)V

    iput-object v2, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 88
    new-instance v0, Lcom/mb/android/download/exo/ExoDownloadTracker;

    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-direct {v0, v1, v2}, Lcom/mb/android/download/exo/ExoDownloadTracker;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->downloadTracker:Lcom/mb/android/download/exo/ExoDownloadTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getDownloadCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->downloadCache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->isCacheFolderLocked(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->unlockFolder(Ljava/io/File;)V

    .line 57
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->context:Landroid/content/Context;

    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/mb/android/download/exo/CustomCacheEvictor;

    iget-object v3, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->context:Landroid/content/Context;

    const-wide/32 v4, 0x3200000

    invoke-direct {v2, v3, v4, v5}, Lcom/mb/android/download/exo/CustomCacheEvictor;-><init>(Landroid/content/Context;J)V

    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadHelper;->getDatabaseProvider()Lcom/google/android/exoplayer2/database/DatabaseProvider;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->downloadCache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->downloadCache:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    return-object v0
.end method

.method public getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadHelper;->initDownloadManager()V

    .line 43
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    return-object v0
.end method

.method getDownloadTracker()Lcom/mb/android/download/exo/ExoDownloadTracker;
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadHelper;->initDownloadManager()V

    .line 48
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadHelper;->downloadTracker:Lcom/mb/android/download/exo/ExoDownloadTracker;

    return-object v0
.end method
