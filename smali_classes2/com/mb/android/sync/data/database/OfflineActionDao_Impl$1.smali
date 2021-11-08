.class Lcom/mb/android/sync/data/database/OfflineActionDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "OfflineActionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/mb/android/sync/data/database/OfflineAction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl$1;->this$0:Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/mb/android/sync/data/database/OfflineAction;)V
    .locals 4

    .line 35
    iget v0, p2, Lcom/mb/android/sync/data/database/OfflineAction;->ActionId:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 36
    iget-wide v0, p2, Lcom/mb/android/sync/data/database/OfflineAction;->Date:J

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 37
    iget-object v0, p2, Lcom/mb/android/sync/data/database/OfflineAction;->ItemId:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 38
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p2, Lcom/mb/android/sync/data/database/OfflineAction;->ItemId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 42
    :goto_0
    iget-object v0, p2, Lcom/mb/android/sync/data/database/OfflineAction;->ServerId:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 43
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p2, Lcom/mb/android/sync/data/database/OfflineAction;->ServerId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    :goto_1
    iget-object v0, p2, Lcom/mb/android/sync/data/database/OfflineAction;->PositionTicks:Ljava/lang/Long;

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 50
    :cond_2
    iget-object v0, p2, Lcom/mb/android/sync/data/database/OfflineAction;->PositionTicks:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    :goto_2
    const/4 v0, 0x6

    .line 52
    iget v1, p2, Lcom/mb/android/sync/data/database/OfflineAction;->Type:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 53
    iget-object v0, p2, Lcom/mb/android/sync/data/database/OfflineAction;->UserId:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_3

    .line 54
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 56
    :cond_3
    iget-object p2, p2, Lcom/mb/android/sync/data/database/OfflineAction;->UserId:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/mb/android/sync/data/database/OfflineAction;

    invoke-virtual {p0, p1, p2}, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/mb/android/sync/data/database/OfflineAction;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `offline_action` (`ActionId`,`Date`,`ItemId`,`ServerId`,`PositionTicks`,`Type`,`UserId`) VALUES (nullif(?, 0),?,?,?,?,?,?)"

    return-object v0
.end method
