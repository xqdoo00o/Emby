.class Lcom/mb/android/sync/data/database/LocalItemDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "LocalItemDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/data/database/LocalItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/mb/android/sync/data/database/LocalItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/data/database/LocalItemDao_Impl;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$3;->this$0:Lcom/mb/android/sync/data/database/LocalItemDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 4

    .line 173
    iget-wide v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 174
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 175
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 179
    :goto_0
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 180
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 182
    :cond_1
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 184
    :goto_1
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 185
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 187
    :cond_2
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 189
    :goto_2
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 190
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 192
    :cond_3
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 194
    :goto_3
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 195
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 197
    :cond_4
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 200
    :goto_4
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    invoke-static {v0}, Lcom/mb/android/sync/data/database/Converters;->syncJobStatusToInteger(Lcom/mb/android/sync/data/SyncJobStatus;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 202
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 204
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 206
    :goto_5
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 207
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 209
    :cond_6
    iget-object v0, p2, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 211
    :goto_6
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_7

    .line 212
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 214
    :cond_7
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 216
    :goto_7
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getParentId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_8

    .line 217
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 219
    :cond_8
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 221
    :goto_8
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_9

    .line 222
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 224
    :cond_9
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 226
    :goto_9
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getSeasonId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_a

    .line 227
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_a

    .line 229
    :cond_a
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getSeasonId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 231
    :goto_a
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_b

    .line 232
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_b

    .line 234
    :cond_b
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 236
    :goto_b
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_c

    .line 237
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_c

    .line 239
    :cond_c
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 241
    :goto_c
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getSortName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    if-nez v0, :cond_d

    .line 242
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_d

    .line 244
    :cond_d
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getSortName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 247
    :goto_d
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_e
    const/16 v1, 0x10

    if-nez v0, :cond_f

    .line 249
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_f

    .line 251
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 254
    :goto_f
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/mb/android/sync/data/database/Converters;->dateToLong(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_10

    const/16 v0, 0x11

    .line 256
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_10

    :cond_10
    const/16 v1, 0x11

    .line 258
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 260
    :goto_10
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_11

    const/16 v0, 0x12

    .line 261
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_11

    :cond_11
    const/16 v0, 0x12

    .line 263
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 265
    :goto_11
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_12

    const/16 v0, 0x13

    .line 266
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_12

    :cond_12
    const/16 v0, 0x13

    .line 268
    invoke-virtual {p2}, Lcom/mb/android/sync/data/database/LocalItem;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_12
    const/16 v0, 0x14

    .line 270
    iget-wide v1, p2, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p2, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-virtual {p0, p1, p2}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/mb/android/sync/data/database/LocalItem;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `local_item` SET `Id` = ?,`ServerId` = ?,`ItemId` = ?,`SyncJobItemId` = ?,`LocalPath` = ?,`Item` = ?,`Status` = ?,`SyncGuid` = ?,`Type` = ?,`ParentId` = ?,`AlbumId` = ?,`SeasonId` = ?,`SeriesId` = ?,`MediaType` = ?,`SortName` = ?,`IsFolder` = ?,`DateCreated` = ?,`IndexNumber` = ?,`ParentIndexNumber` = ? WHERE `Id` = ?"

    return-object v0
.end method
