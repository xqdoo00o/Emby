.class public abstract Lcom/mb/android/sync/data/database/LocalItemDao;
.super Ljava/lang/Object;
.source "LocalItemDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract delete(Lcom/mb/android/sync/data/database/LocalItem;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract delete(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM local_item WHERE ServerId = :serverId AND ItemId = :itemId"
    .end annotation
.end method

.method public abstract delete(Ljava/util/List;)V
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public deleteItemsAndContainers(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/room/Transaction;
    .end annotation

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

    .line 125
    invoke-virtual {p0, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->delete(Ljava/util/List;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao;->getEmptyContainerItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao;->delete(Ljava/util/List;)V

    return-object p1
.end method

.method public abstract getAllLibraryItems()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_item"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLibraryItems(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_item WHERE ServerId = :serverId"
    .end annotation

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
.end method

.method public abstract getChildItemIdsRecursive(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "WITH RECURSIVE get_children(parent) AS ( SELECT ItemId FROM local_item WHERE ServerId = :serverId AND ParentId = :parentId UNION ALL SELECT ItemId FROM local_item, get_children WHERE ServerId = :serverId AND ParentId = get_children.parent LIMIT (SELECT Count(*) FROM local_item) ) SELECT parent FROM get_children;"
    .end annotation

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
.end method

.method public abstract getEmptyContainerItems(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_item WHERE ServerId = :serverId AND Id in ( WITH items AS (SELECT * FROM local_item WHERE ServerId = :serverId AND IsFolder = 1) SELECT Id FROM items WHERE NOT EXISTS(SELECT 1 FROM local_item WHERE ParentId = items.ItemId OR SeasonId = items.ItemId OR SeriesId = items.ItemId OR AlbumId = items.ItemId LIMIT 1) )"
    .end annotation

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
.end method

.method public abstract getItemCountForQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)I
    .annotation build Landroidx/room/RawQuery;
    .end annotation
.end method

.method public abstract getItemsByQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .annotation build Landroidx/room/RawQuery;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemsByStatuses(Ljava/lang/String;[I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_item WHERE ServerId = :serverId AND Status in (:statuses) AND LocalPath is NOT NULL"
    .end annotation

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
.end method

.method public abstract getLibraryItem(J)Lcom/mb/android/sync/data/database/LocalItem;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_item WHERE Id = :id"
    .end annotation
.end method

.method public abstract getLibraryItem(Ljava/lang/String;Ljava/lang/String;[I)Lcom/mb/android/sync/data/database/LocalItem;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_item WHERE ServerId = :serverId AND ItemId = :itemId AND Status in (:statuses)"
    .end annotation
.end method

.method public abstract getLibraryItemAsync(Ljava/lang/String;Ljava/lang/String;[I)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_item WHERE ServerId = :serverId AND ItemId = :itemId AND Status in (:statuses)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLibraryItemId(Ljava/lang/String;Ljava/lang/String;)J
    .annotation build Landroidx/room/Query;
        value = "SELECT Id FROM local_item WHERE ServerId = :serverId AND ItemId = :itemId"
    .end annotation
.end method

.method public abstract getLibraryItemIdAndPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT ItemId, LocalPath FROM local_item WHERE ServerId = :serverId AND ItemId in (:itemIds)"
    .end annotation

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
.end method

.method public abstract getLibraryItemType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT Type FROM local_item WHERE ServerId = :serverId AND ItemId = :itemId"
    .end annotation
.end method

.method public abstract getLibraryItemTypes(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT DISTINCT Type FROM local_item WHERE ServerId = :serverId"
    .end annotation

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
.end method

.method public abstract getLibraryItemWithLocalPath(Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_item WHERE LocalPath = :localPath"
    .end annotation
.end method

.method public abstract getLibraryItems(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_item WHERE ServerId = :serverId AND ItemId in (:itemIds)"
    .end annotation

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
.end method

.method public abstract getLibraryItemsByType(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_item WHERE ServerId = :serverId AND Type in (:types)"
    .end annotation

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
.end method

.method public abstract getLocalPathForLibraryItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroidx/room/Query;
        value = "SELECT LocalPath FROM local_item WHERE ServerId = :serverId AND ItemId = :itemId"
    .end annotation
.end method

.method public abstract getSyncStatusForLibraryItem(Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/SyncJobStatus;
    .annotation build Landroidx/room/Query;
        value = "SELECT Status FROM local_item WHERE ServerId = :serverId AND ItemId = :itemId"
    .end annotation
.end method

.method public abstract getlibraryItemExists(J)Z
    .annotation build Landroidx/room/Query;
        value = "SELECT EXISTS(SELECT 1 from local_item WHERE Id = :id LIMIT 1)"
    .end annotation
.end method

.method public abstract insert(Lcom/mb/android/sync/data/database/LocalItem;)J
    .annotation build Landroidx/room/Insert;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation
.end method

.method public varargs abstract insert([Lcom/mb/android/sync/data/database/LocalItem;)Ljava/util/List;
    .annotation build Landroidx/room/Insert;
    .end annotation

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
.end method

.method public abstract update(Lcom/mb/android/sync/data/database/LocalItem;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract update(Ljava/util/List;)V
    .annotation build Landroidx/room/Update;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSyncStatusForItem(JLcom/mb/android/sync/data/SyncJobStatus;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE local_item SET Status = :status WHERE Id = :id"
    .end annotation
.end method
