.class public final Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;
.super Ljava/lang/Object;
.source "OfflineActionDao_Impl.java"

# interfaces
.implements Lcom/mb/android/sync/data/database/OfflineActionDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfOfflineAction:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/mb/android/sync/data/database/OfflineAction;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfOfflineAction:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/mb/android/sync/data/database/OfflineAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    new-instance v0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl$1;-><init>(Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__insertionAdapterOfOfflineAction:Landroidx/room/EntityInsertionAdapter;

    .line 60
    new-instance v0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl$2;-><init>(Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__deletionAdapterOfOfflineAction:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method


# virtual methods
.method public delete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/OfflineAction;",
            ">;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 88
    iget-object v0, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__deletionAdapterOfOfflineAction:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 91
    iget-object p1, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object p1, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 94
    throw p1
.end method

.method public getAllByServerId(Ljava/lang/String;)Ljava/util/List;
    .locals 13
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

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM offline_action WHERE ServerId = ?"

    .line 100
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 103
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 107
    :goto_0
    iget-object p1, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 108
    iget-object p1, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "ActionId"

    .line 110
    invoke-static {p1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "Date"

    .line 111
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ItemId"

    .line 112
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "ServerId"

    .line 113
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "PositionTicks"

    .line 114
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "Type"

    .line 115
    invoke-static {p1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "UserId"

    .line 116
    invoke-static {p1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 117
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 120
    new-instance v10, Lcom/mb/android/sync/data/database/OfflineAction;

    invoke-direct {v10}, Lcom/mb/android/sync/data/database/OfflineAction;-><init>()V

    .line 121
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/mb/android/sync/data/database/OfflineAction;->ActionId:I

    .line 122
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/mb/android/sync/data/database/OfflineAction;->Date:J

    .line 123
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/mb/android/sync/data/database/OfflineAction;->ItemId:Ljava/lang/String;

    .line 124
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/mb/android/sync/data/database/OfflineAction;->ServerId:Ljava/lang/String;

    .line 125
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 126
    iput-object v2, v10, Lcom/mb/android/sync/data/database/OfflineAction;->PositionTicks:Ljava/lang/Long;

    goto :goto_2

    .line 128
    :cond_1
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Lcom/mb/android/sync/data/database/OfflineAction;->PositionTicks:Ljava/lang/Long;

    .line 130
    :goto_2
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/mb/android/sync/data/database/OfflineAction;->Type:I

    .line 131
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/mb/android/sync/data/database/OfflineAction;->UserId:Ljava/lang/String;

    .line 132
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 136
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 137
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 136
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 137
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 138
    throw v0
.end method

.method public insert(Lcom/mb/android/sync/data/database/OfflineAction;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 76
    iget-object v0, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__insertionAdapterOfOfflineAction:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object p1, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 82
    throw p1
.end method
