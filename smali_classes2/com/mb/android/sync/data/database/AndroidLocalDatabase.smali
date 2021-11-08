.class public Lcom/mb/android/sync/data/database/AndroidLocalDatabase;
.super Ljava/lang/Object;
.source "AndroidLocalDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/sync/data/database/AndroidLocalDatabase$GetLibraryItemsResponse;,
        Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;
    }
.end annotation


# instance fields
.field private final localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

.field protected final logger:Lcom/mb/android/model/logging/ILogger;

.field private final offlineActionRepo:Lcom/mb/android/sync/data/database/OfflineActionDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 30
    invoke-static {p1}, Lcom/mb/android/sync/data/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/mb/android/sync/data/database/AppDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/AppDatabase;->localItemDao()Lcom/mb/android/sync/data/database/LocalItemDao;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    .line 31
    invoke-static {p1}, Lcom/mb/android/sync/data/database/AppDatabase;->getInstance(Landroid/content/Context;)Lcom/mb/android/sync/data/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mb/android/sync/data/database/AppDatabase;->offlineActionDao()Lcom/mb/android/sync/data/database/OfflineActionDao;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->offlineActionRepo:Lcom/mb/android/sync/data/database/OfflineActionDao;

    return-void
.end method

.method static synthetic lambda$getLocalItemIdAndPaths$1(Ljava/util/HashMap;Lcom/mb/android/sync/data/database/LocalItem$ItemIdPathPair;Lcom/mb/android/sync/data/database/LocalItem$ItemIdPathPair;)I
    .locals 0

    .line 297
    iget-object p1, p1, Lcom/mb/android/sync/data/database/LocalItem$ItemIdPathPair;->ItemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p2, p2, Lcom/mb/android/sync/data/database/LocalItem$ItemIdPathPair;->ItemId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getLocalItemsByIds$0(Ljava/util/HashMap;Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/sync/data/database/LocalItem;)I
    .locals 0

    .line 287
    iget-object p1, p1, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p2, p2, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public deleteLocalItem(Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao;->delete(Lcom/mb/android/sync/data/database/LocalItem;)V

    return-void
.end method

.method public deleteLocalItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->delete(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteLocalItemsAndContainers(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
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

    .line 341
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->deleteItemsAndContainers(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public deleteOfflineActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/OfflineAction;",
            ">;)V"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->offlineActionRepo:Lcom/mb/android/sync/data/database/OfflineActionDao;

    invoke-interface {v0, p1}, Lcom/mb/android/sync/data/database/OfflineActionDao;->delete(Ljava/util/List;)V

    return-void
.end method

.method public getAllLocalItems(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao;->getAllLibraryItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllOfflineActions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/OfflineAction;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->offlineActionRepo:Lcom/mb/android/sync/data/database/OfflineActionDao;

    invoke-interface {v0, p1}, Lcom/mb/android/sync/data/database/OfflineActionDao;->getAllByServerId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getChildItemIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->getChildItemIdsRecursive(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getItemsBySyncStatus(Ljava/lang/String;[I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->getItemsByStatuses(Ljava/lang/String;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLibraryItemId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->getLibraryItemId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLibraryItemTypes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao;->getLibraryItemTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLocalItem(J)Lcom/mb/android/sync/data/database/LocalItem;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->getLibraryItem(J)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object p1

    return-object p1
.end method

.method public getLocalItem(Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;
    .locals 3

    const/4 v0, 0x2

    .line 242
    new-array v0, v0, [I

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->Completed:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 243
    invoke-virtual {v1}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->None:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 244
    invoke-virtual {v1}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 246
    iget-object v1, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v1, p1, p2, v0}, Lcom/mb/android/sync/data/database/LocalItemDao;->getLibraryItem(Ljava/lang/String;Ljava/lang/String;[I)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object p1

    return-object p1
.end method

.method public getLocalItemAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 250
    new-array v0, v0, [I

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->Completed:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 251
    invoke-virtual {v1}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->None:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 252
    invoke-virtual {v1}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 254
    iget-object v1, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v1, p1, p2, v0}, Lcom/mb/android/sync/data/database/LocalItemDao;->getLibraryItemAsync(Ljava/lang/String;Ljava/lang/String;[I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getLocalItemExists(J)Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->getlibraryItemExists(J)Z

    move-result p1

    return p1
.end method

.method public getLocalItemIdAndPaths(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem$ItemIdPathPair;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 293
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 294
    aget-object v2, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v1, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->getLibraryItemIdAndPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 297
    new-instance p2, Lcom/mb/android/sync/data/database/-$$Lambda$AndroidLocalDatabase$qLdJJylY6b0f6t9ybf4O40YLxAM;

    invoke-direct {p2, v0}, Lcom/mb/android/sync/data/database/-$$Lambda$AndroidLocalDatabase$qLdJJylY6b0f6t9ybf4O40YLxAM;-><init>(Ljava/util/HashMap;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public getLocalItemWithLocalPath(Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao;->getLibraryItemWithLocalPath(Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object p1

    return-object p1
.end method

.method public getLocalItemsByIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 283
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 284
    aget-object v2, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v1, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->getLibraryItems(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 287
    new-instance p2, Lcom/mb/android/sync/data/database/-$$Lambda$AndroidLocalDatabase$PnZEwAzIFoCowEGBi8uDDrocCCo;

    invoke-direct {p2, v0}, Lcom/mb/android/sync/data/database/-$$Lambda$AndroidLocalDatabase$PnZEwAzIFoCowEGBi8uDDrocCCo;-><init>(Ljava/util/HashMap;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public getLocalItemsByQuery(Ljava/lang/String;Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;)Lcom/mb/android/sync/data/database/AndroidLocalDatabase$GetLibraryItemsResponse;
    .locals 13

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM local_item WHERE ServerId = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, " AND Status in (?,?,?)"

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    sget-object v2, Lcom/mb/android/sync/data/SyncJobStatus;->Completed:Lcom/mb/android/sync/data/SyncJobStatus;

    invoke-virtual {v2}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v2, Lcom/mb/android/sync/data/SyncJobStatus;->CompletedWithError:Lcom/mb/android/sync/data/SyncJobStatus;

    invoke-virtual {v2}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v2, Lcom/mb/android/sync/data/SyncJobStatus;->None:Lcom/mb/android/sync/data/SyncJobStatus;

    invoke-virtual {v2}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    const-string v3, "IndexNumber"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    .line 52
    iget-object v2, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    iget-object v6, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    invoke-virtual {v2, p1, v6}, Lcom/mb/android/sync/data/database/LocalItemDao;->getLibraryItemType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "MusicAlbum"

    .line 53
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "ParentIndexNumber,IndexNumber,SortName"

    if-eqz v6, :cond_2

    .line 54
    iput-boolean v5, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->Recursive:Z

    .line 55
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->IncludeItemTypes:Ljava/util/List;

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->IncludeItemTypes:Ljava/util/List;

    .line 58
    :cond_0
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->IncludeItemTypes:Ljava/util/List;

    const-string v6, "Audio"

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->AlbumIds:Ljava/util/List;

    iget-object v6, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->AlbumIds:Ljava/util/List;

    iget-object v6, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iput-object v4, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    .line 64
    :cond_1
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SortBy:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 65
    iput-object v7, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SortBy:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v6, "Series"

    .line 68
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 69
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    iput-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SeriesId:Ljava/lang/String;

    .line 70
    iput-object v4, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    .line 71
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SortBy:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 72
    iget-boolean v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->Recursive:Z

    if-eqz v2, :cond_3

    const-string v2, "ParentIndexNumber,IndexNumber"

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    iput-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SortBy:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v6, "Season"

    .line 75
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    iput-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SeasonId:Ljava/lang/String;

    .line 77
    iput-object v4, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    .line 78
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SortBy:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 79
    iput-object v7, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SortBy:Ljava/lang/String;

    .line 84
    :cond_5
    :goto_1
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->IncludeItemTypes:Ljava/util/List;

    const-string v6, ",?"

    const-string v7, ")"

    const/4 v8, 0x0

    if-eqz v2, :cond_7

    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->IncludeItemTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, " AND Type in (?"

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->IncludeItemTypes:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 87
    :goto_2
    iget-object v9, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->IncludeItemTypes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 88
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v9, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->IncludeItemTypes:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 91
    :cond_6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_7
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->MediaTypes:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->MediaTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, " AND MediaType in (?"

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->MediaTypes:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 97
    :goto_3
    iget-object v9, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->MediaTypes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_8

    .line 98
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v9, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->MediaTypes:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 101
    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_9
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->AlbumIds:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->AlbumIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, " AND AlbumId in (?"

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->AlbumIds:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 107
    :goto_4
    iget-object v9, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->AlbumIds:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    .line 108
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v9, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->AlbumIds:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 111
    :cond_a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_b
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SeriesId:Ljava/lang/String;

    if-eqz v2, :cond_c

    const-string v2, " AND SeriesId = ?"

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SeriesId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_c
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SeasonId:Ljava/lang/String;

    if-eqz v2, :cond_d

    const-string v2, " AND SeasonId = ?"

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SeasonId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_d
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->Filters:Ljava/util/List;

    const-string v9, "IsNotFolder"

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v9, "IsFolder"

    if-eqz v2, :cond_e

    const-string v2, " AND IsFolder = 0"

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 126
    :cond_e
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->Filters:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, " AND IsFolder = 1"

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_f
    :goto_5
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 131
    iget-boolean v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->Recursive:Z

    if-eqz v2, :cond_11

    .line 133
    iget-object v2, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    iget-object v10, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    invoke-virtual {v2, p1, v10}, Lcom/mb/android/sync/data/database/LocalItemDao;->getChildItemIdsRecursive(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, " AND ItemId in (?"

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_10

    .line 139
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 142
    :cond_10
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_11
    const-string p1, " AND ParentId = ?"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object p1, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SearchParentId:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_12
    :goto_7
    iget-object p1, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SortBy:Ljava/lang/String;

    const-string v2, "Random"

    .line 153
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string p1, " ORDER BY random() "

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p1, v4

    :cond_13
    if-eqz p1, :cond_1e

    const-string v2, ","

    .line 160
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 161
    iget-object v5, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SortOrder:Ljava/lang/String;

    if-eqz v5, :cond_14

    iget-object v5, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->SortOrder:Ljava/lang/String;

    goto :goto_8

    :cond_14
    const-string v5, ""

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 162
    :goto_9
    array-length v7, p1

    if-ge v5, v7, :cond_1e

    .line 164
    aget-object v7, p1, v5

    .line 166
    array-length v10, v2

    if-ge v5, v10, :cond_15

    .line 167
    aget-object v10, v2, v5

    goto :goto_a

    :cond_15
    move-object v10, v4

    .line 169
    :goto_a
    invoke-virtual {p2, v10}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->getSortAscending(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    const-string v10, "ASC"

    goto :goto_b

    :cond_16
    const-string v10, "DESC"

    :goto_b
    const-string v11, "isFolder"

    .line 172
    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    move-object v7, v9

    goto :goto_c

    :cond_17
    const-string v11, "dateCreated"

    .line 175
    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    const-string v7, "DateCreated"

    goto :goto_c

    :cond_18
    const-string v11, "sortName"

    .line 178
    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    const-string v7, "SortName"

    goto :goto_c

    :cond_19
    const-string v11, "indexNumber"

    .line 181
    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    move-object v7, v3

    goto :goto_c

    :cond_1a
    const-string v11, "parentIndexNumber"

    .line 184
    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string v7, "ParentIndexNumber"

    goto :goto_c

    :cond_1b
    move-object v7, v4

    :goto_c
    if-eqz v7, :cond_1d

    const-string v11, " "

    if-nez v6, :cond_1c

    const-string v12, " ORDER BY "

    .line 190
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1c
    const-string v12, ", "

    .line 193
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    add-int/lit8 v6, v6, 0x1

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_1e
    const/16 p1, 0x32

    .line 201
    iget-boolean v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->EnableTotalRecordCount:Z

    const-string v3, ";"

    if-eqz v2, :cond_1f

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SELECT *"

    const-string v4, "SELECT count(*)"

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "ORDER BY"

    .line 203
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 204
    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-object v2, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    new-instance v4, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/mb/android/sync/data/database/LocalItemDao;->getItemCountForQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)I

    move-result p1

    .line 209
    :cond_1f
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->Limit:Ljava/lang/Integer;

    if-eqz v2, :cond_20

    const-string v2, " LIMIT ? OFFSET ?"

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->Limit:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget v2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->StartIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v2, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    new-instance v3, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/mb/android/sync/data/database/LocalItemDao;->getItemsByQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;

    move-result-object v0

    .line 218
    iget-boolean p2, p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;->EnableTotalRecordCount:Z

    if-nez p2, :cond_21

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 222
    :cond_21
    new-instance p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$GetLibraryItemsResponse;

    invoke-direct {p2, v0, p1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$GetLibraryItemsResponse;-><init>(Ljava/util/List;I)V

    return-object p2
.end method

.method public getLocalItemsByType(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->getLibraryItemsByType(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLocalPathForLibraryItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->getLocalPathForLibraryItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSyncStatusForLibraryItem(Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/SyncJobStatus;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->getSyncStatusForLibraryItem(Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object p1

    return-object p1
.end method

.method public insertLocalItem(Lcom/mb/android/sync/data/database/LocalItem;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 307
    invoke-virtual {p1}, Lcom/mb/android/sync/data/database/LocalItem;->saveLibraryItem()V

    .line 308
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao;->insert(Lcom/mb/android/sync/data/database/LocalItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public varargs insertLocalItems([Lcom/mb/android/sync/data/database/LocalItem;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 313
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 314
    invoke-virtual {v2}, Lcom/mb/android/sync/data/database/LocalItem;->saveLibraryItem()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao;->insert([Lcom/mb/android/sync/data/database/LocalItem;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public insertOfflineAction(Lcom/mb/android/sync/data/database/OfflineAction;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->offlineActionRepo:Lcom/mb/android/sync/data/database/OfflineActionDao;

    invoke-interface {v0, p1}, Lcom/mb/android/sync/data/database/OfflineActionDao;->insert(Lcom/mb/android/sync/data/database/OfflineAction;)V

    return-void
.end method

.method public updateLocalItem(Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 1

    .line 321
    invoke-virtual {p1}, Lcom/mb/android/sync/data/database/LocalItem;->saveLibraryItem()V

    .line 322
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao;->update(Lcom/mb/android/sync/data/database/LocalItem;)V

    return-void
.end method

.method public updateSyncStatusForItem(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/sync/data/SyncJobStatus;)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->localItemRepo:Lcom/mb/android/sync/data/database/LocalItemDao;

    iget-wide v1, p1, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    invoke-virtual {v0, v1, v2, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->updateSyncStatusForItem(JLcom/mb/android/sync/data/SyncJobStatus;)V

    return-void
.end method
