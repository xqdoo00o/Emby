.class public Lcom/mb/android/sync/data/database/OfflineAction;
.super Ljava/lang/Object;
.source "OfflineAction.java"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "offline_action"
.end annotation


# instance fields
.field public ActionId:I
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public Date:J

.field public ItemId:Ljava/lang/String;

.field public PositionTicks:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public ServerId:Ljava/lang/String;

.field public Type:I

.field public UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/mb/android/sync/data/database/OfflineAction;->PositionTicks:Ljava/lang/Long;

    return-void
.end method
