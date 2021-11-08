.class public final Lcom/mb/android/sync/data/database/AppDatabase_Impl;
.super Lcom/mb/android/sync/data/database/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile _localItemDao:Lcom/mb/android/sync/data/database/LocalItemDao;

.field private volatile _offlineActionDao:Lcom/mb/android/sync/data/database/OfflineActionDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mb/android/sync/data/database/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/sync/data/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/sync/data/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mb/android/sync/data/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mb/android/sync/data/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mb/android/sync/data/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mb/android/sync/data/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mb/android/sync/data/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/mb/android/sync/data/database/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mb/android/sync/data/database/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mb/android/sync/data/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mb/android/sync/data/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 156
    invoke-super {p0}, Lcom/mb/android/sync/data/database/AppDatabase;->assertNotMainThread()V

    .line 157
    invoke-super {p0}, Lcom/mb/android/sync/data/database/AppDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 159
    :try_start_0
    invoke-super {p0}, Lcom/mb/android/sync/data/database/AppDatabase;->beginTransaction()V

    const-string v3, "DELETE FROM `offline_action`"

    .line 160
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `local_item`"

    .line 161
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    invoke-super {p0}, Lcom/mb/android/sync/data/database/AppDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-super {p0}, Lcom/mb/android/sync/data/database/AppDatabase;->endTransaction()V

    .line 165
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 166
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 164
    invoke-super {p0}, Lcom/mb/android/sync/data/database/AppDatabase;->endTransaction()V

    .line 165
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 166
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 5

    .line 149
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 150
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 151
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "offline_action"

    const-string v4, "local_item"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 33
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/mb/android/sync/data/database/AppDatabase_Impl$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/mb/android/sync/data/database/AppDatabase_Impl$1;-><init>(Lcom/mb/android/sync/data/database/AppDatabase_Impl;I)V

    const-string v2, "9362fd21582a60a188578dda78c4e807"

    const-string v3, "5aec492398d6fdb3213838510844222a"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 140
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 143
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public localItemDao()Lcom/mb/android/sync/data/database/LocalItemDao;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->_localItemDao:Lcom/mb/android/sync/data/database/LocalItemDao;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->_localItemDao:Lcom/mb/android/sync/data/database/LocalItemDao;

    return-object v0

    .line 191
    :cond_0
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->_localItemDao:Lcom/mb/android/sync/data/database/LocalItemDao;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;

    invoke-direct {v0, p0}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->_localItemDao:Lcom/mb/android/sync/data/database/LocalItemDao;

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->_localItemDao:Lcom/mb/android/sync/data/database/LocalItemDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 196
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public offlineActionDao()Lcom/mb/android/sync/data/database/OfflineActionDao;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->_offlineActionDao:Lcom/mb/android/sync/data/database/OfflineActionDao;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->_offlineActionDao:Lcom/mb/android/sync/data/database/OfflineActionDao;

    return-object v0

    .line 177
    :cond_0
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->_offlineActionDao:Lcom/mb/android/sync/data/database/OfflineActionDao;

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;

    invoke-direct {v0, p0}, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->_offlineActionDao:Lcom/mb/android/sync/data/database/OfflineActionDao;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/mb/android/sync/data/database/AppDatabase_Impl;->_offlineActionDao:Lcom/mb/android/sync/data/database/OfflineActionDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 182
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
