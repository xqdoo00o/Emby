.class public Lcom/mb/android/download/exo/ExoDownloadTracker;
.super Ljava/lang/Object;
.source "ExoDownloadTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;


# instance fields
.field private final activeDownloads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;"
        }
    .end annotation
.end field

.field private final completedDownloads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

.field private final localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

.field private final logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->activeDownloads:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->completedDownloads:Ljava/util/HashMap;

    .line 51
    iput-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->context:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 53
    new-instance v0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v0, p1, v1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    .line 54
    new-instance v0, Lcom/mb/android/sync/data/AndroidFileRepository;

    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v0, p1, v1}, Lcom/mb/android/sync/data/AndroidFileRepository;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    .line 55
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/download/exo/ExoDownloadTracker;)Lcom/mb/android/sync/data/database/AndroidLocalDatabase;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    return-object p0
.end method

.method private checkIsBackgroundDownload(Lcom/google/android/exoplayer2/offline/Download;)Z
    .locals 0

    .line 210
    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->data:[B

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    return p1
.end method

.method private connectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/mb/android/MainApp;

    invoke-virtual {v0}, Lcom/mb/android/MainApp;->getConnectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method private getLocalItem(Lcom/google/android/exoplayer2/offline/Download;)Lcom/mb/android/sync/data/database/LocalItem;
    .locals 4

    .line 157
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItem(J)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItemWithLocalPath(Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private onDownloadFailed(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->activeDownloads:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadTracker;->reportProgress()V

    .line 140
    iget-object v0, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->removeDownload(Ljava/lang/String;)V

    .line 142
    new-instance p1, Lcom/mb/android/download/exo/-$$Lambda$ExoDownloadTracker$j6rN5xBi5zC2b2AzlGiNZyTDjeg;

    invoke-direct {p1, p0, p2}, Lcom/mb/android/download/exo/-$$Lambda$ExoDownloadTracker$j6rN5xBi5zC2b2AzlGiNZyTDjeg;-><init>(Lcom/mb/android/download/exo/ExoDownloadTracker;Lcom/google/android/exoplayer2/offline/Download;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onSuccessfulDownload(Lcom/google/android/exoplayer2/offline/Download;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->activeDownloads:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-direct {p0, p1}, Lcom/mb/android/download/exo/ExoDownloadTracker;->checkIsBackgroundDownload(Lcom/google/android/exoplayer2/offline/Download;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->completedDownloads:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadTracker;->reportProgress()V

    .line 110
    new-instance v0, Lcom/mb/android/download/exo/-$$Lambda$ExoDownloadTracker$Ty9UuF1BrT01pNxmzIMEmb1Yu34;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/download/exo/-$$Lambda$ExoDownloadTracker$Ty9UuF1BrT01pNxmzIMEmb1Yu34;-><init>(Lcom/mb/android/download/exo/ExoDownloadTracker;Lcom/google/android/exoplayer2/offline/Download;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDownloadFailed$1$ExoDownloadTracker(Lcom/google/android/exoplayer2/offline/Download;)V
    .locals 3

    .line 143
    invoke-direct {p0, p1}, Lcom/mb/android/download/exo/ExoDownloadTracker;->getLocalItem(Lcom/google/android/exoplayer2/offline/Download;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/sync/data/AndroidFileRepository;->removeMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->Failed:Lcom/mb/android/sync/data/SyncJobStatus;

    invoke-virtual {v0, p1, v1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->updateSyncStatusForItem(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/sync/data/SyncJobStatus;)V

    return-void
.end method

.method public synthetic lambda$onSuccessfulDownload$0$ExoDownloadTracker(Lcom/google/android/exoplayer2/offline/Download;)V
    .locals 3

    .line 112
    invoke-direct {p0, p1}, Lcom/mb/android/download/exo/ExoDownloadTracker;->getLocalItem(Lcom/google/android/exoplayer2/offline/Download;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/sync/data/AndroidFileRepository;->finishMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadTracker;->connectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object v0

    iget-object v1, p1, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v0

    .line 120
    iget-object v1, p1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/mb/android/download/exo/ExoDownloadTracker$1;

    invoke-direct {v2, p0, p1}, Lcom/mb/android/download/exo/ExoDownloadTracker$1;-><init>(Lcom/mb/android/download/exo/ExoDownloadTracker;Lcom/mb/android/sync/data/database/LocalItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/apiinteraction/ApiClient;->reportSyncJobItemTransferred(ILcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public onDownloadChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/offline/DownloadManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/offline/Download;->isTerminalState()Z

    move-result p3

    if-nez p3, :cond_1

    .line 69
    invoke-direct {p0, p2}, Lcom/mb/android/download/exo/ExoDownloadTracker;->checkIsBackgroundDownload(Lcom/google/android/exoplayer2/offline/Download;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->activeDownloads:Ljava/util/HashMap;

    iget-object p3, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p3, p3, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadTracker;->reportProgress()V

    :cond_0
    return-void

    :cond_1
    const/4 p3, 0x0

    .line 77
    iget-object v0, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->data:[B

    if-eqz v0, :cond_2

    .line 78
    iget-object p3, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p3, p3, Lcom/google/android/exoplayer2/offline/DownloadRequest;->data:[B

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p3

    .line 81
    :cond_2
    iget v0, p2, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/mb/android/download/exo/ExoDownloadTracker;->onDownloadFailed(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;)V

    return-void

    :cond_3
    if-eqz p3, :cond_5

    .line 86
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "..."

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 98
    :cond_4
    invoke-direct {p0, p2}, Lcom/mb/android/download/exo/ExoDownloadTracker;->onSuccessfulDownload(Lcom/google/android/exoplayer2/offline/Download;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onDownloadRemoved(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->activeDownloads:Ljava/util/HashMap;

    iget-object v0, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->completedDownloads:Ljava/util/HashMap;

    iget-object p2, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p2, p2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadTracker;->reportProgress()V

    return-void
.end method

.method public synthetic onDownloadsPausedChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onDownloadsPausedChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V

    return-void
.end method

.method public onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->activeDownloads:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 176
    iget-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->completedDownloads:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 177
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadTracker;->reportProgress()V

    return-void
.end method

.method public onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 4

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadIndex()Lcom/google/android/exoplayer2/offline/DownloadIndex;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 185
    :try_start_0
    new-array v0, v0, [I

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    aput v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x7

    aput v3, v0, v2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadIndex;->getDownloads([I)Lcom/google/android/exoplayer2/offline/DownloadCursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    invoke-interface {p1}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getDownload()Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v0

    .line 199
    invoke-direct {p0, v0}, Lcom/mb/android/download/exo/ExoDownloadTracker;->checkIsBackgroundDownload(Lcom/google/android/exoplayer2/offline/Download;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->activeDownloads:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/mb/android/download/exo/ExoDownloadTracker;->reportProgress()V

    return-void

    :catch_0
    move-exception p1

    .line 192
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to get download cursor for reportProgress"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onRequirementsStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onRequirementsStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V

    return-void
.end method

.method public synthetic onWaitingForRequirementsChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onWaitingForRequirementsChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V

    return-void
.end method

.method public reportProgress()V
    .locals 6

    .line 216
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getDownloadProgressEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->activeDownloads:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->completedDownloads:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/offline/Download;

    .line 225
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/offline/Download;->getPercentDownloaded()F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_1

    add-float/2addr v3, v4

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v3, v1

    :cond_3
    const/4 v1, 0x3

    .line 237
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->completedDownloads:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "if(window.LocalSync){window.LocalSync.onProgress(%d,%d,%f);}"

    .line 237
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mb.android.ACTION_SEND_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    .line 240
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 244
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->activeDownloads:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker;->completedDownloads:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_4
    return-void
.end method
