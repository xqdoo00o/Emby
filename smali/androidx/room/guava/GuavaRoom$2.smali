.class final Landroidx/room/guava/GuavaRoom$2;
.super Ljava/lang/Object;
.source "GuavaRoom.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/guava/GuavaRoom;->createListenableFuture(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Landroidx/room/RoomSQLiteQuery;ZLandroid/os/CancellationSignal;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$query:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 132
    iput-object p1, p0, Landroidx/room/guava/GuavaRoom$2;->val$query:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/room/guava/GuavaRoom$2;->val$query:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
