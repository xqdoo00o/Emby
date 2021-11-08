.class public interface abstract Lcom/mb/android/sync/data/database/OfflineActionDao;
.super Ljava/lang/Object;
.source "OfflineActionDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract delete(Ljava/util/List;)V
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/OfflineAction;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllByServerId(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM offline_action WHERE ServerId = :serverId"
    .end annotation

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
.end method

.method public abstract insert(Lcom/mb/android/sync/data/database/OfflineAction;)V
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method
