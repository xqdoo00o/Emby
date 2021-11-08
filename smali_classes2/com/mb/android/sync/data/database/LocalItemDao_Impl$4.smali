.class Lcom/mb/android/sync/data/database/LocalItemDao_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "LocalItemDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/data/database/LocalItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/data/database/LocalItemDao_Impl;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/data/database/LocalItemDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItemDao_Impl$4;->this$0:Lcom/mb/android/sync/data/database/LocalItemDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE local_item SET Status = ? WHERE Id = ?"

    return-object v0
.end method
