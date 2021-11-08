.class public final Lcom/mb/android/sync/data/database/LocalItemDao_Impl;
.super Lcom/mb/android/sync/data/database/LocalItemDao;
.source "LocalItemDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfLocalItem:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfLocalItem:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateSyncStatusForItem:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfLocalItem:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/mb/android/sync/data/database/LocalItemDao;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    new-instance v0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$1;-><init>(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__insertionAdapterOfLocalItem:Landroidx/room/EntityInsertionAdapter;

    .line 154
    new-instance v0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$2;-><init>(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__deletionAdapterOfLocalItem:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 165
    new-instance v0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$3;-><init>(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__updateAdapterOfLocalItem:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 273
    new-instance v0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$4;-><init>(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__preparedStmtOfUpdateSyncStatusForItem:Landroidx/room/SharedSQLiteStatement;

    .line 280
    new-instance v0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$5;-><init>(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method private __entityCursorConverter_comMbAndroidSyncDataDatabaseLocalItem(Landroid/database/Cursor;)Lcom/mb/android/sync/data/database/LocalItem;
    .locals 24

    move-object/from16 v0, p1

    const-string v1, "Id"

    .line 2035
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ServerId"

    .line 2036
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ItemId"

    .line 2037
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "SyncJobItemId"

    .line 2038
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "LocalPath"

    .line 2039
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "Item"

    .line 2040
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "Status"

    .line 2041
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "SyncGuid"

    .line 2042
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "Type"

    .line 2043
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "ParentId"

    .line 2044
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "AlbumId"

    .line 2045
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "SeasonId"

    .line 2046
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "SeriesId"

    .line 2047
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "MediaType"

    .line 2048
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "SortName"

    .line 2049
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "IsFolder"

    .line 2050
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "DateCreated"

    .line 2051
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "IndexNumber"

    .line 2052
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "ParentIndexNumber"

    .line 2053
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    .line 2054
    new-instance v15, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v15}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    move/from16 v21, v14

    const/4 v14, -0x1

    if-eq v1, v14, :cond_0

    move/from16 v22, v12

    move/from16 v23, v13

    .line 2056
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v15, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    goto :goto_0

    :cond_0
    move/from16 v22, v12

    move/from16 v23, v13

    :goto_0
    if-eq v2, v14, :cond_1

    .line 2059
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    :cond_1
    if-eq v3, v14, :cond_2

    .line 2062
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    :cond_2
    const/4 v1, 0x0

    if-eq v4, v14, :cond_4

    .line 2065
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2066
    iput-object v1, v15, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    goto :goto_1

    .line 2068
    :cond_3
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v15, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    :cond_4
    :goto_1
    if-eq v5, v14, :cond_5

    .line 2072
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    :cond_5
    if-eq v6, v14, :cond_6

    .line 2075
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    :cond_6
    if-eq v7, v14, :cond_8

    .line 2079
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v1

    goto :goto_2

    .line 2082
    :cond_7
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2084
    :goto_2
    invoke-static {v2}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v2

    iput-object v2, v15, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    :cond_8
    if-eq v8, v14, :cond_a

    .line 2087
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2088
    iput-object v1, v15, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    goto :goto_3

    .line 2090
    :cond_9
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v15, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    :cond_a
    :goto_3
    if-eq v9, v14, :cond_b

    .line 2095
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2096
    invoke-virtual {v15, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setType(Ljava/lang/String;)V

    :cond_b
    if-eq v10, v14, :cond_c

    .line 2100
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2101
    invoke-virtual {v15, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setParentId(Ljava/lang/String;)V

    :cond_c
    if-eq v11, v14, :cond_d

    .line 2105
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2106
    invoke-virtual {v15, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setAlbumId(Ljava/lang/String;)V

    :cond_d
    move/from16 v2, v22

    if-eq v2, v14, :cond_e

    .line 2110
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2111
    invoke-virtual {v15, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setSeasonId(Ljava/lang/String;)V

    :cond_e
    move/from16 v2, v23

    if-eq v2, v14, :cond_f

    .line 2115
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2116
    invoke-virtual {v15, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setSeriesId(Ljava/lang/String;)V

    :cond_f
    move/from16 v2, v21

    if-eq v2, v14, :cond_10

    .line 2120
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2121
    invoke-virtual {v15, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setMediaType(Ljava/lang/String;)V

    :cond_10
    move/from16 v2, v16

    if-eq v2, v14, :cond_11

    .line 2125
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2126
    invoke-virtual {v15, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setSortName(Ljava/lang/String;)V

    :cond_11
    move/from16 v2, v17

    if-eq v2, v14, :cond_15

    .line 2131
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object v2, v1

    goto :goto_4

    .line 2134
    :cond_12
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_13

    move-object v2, v1

    goto :goto_6

    .line 2136
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_5

    :cond_14
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2137
    :goto_6
    invoke-virtual {v15, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setIsFolder(Ljava/lang/Boolean;)V

    :cond_15
    move/from16 v2, v18

    if-eq v2, v14, :cond_17

    .line 2142
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v2, v1

    goto :goto_7

    .line 2145
    :cond_16
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2147
    :goto_7
    invoke-static {v2}, Lcom/mb/android/sync/data/database/Converters;->fromLong(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v2

    .line 2148
    invoke-virtual {v15, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setDateCreated(Ljava/util/Date;)V

    :cond_17
    move/from16 v2, v19

    if-eq v2, v14, :cond_19

    .line 2152
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object v2, v1

    goto :goto_8

    .line 2155
    :cond_18
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2157
    :goto_8
    invoke-virtual {v15, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setIndexNumber(Ljava/lang/Integer;)V

    :cond_19
    move/from16 v2, v20

    if-eq v2, v14, :cond_1b

    .line 2161
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_9

    .line 2164
    :cond_1a
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2166
    :goto_9
    invoke-virtual {v15, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setParentIndexNumber(Ljava/lang/Integer;)V

    :cond_1b
    return-object v15
.end method

.method static synthetic access$001(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao;->deleteItemsAndContainers(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public delete(Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 318
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__deletionAdapterOfLocalItem:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 321
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 324
    throw p1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 403
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 406
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 412
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 414
    :cond_1
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 416
    :goto_1
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 418
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 419
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 422
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 421
    iget-object p2, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 422
    iget-object p2, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 423
    throw p1
.end method

.method public delete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;)V"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 330
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__deletionAdapterOfLocalItem:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 333
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 336
    throw p1
.end method

.method public deleteItemsAndContainers(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
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

    .line 366
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 368
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->access$001(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 369
    iget-object p2, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    iget-object p2, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 373
    throw p1
.end method

.method public getAllLibraryItems()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT * FROM local_item"

    .line 1722
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 1723
    iget-object v3, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1724
    iget-object v3, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v2, v0, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v5, "Id"

    .line 1726
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "ServerId"

    .line 1727
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "ItemId"

    .line 1728
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "SyncJobItemId"

    .line 1729
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "LocalPath"

    .line 1730
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "Item"

    .line 1731
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "Status"

    .line 1732
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "SyncGuid"

    .line 1733
    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "Type"

    .line 1734
    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "ParentId"

    .line 1735
    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "AlbumId"

    .line 1736
    invoke-static {v3, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "SeasonId"

    .line 1737
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "SeriesId"

    .line 1738
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "MediaType"

    .line 1739
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "SortName"

    .line 1740
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "IsFolder"

    .line 1741
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "DateCreated"

    .line 1742
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "IndexNumber"

    .line 1743
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "ParentIndexNumber"

    .line 1744
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    .line 1745
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v22, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1746
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1748
    new-instance v1, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v1}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    move/from16 v23, v14

    move/from16 v24, v15

    .line 1749
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v1, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    .line 1750
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 1751
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 1752
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    .line 1753
    iput-object v14, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    goto :goto_1

    .line 1755
    :cond_0
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    .line 1757
    :goto_1
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 1758
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    .line 1760
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    goto :goto_2

    .line 1763
    :cond_1
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1765
    :goto_2
    invoke-static {v14}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v14

    iput-object v14, v1, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 1766
    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    .line 1767
    iput-object v14, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    .line 1769
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    .line 1772
    :goto_3
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1773
    invoke-virtual {v1, v15}, Lcom/mb/android/sync/data/database/LocalItem;->setType(Ljava/lang/String;)V

    move/from16 v15, v23

    .line 1775
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1776
    invoke-virtual {v1, v14}, Lcom/mb/android/sync/data/database/LocalItem;->setParentId(Ljava/lang/String;)V

    move/from16 v23, v5

    move/from16 v14, v24

    .line 1778
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1779
    invoke-virtual {v1, v5}, Lcom/mb/android/sync/data/database/LocalItem;->setAlbumId(Ljava/lang/String;)V

    .line 1781
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1782
    invoke-virtual {v1, v5}, Lcom/mb/android/sync/data/database/LocalItem;->setSeasonId(Ljava/lang/String;)V

    .line 1784
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1785
    invoke-virtual {v1, v5}, Lcom/mb/android/sync/data/database/LocalItem;->setSeriesId(Ljava/lang/String;)V

    move/from16 v5, v22

    move/from16 v22, v0

    .line 1787
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1788
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setMediaType(Ljava/lang/String;)V

    move/from16 v0, v17

    move/from16 v17, v4

    .line 1790
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1791
    invoke-virtual {v1, v4}, Lcom/mb/android/sync/data/database/LocalItem;->setSortName(Ljava/lang/String;)V

    move/from16 v4, v18

    .line 1794
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    goto :goto_4

    .line 1797
    :cond_3
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    :goto_4
    if-nez v18, :cond_4

    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_6

    .line 1799
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x1

    goto :goto_5

    :cond_5
    const/16 v18, 0x0

    :goto_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move/from16 v24, v0

    move-object/from16 v0, v18

    .line 1800
    :goto_6
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIsFolder(Ljava/lang/Boolean;)V

    move/from16 v0, v19

    .line 1803
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_6

    move/from16 v19, v0

    const/16 v18, 0x0

    goto :goto_7

    .line 1806
    :cond_6
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move/from16 v19, v0

    .line 1808
    :goto_7
    invoke-static/range {v18 .. v18}, Lcom/mb/android/sync/data/database/Converters;->fromLong(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 1809
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setDateCreated(Ljava/util/Date;)V

    move/from16 v0, v20

    .line 1811
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_8

    .line 1814
    :cond_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v20, v0

    move-object/from16 v0, v18

    .line 1816
    :goto_8
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIndexNumber(Ljava/lang/Integer;)V

    move/from16 v0, v21

    .line 1818
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_9

    .line 1821
    :cond_8
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v21, v0

    move-object/from16 v0, v18

    .line 1823
    :goto_9
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setParentIndexNumber(Ljava/lang/Integer;)V

    .line 1824
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v4

    move/from16 v4, v17

    move/from16 v0, v22

    move/from16 v17, v24

    move/from16 v22, v5

    move/from16 v5, v23

    move/from16 v25, v15

    move v15, v14

    move/from16 v14, v25

    goto/16 :goto_0

    .line 1828
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1829
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 1828
    :goto_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1829
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1830
    throw v0
.end method

.method public getAllLibraryItems(Ljava/lang/String;)Ljava/util/List;
    .locals 26
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "SELECT * FROM local_item WHERE ServerId = ?"

    .line 1602
    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_0

    .line 1605
    invoke-virtual {v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1607
    :cond_0
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1609
    :goto_0
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1610
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "Id"

    .line 1612
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "ServerId"

    .line 1613
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ItemId"

    .line 1614
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "SyncJobItemId"

    .line 1615
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "LocalPath"

    .line 1616
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "Item"

    .line 1617
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "Status"

    .line 1618
    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "SyncGuid"

    .line 1619
    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "Type"

    .line 1620
    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "ParentId"

    .line 1621
    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "AlbumId"

    .line 1622
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "SeasonId"

    .line 1623
    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "SeriesId"

    .line 1624
    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "MediaType"

    .line 1625
    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "SortName"

    .line 1626
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "IsFolder"

    .line 1627
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "DateCreated"

    .line 1628
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "IndexNumber"

    .line 1629
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "ParentIndexNumber"

    .line 1630
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 1631
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v22, v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1632
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1634
    new-instance v1, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v1}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    move-object/from16 v24, v3

    move/from16 v23, v4

    .line 1635
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    .line 1636
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 1637
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 1638
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 1639
    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    goto :goto_2

    .line 1641
    :cond_1
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    .line 1643
    :goto_2
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 1644
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    .line 1646
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    .line 1649
    :cond_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1651
    :goto_3
    invoke-static {v3}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 1652
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 1653
    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    .line 1655
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    .line 1658
    :goto_4
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1659
    invoke-virtual {v1, v4}, Lcom/mb/android/sync/data/database/LocalItem;->setType(Ljava/lang/String;)V

    .line 1661
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1662
    invoke-virtual {v1, v4}, Lcom/mb/android/sync/data/database/LocalItem;->setParentId(Ljava/lang/String;)V

    .line 1664
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1665
    invoke-virtual {v1, v4}, Lcom/mb/android/sync/data/database/LocalItem;->setAlbumId(Ljava/lang/String;)V

    move/from16 v4, v23

    .line 1667
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1668
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setSeasonId(Ljava/lang/String;)V

    .line 1670
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1671
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setSeriesId(Ljava/lang/String;)V

    move/from16 v3, v22

    move/from16 v22, v0

    .line 1673
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1674
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setMediaType(Ljava/lang/String;)V

    move/from16 v0, v17

    move/from16 v17, v2

    .line 1676
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1677
    invoke-virtual {v1, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setSortName(Ljava/lang/String;)V

    move/from16 v2, v18

    .line 1680
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x0

    goto :goto_5

    .line 1683
    :cond_4
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    :goto_5
    if-nez v18, :cond_5

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_7

    .line 1685
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    goto :goto_6

    :cond_6
    const/16 v18, 0x0

    :goto_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move/from16 v23, v0

    move-object/from16 v0, v18

    .line 1686
    :goto_7
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIsFolder(Ljava/lang/Boolean;)V

    move/from16 v0, v19

    .line 1689
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v19, v0

    const/16 v18, 0x0

    goto :goto_8

    .line 1692
    :cond_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move/from16 v19, v0

    .line 1694
    :goto_8
    invoke-static/range {v18 .. v18}, Lcom/mb/android/sync/data/database/Converters;->fromLong(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 1695
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setDateCreated(Ljava/util/Date;)V

    move/from16 v0, v20

    .line 1697
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_9

    .line 1700
    :cond_8
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v20, v0

    move-object/from16 v0, v18

    .line 1702
    :goto_9
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIndexNumber(Ljava/lang/Integer;)V

    move/from16 v0, v21

    .line 1704
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_a

    .line 1707
    :cond_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v21, v0

    move-object/from16 v0, v18

    .line 1709
    :goto_a
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setParentIndexNumber(Ljava/lang/Integer;)V

    move-object/from16 v0, v24

    .line 1710
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v2

    move/from16 v2, v17

    move/from16 v17, v23

    move/from16 v25, v3

    move-object v3, v0

    move/from16 v0, v22

    move/from16 v22, v25

    goto/16 :goto_1

    :cond_a
    move-object v0, v3

    .line 1714
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1715
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1714
    :goto_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1715
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1716
    throw v0
.end method

.method public getChildItemIdsRecursive(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    const/4 v0, 0x3

    const-string v1, "WITH RECURSIVE get_children(parent) AS ( SELECT ItemId FROM local_item WHERE ServerId = ? AND ParentId = ? UNION ALL SELECT ItemId FROM local_item, get_children WHERE ServerId = ? AND ParentId = get_children.parent LIMIT (SELECT Count(*) FROM local_item) ) SELECT parent FROM get_children;"

    .line 1836
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1839
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1841
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v2, 0x2

    if-nez p2, :cond_1

    .line 1845
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1847
    :cond_1
    invoke-virtual {v1, v2, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    if-nez p1, :cond_2

    .line 1851
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 1853
    :cond_2
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1855
    :goto_2
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1856
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 1858
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1859
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1861
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1862
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1866
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1867
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 1866
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1867
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1868
    throw p2
.end method

.method public getEmptyContainerItems(Ljava/lang/String;)Ljava/util/List;
    .locals 26
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x2

    const-string v3, "SELECT * FROM local_item WHERE ServerId = ? AND Id in ( WITH items AS (SELECT * FROM local_item WHERE ServerId = ? AND IsFolder = 1) SELECT Id FROM items WHERE NOT EXISTS(SELECT 1 FROM local_item WHERE ParentId = items.ItemId OR SeasonId = items.ItemId OR SeriesId = items.ItemId OR AlbumId = items.ItemId LIMIT 1) )"

    .line 1874
    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 1877
    invoke-virtual {v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1879
    :cond_0
    invoke-virtual {v3, v4, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez v0, :cond_1

    .line 1883
    invoke-virtual {v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1885
    :cond_1
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1887
    :goto_1
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1888
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "Id"

    .line 1890
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "ServerId"

    .line 1891
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ItemId"

    .line 1892
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "SyncJobItemId"

    .line 1893
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "LocalPath"

    .line 1894
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "Item"

    .line 1895
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "Status"

    .line 1896
    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "SyncGuid"

    .line 1897
    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "Type"

    .line 1898
    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "ParentId"

    .line 1899
    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "AlbumId"

    .line 1900
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "SeasonId"

    .line 1901
    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "SeriesId"

    .line 1902
    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "MediaType"

    .line 1903
    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "SortName"

    .line 1904
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "IsFolder"

    .line 1905
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "DateCreated"

    .line 1906
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "IndexNumber"

    .line 1907
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "ParentIndexNumber"

    .line 1908
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 1909
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v22, v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1910
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1912
    new-instance v1, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v1}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    move-object/from16 v24, v3

    move/from16 v23, v4

    .line 1913
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    .line 1914
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 1915
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 1916
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 1917
    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    goto :goto_3

    .line 1919
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    .line 1921
    :goto_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 1922
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    .line 1924
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_4

    .line 1927
    :cond_3
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1929
    :goto_4
    invoke-static {v3}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 1930
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 1931
    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    .line 1933
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    .line 1936
    :goto_5
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1937
    invoke-virtual {v1, v4}, Lcom/mb/android/sync/data/database/LocalItem;->setType(Ljava/lang/String;)V

    .line 1939
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1940
    invoke-virtual {v1, v4}, Lcom/mb/android/sync/data/database/LocalItem;->setParentId(Ljava/lang/String;)V

    .line 1942
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1943
    invoke-virtual {v1, v4}, Lcom/mb/android/sync/data/database/LocalItem;->setAlbumId(Ljava/lang/String;)V

    move/from16 v4, v23

    .line 1945
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1946
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setSeasonId(Ljava/lang/String;)V

    .line 1948
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1949
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setSeriesId(Ljava/lang/String;)V

    move/from16 v3, v22

    move/from16 v22, v0

    .line 1951
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1952
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setMediaType(Ljava/lang/String;)V

    move/from16 v0, v17

    move/from16 v17, v2

    .line 1954
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1955
    invoke-virtual {v1, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setSortName(Ljava/lang/String;)V

    move/from16 v2, v18

    .line 1958
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x0

    goto :goto_6

    .line 1961
    :cond_5
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    :goto_6
    if-nez v18, :cond_6

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_8

    .line 1963
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x1

    goto :goto_7

    :cond_7
    const/16 v18, 0x0

    :goto_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move/from16 v23, v0

    move-object/from16 v0, v18

    .line 1964
    :goto_8
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIsFolder(Ljava/lang/Boolean;)V

    move/from16 v0, v19

    .line 1967
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v19, v0

    const/16 v18, 0x0

    goto :goto_9

    .line 1970
    :cond_8
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move/from16 v19, v0

    .line 1972
    :goto_9
    invoke-static/range {v18 .. v18}, Lcom/mb/android/sync/data/database/Converters;->fromLong(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 1973
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setDateCreated(Ljava/util/Date;)V

    move/from16 v0, v20

    .line 1975
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_a

    .line 1978
    :cond_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v20, v0

    move-object/from16 v0, v18

    .line 1980
    :goto_a
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIndexNumber(Ljava/lang/Integer;)V

    move/from16 v0, v21

    .line 1982
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_b

    .line 1985
    :cond_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v21, v0

    move-object/from16 v0, v18

    .line 1987
    :goto_b
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setParentIndexNumber(Ljava/lang/Integer;)V

    move-object/from16 v0, v24

    .line 1988
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v2

    move/from16 v2, v17

    move/from16 v17, v23

    move/from16 v25, v3

    move-object v3, v0

    move/from16 v0, v22

    move/from16 v22, v25

    goto/16 :goto_2

    :cond_b
    move-object v0, v3

    .line 1992
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1993
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1992
    :goto_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1993
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1994
    throw v0
.end method

.method public getItemCountForQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)I
    .locals 3

    .line 2018
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2019
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 2022
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2023
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2030
    throw v0
.end method

.method public getItemsByQuery(Landroidx/sqlite/db/SupportSQLiteQuery;)Ljava/util/List;
    .locals 3
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

    .line 2000
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2001
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 2003
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2004
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2006
    invoke-direct {p0, p1}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__entityCursorConverter_comMbAndroidSyncDataDatabaseLocalItem(Landroid/database/Cursor;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object v1

    .line 2007
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2011
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2012
    throw v0
.end method

.method public getItemsByStatuses(Ljava/lang/String;[I)Ljava/util/List;
    .locals 25
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 428
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SELECT "

    .line 429
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*"

    .line 430
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " FROM local_item WHERE ServerId = "

    .line 431
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    .line 432
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND Status in ("

    .line 433
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    array-length v4, v2

    .line 435
    invoke-static {v3, v4}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v5, ") AND LocalPath is NOT NULL"

    .line 436
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 439
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {v3, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v3, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 447
    array-length v4, v2

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x2

    :goto_1
    if-ge v0, v4, :cond_1

    aget v8, v2, v0

    int-to-long v8, v8

    .line 448
    invoke-virtual {v3, v7, v8, v9}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v7, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 451
    :cond_1
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 452
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    invoke-static {v0, v3, v6, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "Id"

    .line 454
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "ServerId"

    .line 455
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ItemId"

    .line 456
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "SyncJobItemId"

    .line 457
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "LocalPath"

    .line 458
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "Item"

    .line 459
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "Status"

    .line 460
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "SyncGuid"

    .line 461
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "Type"

    .line 462
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "ParentId"

    .line 463
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v5, "AlbumId"

    .line 464
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "SeasonId"

    .line 465
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v2, "SeriesId"

    .line 466
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "MediaType"

    .line 467
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "SortName"

    .line 468
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "IsFolder"

    .line 469
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "DateCreated"

    .line 470
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "IndexNumber"

    .line 471
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "ParentIndexNumber"

    .line 472
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 473
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v22, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 474
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 476
    new-instance v1, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v1}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    move/from16 v23, v2

    move-object/from16 v24, v3

    .line 477
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    .line 478
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 479
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 480
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 481
    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    goto :goto_3

    .line 483
    :cond_2
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    .line 485
    :goto_3
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 486
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    .line 488
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_4

    .line 491
    :cond_3
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 493
    :goto_4
    invoke-static {v2}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 494
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 495
    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    .line 497
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    .line 500
    :goto_5
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 501
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setType(Ljava/lang/String;)V

    .line 503
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setParentId(Ljava/lang/String;)V

    .line 506
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setAlbumId(Ljava/lang/String;)V

    .line 509
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setSeasonId(Ljava/lang/String;)V

    move/from16 v3, v23

    .line 512
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-virtual {v1, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setSeriesId(Ljava/lang/String;)V

    move/from16 v2, v22

    move/from16 v22, v0

    .line 515
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setMediaType(Ljava/lang/String;)V

    move/from16 v0, v17

    move/from16 v17, v2

    .line 518
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-virtual {v1, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setSortName(Ljava/lang/String;)V

    move/from16 v2, v18

    .line 522
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x0

    goto :goto_6

    .line 525
    :cond_5
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    :goto_6
    if-nez v18, :cond_6

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_8

    .line 527
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x1

    goto :goto_7

    :cond_7
    const/16 v18, 0x0

    :goto_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move/from16 v23, v0

    move-object/from16 v0, v18

    .line 528
    :goto_8
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIsFolder(Ljava/lang/Boolean;)V

    move/from16 v0, v19

    .line 531
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v19, v0

    const/16 v18, 0x0

    goto :goto_9

    .line 534
    :cond_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move/from16 v19, v0

    .line 536
    :goto_9
    invoke-static/range {v18 .. v18}, Lcom/mb/android/sync/data/database/Converters;->fromLong(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 537
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setDateCreated(Ljava/util/Date;)V

    move/from16 v0, v20

    .line 539
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_a

    .line 542
    :cond_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v20, v0

    move-object/from16 v0, v18

    .line 544
    :goto_a
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIndexNumber(Ljava/lang/Integer;)V

    move/from16 v0, v21

    .line 546
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_b

    .line 549
    :cond_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v21, v0

    move-object/from16 v0, v18

    .line 551
    :goto_b
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setParentIndexNumber(Ljava/lang/Integer;)V

    move-object/from16 v0, v24

    .line 552
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v2

    move v2, v3

    move-object v3, v0

    move/from16 v0, v22

    move/from16 v22, v17

    move/from16 v17, v23

    goto/16 :goto_2

    :cond_b
    move-object v0, v3

    .line 556
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 557
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 556
    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 557
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 558
    throw v0
.end method

.method public getLibraryItem(J)Lcom/mb/android/sync/data/database/LocalItem;
    .locals 24

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT * FROM local_item WHERE Id = ?"

    .line 1043
    invoke-static {v2, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    move-wide/from16 v3, p1

    .line 1045
    invoke-virtual {v2, v0, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1046
    iget-object v3, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1047
    iget-object v3, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v6, "Id"

    .line 1049
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "ServerId"

    .line 1050
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ItemId"

    .line 1051
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "SyncJobItemId"

    .line 1052
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "LocalPath"

    .line 1053
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "Item"

    .line 1054
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "Status"

    .line 1055
    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "SyncGuid"

    .line 1056
    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "Type"

    .line 1057
    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "ParentId"

    .line 1058
    invoke-static {v3, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "AlbumId"

    .line 1059
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "SeasonId"

    .line 1060
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "SeriesId"

    .line 1061
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "MediaType"

    .line 1062
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v2

    :try_start_1
    const-string v2, "SortName"

    .line 1063
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "IsFolder"

    .line 1064
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "DateCreated"

    .line 1065
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "IndexNumber"

    .line 1066
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "ParentIndexNumber"

    .line 1067
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 1069
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_9

    move/from16 v22, v2

    .line 1070
    new-instance v2, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v2}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    move/from16 v23, v5

    .line 1071
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    .line 1072
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 1073
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 1074
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 1075
    iput-object v5, v2, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    goto :goto_0

    .line 1077
    :cond_0
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    .line 1079
    :goto_0
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 1080
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    .line 1082
    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 1085
    :cond_1
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1087
    :goto_1
    invoke-static {v5}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v5

    iput-object v5, v2, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 1088
    invoke-interface {v3, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    .line 1089
    iput-object v5, v2, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 1091
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v2, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    .line 1094
    :goto_2
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1095
    invoke-virtual {v2, v6}, Lcom/mb/android/sync/data/database/LocalItem;->setType(Ljava/lang/String;)V

    .line 1097
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1098
    invoke-virtual {v2, v6}, Lcom/mb/android/sync/data/database/LocalItem;->setParentId(Ljava/lang/String;)V

    .line 1100
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-virtual {v2, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setAlbumId(Ljava/lang/String;)V

    .line 1103
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-virtual {v2, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setSeasonId(Ljava/lang/String;)V

    move/from16 v0, v23

    .line 1106
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-virtual {v2, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setSeriesId(Ljava/lang/String;)V

    .line 1109
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1110
    invoke-virtual {v2, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setMediaType(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 1112
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1113
    invoke-virtual {v2, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setSortName(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 1116
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v5

    goto :goto_3

    .line 1119
    :cond_3
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_4

    move-object v0, v5

    goto :goto_5

    .line 1121
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v16, 0x1

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    :goto_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1122
    :goto_5
    invoke-virtual {v2, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIsFolder(Ljava/lang/Boolean;)V

    move/from16 v0, v20

    .line 1125
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v5

    goto :goto_6

    .line 1128
    :cond_6
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1130
    :goto_6
    invoke-static {v0}, Lcom/mb/android/sync/data/database/Converters;->fromLong(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 1131
    invoke-virtual {v2, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setDateCreated(Ljava/util/Date;)V

    move/from16 v0, v21

    .line 1133
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v5

    goto :goto_7

    .line 1136
    :cond_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1138
    :goto_7
    invoke-virtual {v2, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIndexNumber(Ljava/lang/Integer;)V

    move/from16 v0, v22

    .line 1140
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_8

    .line 1143
    :cond_8
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1145
    :goto_8
    invoke-virtual {v2, v5}, Lcom/mb/android/sync/data/database/LocalItem;->setParentIndexNumber(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    move-object v2, v5

    .line 1151
    :goto_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1152
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    .line 1151
    :goto_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1152
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1153
    throw v0
.end method

.method public getLibraryItem(Ljava/lang/String;Ljava/lang/String;[I)Lcom/mb/android/sync/data/database/LocalItem;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 564
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SELECT "

    .line 565
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "*"

    .line 566
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " FROM local_item WHERE ServerId = "

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?"

    .line 568
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AND ItemId = "

    .line 569
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND Status in ("

    .line 571
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    array-length v5, v3

    .line 573
    invoke-static {v4, v5}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v6, ")"

    .line 574
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    add-int/2addr v5, v6

    .line 577
    invoke-static {v4, v5}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 580
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {v4, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    .line 586
    invoke-virtual {v4, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 588
    :cond_1
    invoke-virtual {v4, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 591
    array-length v2, v3

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x3

    :goto_2
    if-ge v0, v2, :cond_2

    aget v8, v3, v0

    int-to-long v8, v8

    .line 592
    invoke-virtual {v4, v7, v8, v9}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v7, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 595
    :cond_2
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 596
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    invoke-static {v0, v4, v6, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "Id"

    .line 598
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "ServerId"

    .line 599
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ItemId"

    .line 600
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "SyncJobItemId"

    .line 601
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "LocalPath"

    .line 602
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "Item"

    .line 603
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "Status"

    .line 604
    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "SyncGuid"

    .line 605
    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "Type"

    .line 606
    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "ParentId"

    .line 607
    invoke-static {v3, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v5, "AlbumId"

    .line 608
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "SeasonId"

    .line 609
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v2, "SeriesId"

    .line 610
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "MediaType"

    .line 611
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v4

    :try_start_1
    const-string v4, "SortName"

    .line 612
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 p3, v4

    const-string v4, "IsFolder"

    .line 613
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    const-string v4, "DateCreated"

    .line 614
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const-string v4, "IndexNumber"

    .line 615
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    const-string v4, "ParentIndexNumber"

    .line 616
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 618
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    if-eqz v21, :cond_c

    move/from16 v21, v4

    .line 619
    new-instance v4, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v4}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    move/from16 v22, v1

    .line 620
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    .line 621
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 622
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 623
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 624
    iput-object v0, v4, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    goto :goto_3

    .line 626
    :cond_3
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    .line 628
    :goto_3
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 629
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    .line 631
    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .line 634
    :cond_4
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 636
    :goto_4
    invoke-static {v0}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v0

    iput-object v0, v4, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 637
    invoke-interface {v3, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 638
    iput-object v0, v4, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 640
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    .line 643
    :goto_5
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-virtual {v4, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setType(Ljava/lang/String;)V

    .line 646
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-virtual {v4, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setParentId(Ljava/lang/String;)V

    .line 649
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-virtual {v4, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setAlbumId(Ljava/lang/String;)V

    .line 652
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-virtual {v4, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setSeasonId(Ljava/lang/String;)V

    .line 655
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-virtual {v4, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setSeriesId(Ljava/lang/String;)V

    move/from16 v1, v22

    .line 658
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-virtual {v4, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setMediaType(Ljava/lang/String;)V

    move/from16 v1, p3

    .line 661
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-virtual {v4, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setSortName(Ljava/lang/String;)V

    move/from16 v1, v18

    .line 665
    invoke-interface {v3, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v0

    goto :goto_6

    .line 668
    :cond_6
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_6
    if-nez v2, :cond_7

    move-object v2, v0

    goto :goto_8

    .line 670
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_8

    const/16 v16, 0x1

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    :goto_7
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 671
    :goto_8
    invoke-virtual {v4, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setIsFolder(Ljava/lang/Boolean;)V

    move/from16 v1, v19

    .line 674
    invoke-interface {v3, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v0

    goto :goto_9

    .line 677
    :cond_9
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 679
    :goto_9
    invoke-static {v2}, Lcom/mb/android/sync/data/database/Converters;->fromLong(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v1

    .line 680
    invoke-virtual {v4, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setDateCreated(Ljava/util/Date;)V

    move/from16 v1, v20

    .line 682
    invoke-interface {v3, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v0

    goto :goto_a

    .line 685
    :cond_a
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 687
    :goto_a
    invoke-virtual {v4, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setIndexNumber(Ljava/lang/Integer;)V

    move/from16 v1, v21

    .line 689
    invoke-interface {v3, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_b

    .line 692
    :cond_b
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .line 694
    :goto_b
    invoke-virtual {v4, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setParentIndexNumber(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    .line 700
    :goto_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 701
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    .line 700
    :goto_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 701
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 702
    throw v0
.end method

.method public getLibraryItemAsync(Ljava/lang/String;Ljava/lang/String;[I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
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

    .line 708
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT "

    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM local_item WHERE ServerId = "

    .line 711
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 712
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND ItemId = "

    .line 713
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND Status in ("

    .line 715
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    array-length v1, p3

    .line 717
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 718
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 721
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 724
    invoke-virtual {v6, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 726
    :cond_0
    invoke-virtual {v6, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 730
    invoke-virtual {v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 732
    :cond_1
    invoke-virtual {v6, v2, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x3

    .line 735
    array-length p2, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_2

    aget v2, p3, v1

    int-to-long v2, v2

    .line 736
    invoke-virtual {v6, p1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 739
    :cond_2
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v8

    .line 740
    iget-object v3, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    new-instance v5, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$6;

    invoke-direct {v5, p0, v6, v8}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$6;-><init>(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;Landroidx/room/RoomSQLiteQuery;Landroid/os/CancellationSignal;)V

    const/4 v7, 0x1

    invoke-static/range {v3 .. v8}, Landroidx/room/guava/GuavaRoom;->createListenableFuture(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Landroidx/room/RoomSQLiteQuery;ZLandroid/os/CancellationSignal;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getLibraryItemId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x2

    const-string v1, "SELECT Id FROM local_item WHERE ServerId = ? AND ItemId = ?"

    .line 1183
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1186
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1188
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 1192
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1194
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1196
    :goto_1
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1197
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 1200
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1201
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    .line 1207
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1208
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-wide v2

    :catchall_0
    move-exception p2

    .line 1207
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1208
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1209
    throw p2
.end method

.method public getLibraryItemIdAndPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 5
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

    .line 995
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT ItemId, LocalPath FROM local_item WHERE ServerId = "

    .line 996
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 997
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND ItemId in ("

    .line 998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    array-length v1, p2

    .line 1000
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 1001
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1004
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1007
    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1009
    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 1012
    array-length v1, p2

    const/4 v2, 0x0

    const/4 p1, 0x0

    const/4 v3, 0x2

    :goto_1
    if-ge p1, v1, :cond_2

    aget-object v4, p2, p1

    if-nez v4, :cond_1

    .line 1014
    invoke-virtual {v0, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 1016
    :cond_1
    invoke-virtual {v0, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1020
    :cond_2
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1021
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    invoke-static {p1, v0, v2, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "ItemId"

    .line 1023
    invoke-static {p1, p2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v1, "LocalPath"

    .line 1024
    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 1025
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1026
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1028
    new-instance v3, Lcom/mb/android/sync/data/database/LocalItem$ItemIdPathPair;

    invoke-direct {v3}, Lcom/mb/android/sync/data/database/LocalItem$ItemIdPathPair;-><init>()V

    .line 1029
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mb/android/sync/data/database/LocalItem$ItemIdPathPair;->ItemId:Ljava/lang/String;

    .line 1030
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mb/android/sync/data/database/LocalItem$ItemIdPathPair;->LocalPath:Ljava/lang/String;

    .line 1031
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1035
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1036
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception p2

    .line 1035
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1036
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1037
    throw p2
.end method

.method public getLibraryItemType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    const-string v1, "SELECT Type FROM local_item WHERE ServerId = ? AND ItemId = ?"

    .line 1405
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1408
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1410
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 1414
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1416
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1418
    :goto_1
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1419
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 1422
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1423
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1430
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 1429
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1430
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1431
    throw p2
.end method

.method public getLibraryItemTypes(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    const/4 v0, 0x1

    const-string v1, "SELECT DISTINCT Type FROM local_item WHERE ServerId = ?"

    .line 1437
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    if-nez p1, :cond_0

    .line 1440
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1442
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1444
    :goto_0
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1445
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 1447
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1448
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1450
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1451
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1455
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1456
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 1455
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1456
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1457
    throw v0
.end method

.method public getLibraryItemWithLocalPath(Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "SELECT * FROM local_item WHERE LocalPath = ?"

    .line 1215
    invoke-static {v3, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_0

    .line 1218
    invoke-virtual {v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1220
    :cond_0
    invoke-virtual {v3, v2, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1222
    :goto_0
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1223
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "Id"

    .line 1225
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "ServerId"

    .line 1226
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ItemId"

    .line 1227
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "SyncJobItemId"

    .line 1228
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "LocalPath"

    .line 1229
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "Item"

    .line 1230
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "Status"

    .line 1231
    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "SyncGuid"

    .line 1232
    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "Type"

    .line 1233
    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "ParentId"

    .line 1234
    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "AlbumId"

    .line 1235
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "SeasonId"

    .line 1236
    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "SeriesId"

    .line 1237
    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v1, "MediaType"

    .line 1238
    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v3

    :try_start_1
    const-string v3, "SortName"

    .line 1239
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "IsFolder"

    .line 1240
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "DateCreated"

    .line 1241
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "IndexNumber"

    .line 1242
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "ParentIndexNumber"

    .line 1243
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1245
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_a

    move/from16 v22, v3

    .line 1246
    new-instance v3, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v3}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    move/from16 v23, v1

    .line 1247
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    .line 1248
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 1249
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 1250
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1251
    iput-object v0, v3, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    goto :goto_1

    .line 1253
    :cond_1
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    .line 1255
    :goto_1
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 1256
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    .line 1258
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 1261
    :cond_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1263
    :goto_2
    invoke-static {v0}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v0

    iput-object v0, v3, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 1264
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1265
    iput-object v0, v3, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 1267
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    .line 1270
    :goto_3
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1271
    invoke-virtual {v3, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setType(Ljava/lang/String;)V

    .line 1273
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1274
    invoke-virtual {v3, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setParentId(Ljava/lang/String;)V

    .line 1276
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1277
    invoke-virtual {v3, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setAlbumId(Ljava/lang/String;)V

    .line 1279
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1280
    invoke-virtual {v3, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setSeasonId(Ljava/lang/String;)V

    .line 1282
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1283
    invoke-virtual {v3, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setSeriesId(Ljava/lang/String;)V

    move/from16 v1, v23

    .line 1285
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1286
    invoke-virtual {v3, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setMediaType(Ljava/lang/String;)V

    move/from16 v1, v18

    .line 1288
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-virtual {v3, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setSortName(Ljava/lang/String;)V

    move/from16 v1, v19

    .line 1292
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v5, v0

    goto :goto_4

    .line 1295
    :cond_4
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_4
    if-nez v5, :cond_5

    move-object v5, v0

    goto :goto_6

    .line 1297
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_6

    const/16 v16, 0x1

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1298
    :goto_6
    invoke-virtual {v3, v5}, Lcom/mb/android/sync/data/database/LocalItem;->setIsFolder(Ljava/lang/Boolean;)V

    move/from16 v1, v20

    .line 1301
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v5, v0

    goto :goto_7

    .line 1304
    :cond_7
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1306
    :goto_7
    invoke-static {v5}, Lcom/mb/android/sync/data/database/Converters;->fromLong(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v1

    .line 1307
    invoke-virtual {v3, v1}, Lcom/mb/android/sync/data/database/LocalItem;->setDateCreated(Ljava/util/Date;)V

    move/from16 v1, v21

    .line 1309
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v5, v0

    goto :goto_8

    .line 1312
    :cond_8
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1314
    :goto_8
    invoke-virtual {v3, v5}, Lcom/mb/android/sync/data/database/LocalItem;->setIndexNumber(Ljava/lang/Integer;)V

    move/from16 v1, v22

    .line 1316
    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_9

    .line 1319
    :cond_9
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v5

    .line 1321
    :goto_9
    invoke-virtual {v3, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setParentIndexNumber(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    .line 1327
    :goto_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1328
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    .line 1327
    :goto_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1328
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1329
    throw v0
.end method

.method public getLibraryItems(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 25
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 855
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SELECT "

    .line 856
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*"

    .line 857
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " FROM local_item WHERE ServerId = "

    .line 858
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    .line 859
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND ItemId in ("

    .line 860
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    array-length v4, v2

    .line 862
    invoke-static {v3, v4}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v5, ")"

    .line 863
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 866
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_0

    .line 869
    invoke-virtual {v3, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {v3, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 874
    array-length v4, v2

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x2

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v8, v2, v0

    if-nez v8, :cond_1

    .line 876
    invoke-virtual {v3, v7}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 878
    :cond_1
    invoke-virtual {v3, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 882
    :cond_2
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 883
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    invoke-static {v0, v3, v6, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "Id"

    .line 885
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "ServerId"

    .line 886
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ItemId"

    .line 887
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "SyncJobItemId"

    .line 888
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "LocalPath"

    .line 889
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "Item"

    .line 890
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "Status"

    .line 891
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "SyncGuid"

    .line 892
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "Type"

    .line 893
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "ParentId"

    .line 894
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v5, "AlbumId"

    .line 895
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "SeasonId"

    .line 896
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v2, "SeriesId"

    .line 897
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "MediaType"

    .line 898
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "SortName"

    .line 899
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "IsFolder"

    .line 900
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "DateCreated"

    .line 901
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "IndexNumber"

    .line 902
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "ParentIndexNumber"

    .line 903
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 904
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v22, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 905
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 907
    new-instance v1, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v1}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    move/from16 v23, v2

    move-object/from16 v24, v3

    .line 908
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    .line 909
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 910
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 911
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 912
    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    goto :goto_4

    .line 914
    :cond_3
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    .line 916
    :goto_4
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 917
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    .line 919
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_5

    .line 922
    :cond_4
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 924
    :goto_5
    invoke-static {v2}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 925
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 926
    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    .line 928
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    .line 931
    :goto_6
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 932
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setType(Ljava/lang/String;)V

    .line 934
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 935
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setParentId(Ljava/lang/String;)V

    .line 937
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 938
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setAlbumId(Ljava/lang/String;)V

    .line 940
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 941
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setSeasonId(Ljava/lang/String;)V

    move/from16 v3, v23

    .line 943
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 944
    invoke-virtual {v1, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setSeriesId(Ljava/lang/String;)V

    move/from16 v2, v22

    move/from16 v22, v0

    .line 946
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 947
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setMediaType(Ljava/lang/String;)V

    move/from16 v0, v17

    move/from16 v17, v2

    .line 949
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 950
    invoke-virtual {v1, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setSortName(Ljava/lang/String;)V

    move/from16 v2, v18

    .line 953
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x0

    goto :goto_7

    .line 956
    :cond_6
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    :goto_7
    if-nez v18, :cond_7

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_9

    .line 958
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    goto :goto_8

    :cond_8
    const/16 v18, 0x0

    :goto_8
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move/from16 v23, v0

    move-object/from16 v0, v18

    .line 959
    :goto_9
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIsFolder(Ljava/lang/Boolean;)V

    move/from16 v0, v19

    .line 962
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v19, v0

    const/16 v18, 0x0

    goto :goto_a

    .line 965
    :cond_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move/from16 v19, v0

    .line 967
    :goto_a
    invoke-static/range {v18 .. v18}, Lcom/mb/android/sync/data/database/Converters;->fromLong(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 968
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setDateCreated(Ljava/util/Date;)V

    move/from16 v0, v20

    .line 970
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_b

    .line 973
    :cond_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v20, v0

    move-object/from16 v0, v18

    .line 975
    :goto_b
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIndexNumber(Ljava/lang/Integer;)V

    move/from16 v0, v21

    .line 977
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_c

    .line 980
    :cond_b
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v21, v0

    move-object/from16 v0, v18

    .line 982
    :goto_c
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setParentIndexNumber(Ljava/lang/Integer;)V

    move-object/from16 v0, v24

    .line 983
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v2

    move v2, v3

    move-object v3, v0

    move/from16 v0, v22

    move/from16 v22, v17

    move/from16 v17, v23

    goto/16 :goto_3

    :cond_c
    move-object v0, v3

    .line 987
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 988
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 987
    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 988
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 989
    throw v0
.end method

.method public getLibraryItemsByType(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 25
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1462
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SELECT "

    .line 1463
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*"

    .line 1464
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " FROM local_item WHERE ServerId = "

    .line 1465
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    .line 1466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND Type in ("

    .line 1467
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    array-length v4, v2

    .line 1469
    invoke-static {v3, v4}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v5, ")"

    .line 1470
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 1473
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    if-nez v0, :cond_0

    .line 1476
    invoke-virtual {v3, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1478
    :cond_0
    invoke-virtual {v3, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 1481
    array-length v4, v2

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x2

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v8, v2, v0

    if-nez v8, :cond_1

    .line 1483
    invoke-virtual {v3, v7}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 1485
    :cond_1
    invoke-virtual {v3, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1489
    :cond_2
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1490
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    invoke-static {v0, v3, v6, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "Id"

    .line 1492
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "ServerId"

    .line 1493
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "ItemId"

    .line 1494
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "SyncJobItemId"

    .line 1495
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "LocalPath"

    .line 1496
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "Item"

    .line 1497
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "Status"

    .line 1498
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "SyncGuid"

    .line 1499
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "Type"

    .line 1500
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "ParentId"

    .line 1501
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v5, "AlbumId"

    .line 1502
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "SeasonId"

    .line 1503
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v2, "SeriesId"

    .line 1504
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "MediaType"

    .line 1505
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "SortName"

    .line 1506
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "IsFolder"

    .line 1507
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "DateCreated"

    .line 1508
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "IndexNumber"

    .line 1509
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "ParentIndexNumber"

    .line 1510
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    .line 1511
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v22, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1512
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1514
    new-instance v1, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v1}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    move/from16 v23, v2

    move-object/from16 v24, v3

    .line 1515
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    .line 1516
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 1517
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 1518
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 1519
    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    goto :goto_4

    .line 1521
    :cond_3
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    .line 1523
    :goto_4
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 1524
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    .line 1526
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_5

    .line 1529
    :cond_4
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1531
    :goto_5
    invoke-static {v2}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v2

    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 1532
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 1533
    iput-object v2, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    .line 1535
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    .line 1538
    :goto_6
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1539
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setType(Ljava/lang/String;)V

    .line 1541
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1542
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setParentId(Ljava/lang/String;)V

    .line 1544
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1545
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setAlbumId(Ljava/lang/String;)V

    .line 1547
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1548
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setSeasonId(Ljava/lang/String;)V

    move/from16 v3, v23

    .line 1550
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1551
    invoke-virtual {v1, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setSeriesId(Ljava/lang/String;)V

    move/from16 v2, v22

    move/from16 v22, v0

    .line 1553
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1554
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setMediaType(Ljava/lang/String;)V

    move/from16 v0, v17

    move/from16 v17, v2

    .line 1556
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1557
    invoke-virtual {v1, v2}, Lcom/mb/android/sync/data/database/LocalItem;->setSortName(Ljava/lang/String;)V

    move/from16 v2, v18

    .line 1560
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x0

    goto :goto_7

    .line 1563
    :cond_6
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    :goto_7
    if-nez v18, :cond_7

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_9

    .line 1565
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    goto :goto_8

    :cond_8
    const/16 v18, 0x0

    :goto_8
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move/from16 v23, v0

    move-object/from16 v0, v18

    .line 1566
    :goto_9
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIsFolder(Ljava/lang/Boolean;)V

    move/from16 v0, v19

    .line 1569
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v19, v0

    const/16 v18, 0x0

    goto :goto_a

    .line 1572
    :cond_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move/from16 v19, v0

    .line 1574
    :goto_a
    invoke-static/range {v18 .. v18}, Lcom/mb/android/sync/data/database/Converters;->fromLong(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 1575
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setDateCreated(Ljava/util/Date;)V

    move/from16 v0, v20

    .line 1577
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_b

    .line 1580
    :cond_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v20, v0

    move-object/from16 v0, v18

    .line 1582
    :goto_b
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setIndexNumber(Ljava/lang/Integer;)V

    move/from16 v0, v21

    .line 1584
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_c

    .line 1587
    :cond_b
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v21, v0

    move-object/from16 v0, v18

    .line 1589
    :goto_c
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setParentIndexNumber(Ljava/lang/Integer;)V

    move-object/from16 v0, v24

    .line 1590
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v2

    move v2, v3

    move-object v3, v0

    move/from16 v0, v22

    move/from16 v22, v17

    move/from16 v17, v23

    goto/16 :goto_3

    :cond_c
    move-object v0, v3

    .line 1594
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1595
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1594
    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1595
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1596
    throw v0
.end method

.method public getLocalPathForLibraryItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    const-string v1, "SELECT LocalPath FROM local_item WHERE ServerId = ? AND ItemId = ?"

    .line 1373
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1376
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1378
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 1382
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1384
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1386
    :goto_1
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1387
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 1390
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1391
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1398
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 1397
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1398
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1399
    throw p2
.end method

.method public getSyncStatusForLibraryItem(Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/SyncJobStatus;
    .locals 3

    const/4 v0, 0x2

    const-string v1, "SELECT Status FROM local_item WHERE ServerId = ? AND ItemId = ?"

    .line 1335
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1338
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1340
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    .line 1344
    invoke-virtual {v1, v0}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1346
    :cond_1
    invoke-virtual {v1, v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1348
    :goto_1
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1349
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 1352
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1354
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 1357
    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1359
    :goto_2
    invoke-static {p2}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1366
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 1365
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1366
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1367
    throw p2
.end method

.method public getlibraryItemExists(J)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "SELECT EXISTS(SELECT 1 from local_item WHERE Id = ? LIMIT 1)"

    .line 1159
    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1161
    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1162
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1163
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 1166
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1168
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 p2, 0x1

    .line 1175
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1176
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    return p2

    :catchall_0
    move-exception p2

    .line 1175
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1176
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1177
    throw p2
.end method

.method public insert(Lcom/mb/android/sync/data/database/LocalItem;)J
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 292
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__insertionAdapterOfLocalItem:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 295
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 299
    throw p1
.end method

.method public varargs insert([Lcom/mb/android/sync/data/database/LocalItem;)Ljava/util/List;
    .locals 1
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

    .line 304
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 305
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__insertionAdapterOfLocalItem:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnIdsList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 308
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 312
    throw p1
.end method

.method public update(Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 342
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__updateAdapterOfLocalItem:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 345
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 348
    throw p1
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;)V"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 354
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__updateAdapterOfLocalItem:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 357
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 360
    throw p1
.end method

.method public updateSyncStatusForItem(JLcom/mb/android/sync/data/SyncJobStatus;)V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 379
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__preparedStmtOfUpdateSyncStatusForItem:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 382
    invoke-static {p3}, Lcom/mb/android/sync/data/database/Converters;->syncJobStatusToInteger(Lcom/mb/android/sync/data/SyncJobStatus;)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 384
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v2, p3

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_0
    const/4 p3, 0x2

    .line 389
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 390
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 392
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 393
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 396
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__preparedStmtOfUpdateSyncStatusForItem:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 395
    iget-object p2, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 396
    iget-object p2, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->__preparedStmtOfUpdateSyncStatusForItem:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 397
    throw p1
.end method
