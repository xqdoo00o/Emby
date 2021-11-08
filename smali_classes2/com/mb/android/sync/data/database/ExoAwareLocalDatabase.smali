.class public Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;
.super Lcom/mb/android/sync/data/database/AndroidLocalDatabase;
.source "ExoAwareLocalDatabase.java"


# instance fields
.field private final exoDownloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/mb/android/MainApp;

    invoke-virtual {p1}, Lcom/mb/android/MainApp;->getExoDownloadHelper()Lcom/mb/android/download/exo/ExoDownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mb/android/download/exo/ExoDownloadHelper;->getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadIndex()Lcom/google/android/exoplayer2/offline/DownloadIndex;

    move-result-object p1

    .line 27
    instance-of p2, p1, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    if-eqz p2, :cond_0

    .line 28
    check-cast p1, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    iput-object p1, p0, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->exoDownloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->exoDownloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    .line 34
    :goto_0
    invoke-direct {p0}, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->removeStaleExoDownloads()V

    return-void
.end method

.method private deleteExoDownload(Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->exoDownloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    iget-wide v1, p1, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->removeDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    iget-object v0, p0, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to remove ExoPlayer download"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private removeStaleExoDownloads()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->exoDownloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 74
    :try_start_0
    new-array v1, v1, [I

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    aput v4, v1, v3

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->getDownloads([I)Lcom/google/android/exoplayer2/offline/DownloadCursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v2, Lcom/mb/android/sync/data/database/-$$Lambda$ExoAwareLocalDatabase$HtQD56HrGsdx7W7c3Jtm0jpEn9Q;

    invoke-direct {v2, p0, v0, v1}, Lcom/mb/android/sync/data/database/-$$Lambda$ExoAwareLocalDatabase$HtQD56HrGsdx7W7c3Jtm0jpEn9Q;-><init>(Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;Lcom/google/android/exoplayer2/offline/DownloadCursor;Ljava/util/ArrayList;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error remove stale ExoPlayer downloads"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public deleteLocalItem(Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->deleteExoDownload(Lcom/mb/android/sync/data/database/LocalItem;)V

    .line 40
    invoke-super {p0, p1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->deleteLocalItem(Lcom/mb/android/sync/data/database/LocalItem;)V

    return-void
.end method

.method public deleteLocalItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-super {p0, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItem(Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, v0}, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->deleteExoDownload(Lcom/mb/android/sync/data/database/LocalItem;)V

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->deleteLocalItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteLocalItemsAndContainers(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/sync/data/database/LocalItem;

    .line 46
    invoke-direct {p0, v1}, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->deleteExoDownload(Lcom/mb/android/sync/data/database/LocalItem;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->deleteLocalItemsAndContainers(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$removeStaleExoDownloads$0$ExoAwareLocalDatabase(Lcom/google/android/exoplayer2/offline/DownloadCursor;Ljava/util/ArrayList;)V
    .locals 4

    .line 85
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getDownload()Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    .line 86
    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 87
    iget-object v1, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    const-string v2, "http"

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 96
    invoke-super {p0, v2, v3}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItemExists(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 104
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 113
    :try_start_1
    iget-object v0, p0, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->exoDownloadIndex:Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;

    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/offline/WritableDownloadIndex;->removeDownload(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 115
    iget-object v0, p0, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to remove ExoPlayer download"

    invoke-interface {v0, v2, p2, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    return-void
.end method
