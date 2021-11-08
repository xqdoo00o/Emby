.class Lcom/mb/android/sync/data/database/LocalItemDao_Impl$6;
.super Ljava/lang/Object;
.source "LocalItemDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->getLibraryItemAsync(Ljava/lang/String;Ljava/lang/String;[I)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/mb/android/sync/data/database/LocalItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/data/database/LocalItemDao_Impl;

.field final synthetic val$_cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;Landroidx/room/RoomSQLiteQuery;Landroid/os/CancellationSignal;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$6;->this$0:Lcom/mb/android/sync/data/database/LocalItemDao_Impl;

    iput-object p2, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$6;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    iput-object p3, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$6;->val$_cancellationSignal:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/mb/android/sync/data/database/LocalItem;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 743
    iget-object v0, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$6;->this$0:Lcom/mb/android/sync/data/database/LocalItemDao_Impl;

    invoke-static {v0}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl;->access$100(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$6;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    iget-object v3, v1, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$6;->val$_cancellationSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "Id"

    .line 745
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "ServerId"

    .line 746
    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v5, "ItemId"

    .line 747
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "SyncJobItemId"

    .line 748
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "LocalPath"

    .line 749
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "Item"

    .line 750
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "Status"

    .line 751
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "SyncGuid"

    .line 752
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "Type"

    .line 753
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "ParentId"

    .line 754
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "AlbumId"

    .line 755
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "SeasonId"

    .line 756
    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "SeriesId"

    .line 757
    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v4, "MediaType"

    .line 758
    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "SortName"

    .line 759
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "IsFolder"

    .line 760
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "DateCreated"

    .line 761
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "IndexNumber"

    .line 762
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "ParentIndexNumber"

    .line 763
    invoke-static {v2, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 765
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v21

    move/from16 v22, v1

    if-eqz v21, :cond_9

    .line 766
    new-instance v1, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v1}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    move/from16 v23, v14

    move/from16 v24, v15

    .line 767
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v1, Lcom/mb/android/sync/data/database/LocalItem;->Id:J

    .line 768
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 769
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 770
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 771
    iput-object v0, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    goto :goto_0

    .line 773
    :cond_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncJobItemId:Ljava/lang/Integer;

    .line 775
    :goto_0
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 776
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    .line 778
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 781
    :cond_1
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 783
    :goto_1
    invoke-static {v0}, Lcom/mb/android/sync/data/database/Converters;->fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v0

    iput-object v0, v1, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 784
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 785
    iput-object v0, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 787
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/mb/android/sync/data/database/LocalItem;->SyncGuid:Ljava/lang/Integer;

    .line 790
    :goto_2
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 791
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setType(Ljava/lang/String;)V

    .line 793
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 794
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setParentId(Ljava/lang/String;)V

    .line 796
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 797
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setAlbumId(Ljava/lang/String;)V

    move/from16 v3, v23

    .line 799
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 800
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setSeasonId(Ljava/lang/String;)V

    move/from16 v3, v24

    .line 802
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 803
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setSeriesId(Ljava/lang/String;)V

    .line 805
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setMediaType(Ljava/lang/String;)V

    move/from16 v3, v17

    .line 808
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 809
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setSortName(Ljava/lang/String;)V

    move/from16 v3, v18

    .line 812
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v0

    goto :goto_3

    .line 815
    :cond_3
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    if-nez v3, :cond_4

    move-object v3, v0

    goto :goto_5

    .line 817
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    const/16 v16, 0x1

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    :goto_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 818
    :goto_5
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setIsFolder(Ljava/lang/Boolean;)V

    move/from16 v3, v19

    .line 821
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v3, v0

    goto :goto_6

    .line 824
    :cond_6
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 826
    :goto_6
    invoke-static {v3}, Lcom/mb/android/sync/data/database/Converters;->fromLong(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3

    .line 827
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setDateCreated(Ljava/util/Date;)V

    move/from16 v3, v20

    .line 829
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v3, v0

    goto :goto_7

    .line 832
    :cond_7
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 834
    :goto_7
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/data/database/LocalItem;->setIndexNumber(Ljava/lang/Integer;)V

    move/from16 v3, v22

    .line 836
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_8

    .line 839
    :cond_8
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 841
    :goto_8
    invoke-virtual {v1, v0}, Lcom/mb/android/sync/data/database/LocalItem;->setParentIndexNumber(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    .line 847
    :goto_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 848
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 740
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$6;->call()Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object v0

    return-object v0
.end method
