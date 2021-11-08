.class Lcom/mb/android/sync/data/database/OfflineActionDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/mb/android/sync/data/database/OfflineAction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl$2;->this$0:Lcom/mb/android/sync/data/database/OfflineActionDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/mb/android/sync/data/database/OfflineAction;)V
    .locals 2

    .line 68
    iget p2, p2, Lcom/mb/android/sync/data/database/OfflineAction;->ActionId:I

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Lcom/mb/android/sync/data/database/OfflineAction;

    invoke-virtual {p0, p1, p2}, Lcom/mb/android/sync/data/database/OfflineActionDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/mb/android/sync/data/database/OfflineAction;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `offline_action` WHERE `ActionId` = ?"

    return-object v0
.end method
