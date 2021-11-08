.class public Lcom/mb/android/sync/MediaSync;
.super Ljava/lang/Object;
.source "MediaSync.java"


# instance fields
.field private final apiClient:Lcom/mb/android/apiinteraction/ApiClient;

.field private final assetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

.field private final context:Landroid/content/Context;

.field private final downloadManager:Lcom/mb/android/download/exo/ExoDownloadManager;

.field private final fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

.field private final localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

.field private final logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 6

    .line 73
    new-instance v4, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;

    invoke-direct {v4, p1, p2}, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    new-instance v5, Lcom/mb/android/sync/data/LocalAssetHelper;

    new-instance v0, Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-direct {v0, p1, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    invoke-direct {v5, p1, v0}, Lcom/mb/android/sync/data/LocalAssetHelper;-><init>(Landroid/content/Context;Lcom/mb/android/sync/data/AndroidFileRepository;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mb/android/sync/MediaSync;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/data/database/AndroidLocalDatabase;Lcom/mb/android/sync/data/LocalAssetHelper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/data/database/AndroidLocalDatabase;Lcom/mb/android/sync/data/LocalAssetHelper;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/mb/android/sync/MediaSync;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 64
    iput-object p3, p0, Lcom/mb/android/sync/MediaSync;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    .line 65
    iput-object p4, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    .line 66
    iput-object p5, p0, Lcom/mb/android/sync/MediaSync;->assetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    .line 67
    invoke-virtual {p5}, Lcom/mb/android/sync/data/LocalAssetHelper;->getFileRepository()Lcom/mb/android/sync/data/AndroidFileRepository;

    move-result-object p3

    iput-object p3, p0, Lcom/mb/android/sync/MediaSync;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    .line 69
    new-instance p3, Lcom/mb/android/download/exo/ExoDownloadManager;

    invoke-direct {p3, p1, p2}, Lcom/mb/android/download/exo/ExoDownloadManager;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object p3, p0, Lcom/mb/android/sync/MediaSync;->downloadManager:Lcom/mb/android/download/exo/ExoDownloadManager;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;ILcom/mb/android/sync/data/SyncJobStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/mb/android/sync/MediaSync;->insertNewItem(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;ILcom/mb/android/sync/data/SyncJobStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/MediaSync;->getImages(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/data/database/LocalItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/MediaSync;->getParentItems(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mb/android/sync/MediaSync;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/MediaSync;->syncData(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/model/sync/SyncJobItem;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/MediaSync;->getNewItem(Lcom/mb/android/model/sync/SyncJobItem;Lcom/mb/android/apiinteraction/ApiClient;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mb/android/sync/MediaSync;)Lcom/mb/android/sync/data/database/AndroidLocalDatabase;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/model/sync/SyncDataResponse;Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/MediaSync;->afterSyncData(Lcom/mb/android/model/sync/SyncDataResponse;Lcom/mb/android/sync/ServerSync$Callback;)V

    return-void
.end method

.method private afterSyncData(Lcom/mb/android/model/sync/SyncDataResponse;Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaSync: Begin afterSyncData"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/mb/android/model/sync/SyncDataResponse;->ItemIdsToRemove:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "MediaSync: afterSyncData found %d item(s) to remove"

    invoke-interface {v0, v1, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    iget-object p1, p1, Lcom/mb/android/model/sync/SyncDataResponse;->ItemIdsToRemove:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mb/android/sync/MediaSync;->removeItems(Ljava/util/List;)V

    .line 576
    invoke-interface {p2}, Lcom/mb/android/sync/ServerSync$Callback;->onSuccess()V

    return-void
.end method

.method private checkLocalFileExistence()V
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaSync: Begin checkLocalFileExistence"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 96
    new-array v0, v0, [I

    sget-object v2, Lcom/mb/android/sync/data/SyncJobStatus;->Completed:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 97
    invoke-virtual {v2}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v2

    aput v2, v0, v1

    sget-object v2, Lcom/mb/android/sync/data/SyncJobStatus;->CompletedWithError:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 98
    invoke-virtual {v2}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    sget-object v2, Lcom/mb/android/sync/data/SyncJobStatus;->Failed:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 99
    invoke-virtual {v2}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v2

    const/4 v4, 0x2

    aput v2, v0, v4

    .line 102
    iget-object v2, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    iget-object v4, p0, Lcom/mb/android/sync/MediaSync;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-virtual {v4}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getItemsBySyncStatus(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/sync/data/database/LocalItem;

    .line 106
    invoke-virtual {v2}, Lcom/mb/android/sync/data/database/LocalItem;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/mb/android/sync/data/database/LocalItem;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_1
    if-nez v4, :cond_0

    .line 107
    iget-object v4, v2, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    aput-object v6, v5, v1

    const-string v6, "MediaSync: File missing at path %s. Removing item..."

    invoke-interface {v4, v6, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v4, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v4, v2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->deleteLocalItem(Lcom/mb/android/sync/data/database/LocalItem;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 371
    invoke-direct/range {v0 .. v7}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;I)V

    return-void
.end method

.method private downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;I)V
    .locals 5

    .line 376
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync;->assetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    invoke-virtual {p6}, Lcom/mb/android/model/entities/ImageType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, p4, v0, p7}, Lcom/mb/android/sync/data/LocalAssetHelper;->getLocalMetadataPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 377
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    const/4 v0, 0x0

    const-string v1, "_"

    const-string v2, " "

    if-eqz p3, :cond_0

    .line 379
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MediaSync: downloadImage - skip existing: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 p3, 0x190

    .line 383
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 384
    sget-object v3, Lcom/mb/android/model/entities/ImageType;->Backdrop:Lcom/mb/android/model/entities/ImageType;

    if-ne p6, v3, :cond_1

    const/4 p3, 0x0

    .line 388
    :cond_1
    new-instance v3, Lcom/mb/android/model/dto/ImageOptions;

    invoke-direct {v3}, Lcom/mb/android/model/dto/ImageOptions;-><init>()V

    .line 389
    invoke-virtual {v3, p5}, Lcom/mb/android/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v3, p6}, Lcom/mb/android/model/dto/ImageOptions;->setImageType(Lcom/mb/android/model/entities/ImageType;)V

    .line 391
    invoke-virtual {v3, p3}, Lcom/mb/android/model/dto/ImageOptions;->setMaxWidth(Ljava/lang/Integer;)V

    .line 393
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 394
    invoke-virtual {p2}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object p5

    const-string v4, "api_key"

    invoke-virtual {p3, v4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-virtual {p2, p4, v3, p3}, Lcom/mb/android/apiinteraction/ApiClient;->getScaledImageUrl(Ljava/lang/String;Lcom/mb/android/model/dto/ImageOptions;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    .line 398
    iget-object p3, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaSync: downloadImage "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array p5, v0, [Ljava/lang/Object;

    invoke-interface {p3, p4, p5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    iget-object p3, p0, Lcom/mb/android/sync/MediaSync;->downloadManager:Lcom/mb/android/download/exo/ExoDownloadManager;

    invoke-virtual {p3, p2, p1}, Lcom/mb/android/download/exo/ExoDownloadManager;->queueInternalDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private downloadMedia(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/sync/SyncJobItem;Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 9

    .line 291
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSync: Begin downloadMedia"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync/JobItems/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/mb/android/model/sync/SyncJobItem;->SyncJobItemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/File"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 298
    iget-object v2, p0, Lcom/mb/android/sync/MediaSync;->downloadManager:Lcom/mb/android/download/exo/ExoDownloadManager;

    iget-object v4, p3, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    iget-wide v0, p3, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-string v8, ""

    invoke-virtual/range {v2 .. v8}, Lcom/mb/android/download/exo/ExoDownloadManager;->queueDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/mb/android/download/ManagerDownloadInfo;

    .line 300
    invoke-direct {p0, p1, p3}, Lcom/mb/android/sync/MediaSync;->getImages(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/data/database/LocalItem;)V

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/mb/android/sync/MediaSync;->getSubtitles(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/sync/SyncJobItem;Lcom/mb/android/sync/data/database/LocalItem;)V

    .line 302
    invoke-virtual {p3}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/MediaSync;->getParentItems(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)V

    return-void
.end method

.method private downloadParentItem(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;)V
    .locals 2

    .line 495
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mb/android/sync/MediaSync$4;

    invoke-direct {v1, p0}, Lcom/mb/android/sync/MediaSync$4;-><init>(Lcom/mb/android/sync/MediaSync;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/mb/android/apiinteraction/ApiClient;->getItem(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private downloadSubtitles(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/sync/ItemFileInfo;Lcom/mb/android/model/sync/SyncJobItem;Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/model/dto/MediaSourceInfo;)V
    .locals 8

    const-string v0, "name"

    .line 429
    invoke-virtual {p5}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/entities/MediaStream;

    .line 430
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v2

    iget v3, p2, Lcom/mb/android/model/sync/ItemFileInfo;->Index:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 p5, 0x0

    if-nez v1, :cond_2

    .line 437
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, p5, [Ljava/lang/Object;

    const-string p3, "MediaStream: Cannot download subtitles because matching stream info was not found."

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 441
    :cond_2
    iget-object v2, p0, Lcom/mb/android/sync/MediaSync;->assetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    iget-object v4, p3, Lcom/mb/android/model/sync/SyncJobItem;->OriginalFileName:Ljava/lang/String;

    .line 444
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 445
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getIsForced()Z

    move-result v6

    .line 446
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v7

    move-object v3, p4

    .line 441
    invoke-virtual/range {v2 .. v7}, Lcom/mb/android/sync/data/LocalAssetHelper;->getSubtitleSaveFileName(Lcom/mb/android/sync/data/database/LocalItem;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1, v2}, Lcom/mb/android/model/entities/MediaStream;->setPath(Ljava/lang/String;)V

    .line 451
    sget-object v4, Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;->External:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    invoke-virtual {v1, v4}, Lcom/mb/android/model/entities/MediaStream;->setDeliveryMethod(Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;)V

    .line 452
    iget-object v1, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v1, p4}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->updateLocalItem(Lcom/mb/android/sync/data/database/LocalItem;)V

    .line 454
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 455
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MediaSync: downloadSubtitles - skip existing: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p5, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 459
    :cond_3
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 460
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object p5

    const-string v1, "api_key"

    invoke-virtual {p4, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :try_start_0
    iget-object p5, p2, Lcom/mb/android/model/sync/ItemFileInfo;->Name:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 464
    :catch_0
    iget-object p2, p2, Lcom/mb/android/model/sync/ItemFileInfo;->Name:Ljava/lang/String;

    invoke-virtual {p4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Sync/JobItems/"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/mb/android/model/sync/SyncJobItem;->SyncJobItemId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/AdditionalFiles"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/mb/android/apiinteraction/ApiClient;->getUrl(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 469
    iget-object p2, p0, Lcom/mb/android/sync/MediaSync;->downloadManager:Lcom/mb/android/download/exo/ExoDownloadManager;

    invoke-virtual {p2, p1, v2}, Lcom/mb/android/download/exo/ExoDownloadManager;->queueInternalDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getImages(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 12

    .line 307
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaSync: Begin getImages"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getServerId()Ljava/lang/String;

    move-result-object v10

    .line 313
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 315
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getHasPrimaryImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 319
    :cond_0
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getHasLogo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/entities/ImageType;->Logo:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/mb/android/model/entities/ImageType;->Logo:Lcom/mb/android/model/entities/ImageType;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 323
    :cond_1
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getHasArtImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/entities/ImageType;->Art:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/mb/android/model/entities/ImageType;->Art:Lcom/mb/android/model/entities/ImageType;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 327
    :cond_2
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getHasBanner()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/entities/ImageType;->Banner:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/mb/android/model/entities/ImageType;->Banner:Lcom/mb/android/model/entities/ImageType;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 331
    :cond_3
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getHasThumb()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 332
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/entities/ImageType;->Thumb:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/mb/android/model/entities/ImageType;->Thumb:Lcom/mb/android/model/entities/ImageType;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 336
    :cond_4
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesPrimaryImageTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 337
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesPrimaryImageTag()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 340
    :cond_5
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 341
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Lcom/mb/android/sync/MediaSync$3;

    move-object v4, v11

    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/mb/android/sync/MediaSync$3;-><init>(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/model/dto/BaseItemDto;)V

    invoke-virtual {p1, v2, v3, v11}, Lcom/mb/android/apiinteraction/ApiClient;->getItem(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    .line 351
    :cond_6
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumPrimaryImageTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 352
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumPrimaryImageTag()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 355
    :cond_7
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentThumbItemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentThumbImageTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 356
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentThumbItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentThumbImageTag()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/mb/android/model/entities/ImageType;->Thumb:Lcom/mb/android/model/entities/ImageType;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 359
    :cond_8
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentLogoItemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentLogoImageTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 360
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentLogoItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentLogoImageTag()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/mb/android/model/entities/ImageType;->Logo:Lcom/mb/android/model/entities/ImageType;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 363
    :cond_9
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentPrimaryImageItemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentPrimaryImageTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 364
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentPrimaryImageItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentPrimaryImageTag()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lcom/mb/android/sync/MediaSync;->downloadImage(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 367
    :cond_a
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "MediaSync: Finished getImages"

    invoke-interface {p1, v0, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private getLocalPath(Ljava/lang/String;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->assetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    invoke-virtual {v0, p2}, Lcom/mb/android/sync/data/LocalAssetHelper;->getDirectoryPath(Lcom/mb/android/model/dto/BaseItemDto;)Ljava/util/ArrayList;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/mb/android/sync/MediaSync;->assetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    invoke-virtual {v1, p2, p1}, Lcom/mb/android/sync/data/LocalAssetHelper;->getLocalFileName(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "##"

    .line 530
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 532
    iget-object p2, p0, Lcom/mb/android/sync/MediaSync;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1, v0, v0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getFullPath(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNewItem(Lcom/mb/android/model/sync/SyncJobItem;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 10

    .line 278
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSync: Begin getNewItem"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v5, p1, Lcom/mb/android/model/sync/SyncJobItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    .line 281
    iget v6, p1, Lcom/mb/android/model/sync/SyncJobItem;->SyncJobItemId:I

    sget-object v7, Lcom/mb/android/sync/data/SyncJobStatus;->Queued:Lcom/mb/android/sync/data/SyncJobStatus;

    iget-object v8, p1, Lcom/mb/android/model/sync/SyncJobItem;->OriginalFileName:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v3 .. v9}, Lcom/mb/android/sync/MediaSync;->insertNewItem(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;ILcom/mb/android/sync/data/SyncJobStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-direct {p0, p2, p1, v0}, Lcom/mb/android/sync/MediaSync;->downloadMedia(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/sync/SyncJobItem;Lcom/mb/android/sync/data/database/LocalItem;)V

    return-void
.end method

.method private getNewMedia(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSync: Begin getNewMedia"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    new-instance v0, Lcom/mb/android/sync/MediaSync$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/mb/android/sync/MediaSync$2;-><init>(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getReadySyncItems(Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private getParentItems(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSync: Begin getParentItems"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mb/android/sync/MediaSync;->downloadParentItem(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;)V

    .line 480
    :cond_0
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mb/android/sync/MediaSync;->downloadParentItem(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;)V

    .line 484
    :cond_1
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mb/android/sync/MediaSync;->downloadParentItem(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getParentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 488
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getParentId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/MediaSync;->downloadParentItem(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private getSubtitles(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/sync/SyncJobItem;Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 9

    .line 405
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaSync: Begin getSubtitles"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v0, p2, Lcom/mb/android/model/sync/SyncJobItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 408
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 413
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 414
    iget-object v3, p2, Lcom/mb/android/model/sync/SyncJobItem;->AdditionalFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mb/android/model/sync/ItemFileInfo;

    .line 415
    iget-object v5, v4, Lcom/mb/android/model/sync/ItemFileInfo;->Type:Lcom/mb/android/model/sync/ItemFileType;

    sget-object v6, Lcom/mb/android/model/sync/ItemFileType;->Subtitles:Lcom/mb/android/model/sync/ItemFileType;

    if-ne v5, v6, :cond_1

    .line 416
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/dto/MediaSourceInfo;

    .line 421
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/mb/android/model/sync/ItemFileInfo;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    .line 422
    invoke-direct/range {v3 .. v8}, Lcom/mb/android/sync/MediaSync;->downloadSubtitles(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/sync/ItemFileInfo;Lcom/mb/android/model/sync/SyncJobItem;Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/model/dto/MediaSourceInfo;)V

    goto :goto_1

    :cond_3
    return-void

    .line 409
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "MediaSync: Cannot download subtitles because video has no media source info."

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private insertNewItem(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;ILcom/mb/android/sync/data/SyncJobStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;
    .locals 4
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 190
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getSyncStatusForLibraryItem(Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 193
    sget-object v2, Lcom/mb/android/sync/data/SyncJobStatus;->Queued:Lcom/mb/android/sync/data/SyncJobStatus;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/mb/android/sync/data/SyncJobStatus;->Transferring:Lcom/mb/android/sync/data/SyncJobStatus;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/mb/android/sync/data/SyncJobStatus;->Completed:Lcom/mb/android/sync/data/SyncJobStatus;

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mb/android/sync/data/SyncJobStatus;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "MediaSync: getLibraryItem found existing item with sync status %s"

    invoke-interface {v2, p1, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 196
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "MediaSync: getLibraryItem found existing item"

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    :goto_1
    if-eqz p6, :cond_3

    goto :goto_4

    .line 207
    :cond_3
    invoke-direct {p0, p5, p2}, Lcom/mb/android/sync/MediaSync;->getLocalPath(Ljava/lang/String;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object p6

    .line 208
    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p5

    const-string v2, "content"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_6

    .line 212
    :try_start_0
    iget-object p5, p0, Lcom/mb/android/sync/MediaSync;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    iget-object p6, p0, Lcom/mb/android/sync/MediaSync;->context:Landroid/content/Context;

    invoke-virtual {p5, p6, p1, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->insertNewMediaStoreItem(Landroid/content/Context;Landroid/net/Uri;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p6, p1

    move-object p1, v0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object p6, v0

    :goto_2
    if-nez p1, :cond_4

    if-nez p6, :cond_6

    :cond_4
    const-string p2, "Failed to insert new MediaStore item."

    if-eqz p1, :cond_5

    .line 220
    iget-object p3, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p4, v1, [Ljava/lang/Object;

    invoke-interface {p3, p2, p1, p4}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 222
    :cond_5
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-object v0

    .line 232
    :cond_6
    :goto_4
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_7

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-virtual {p2, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setMediaSources(Ljava/util/List;)V

    .line 238
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    if-nez p5, :cond_8

    .line 239
    new-instance p5, Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-direct {p5}, Lcom/mb/android/model/dto/MediaSourceInfo;-><init>()V

    .line 240
    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_8
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/mb/android/model/dto/MediaSourceInfo;

    .line 244
    invoke-virtual {p5, p6}, Lcom/mb/android/model/dto/MediaSourceInfo;->setPath(Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/mb/android/model/mediainfo/MediaProtocol;->File:Lcom/mb/android/model/mediainfo/MediaProtocol;

    invoke-virtual {p5, v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->setProtocol(Lcom/mb/android/model/mediainfo/MediaProtocol;)V

    .line 250
    invoke-virtual {p5}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_a
    :goto_5
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/entities/MediaStream;

    .line 251
    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v1

    sget-object v2, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v1, v2, :cond_a

    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getIsExternal()Z

    move-result v1

    if-nez v1, :cond_a

    .line 252
    sget-object v1, Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;->Embed:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    invoke-virtual {v0, v1}, Lcom/mb/android/model/entities/MediaStream;->setDeliveryMethod(Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;)V

    goto :goto_5

    .line 257
    :cond_b
    new-instance p1, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {p1}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    .line 258
    invoke-virtual {p1, p2}, Lcom/mb/android/sync/data/database/LocalItem;->setItem(Lcom/mb/android/model/dto/BaseItemDto;)V

    .line 259
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p1, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 260
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getServerId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 261
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    .line 262
    iput-object p4, p1, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 263
    iput-object p6, p1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 266
    :try_start_1
    iget-object p2, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {p2, p1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->insertLocalItem(Lcom/mb/android/sync/data/database/LocalItem;)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/mb/android/sync/data/database/LocalItem;->Id:J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 269
    :catch_1
    iget-object p2, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    iget-object p3, p1, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    iget-object p4, p1, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLibraryItemId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    .line 270
    iget-object p2, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {p2, p1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->updateLocalItem(Lcom/mb/android/sync/data/database/LocalItem;)V

    :goto_6
    return-object p1
.end method

.method private reportNewMedia(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSync: Begin reportNewMedia"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance v0, Lcom/mb/android/sync/MediaSync$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mb/android/sync/MediaSync$1;-><init>(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getSyncJobForDownloadedItem(Lcom/mb/android/model/dto/BaseItemDto;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private reportOfflineActions(Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSync: Begin reportOfflineActions"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getAllOfflineActions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->reportOfflineActions(Ljava/util/List;)V

    .line 125
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {p1, v0}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->deleteOfflineActions(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private syncData(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 4

    .line 537
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaSync: Begin syncData"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 539
    new-array v0, v0, [I

    sget-object v2, Lcom/mb/android/sync/data/SyncJobStatus;->Completed:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 540
    invoke-virtual {v2}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v2

    aput v2, v0, v1

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->CompletedWithError:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 541
    invoke-virtual {v1}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->Failed:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 542
    invoke-virtual {v1}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 545
    iget-object v1, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getItemsBySyncStatus(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .line 546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 547
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/sync/data/database/LocalItem;

    .line 548
    iget-object v2, v2, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    :cond_0
    new-instance v0, Lcom/mb/android/model/sync/SyncDataRequest;

    iget-object v2, p0, Lcom/mb/android/sync/MediaSync;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/mb/android/AndroidAppHost;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/mb/android/model/sync/SyncDataRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 552
    new-instance v1, Lcom/mb/android/sync/MediaSync$5;

    invoke-direct {v1, p0, p2}, Lcom/mb/android/sync/MediaSync$5;-><init>(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/sync/ServerSync$Callback;)V

    invoke-virtual {p1, v0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->syncData(Lcom/mb/android/model/sync/SyncDataRequest;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method


# virtual methods
.method public removeItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 584
    iget-object v2, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    iget-object v3, p0, Lcom/mb/android/sync/MediaSync;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-virtual {v3}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItem(Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 586
    iget-object v2, p0, Lcom/mb/android/sync/MediaSync;->assetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    invoke-virtual {v2, v1}, Lcom/mb/android/sync/data/LocalAssetHelper;->removeLocalFiles(Lcom/mb/android/sync/data/database/LocalItem;)V

    .line 587
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    :cond_1
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    iget-object v1, p0, Lcom/mb/android/sync/MediaSync;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-virtual {v1}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->deleteLocalItemsAndContainers(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 592
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "MediaSync: afterSyncData found %d empty container item(s)"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/sync/data/database/LocalItem;

    .line 594
    iget-object v2, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "MediaSync: Deleting container item: %s"

    invoke-interface {v2, v5, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    iget-object v2, p0, Lcom/mb/android/sync/MediaSync;->assetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    invoke-virtual {v2, v0}, Lcom/mb/android/sync/data/LocalAssetHelper;->removeLocalFiles(Lcom/mb/android/sync/data/database/LocalItem;)V

    goto :goto_1

    .line 598
    :cond_2
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "MediaSync: Exit afterSyncData"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reportItemSynced(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync;->apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-direct {p0, v0, p1, p2}, Lcom/mb/android/sync/MediaSync;->reportNewMedia(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V

    return-void
.end method

.method sync(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/mb/android/sync/MediaSync;->checkLocalFileExistence()V

    .line 84
    invoke-direct {p0, p1}, Lcom/mb/android/sync/MediaSync;->reportOfflineActions(Lcom/mb/android/apiinteraction/ApiClient;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/MediaSync;->getNewMedia(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V

    return-void
.end method
