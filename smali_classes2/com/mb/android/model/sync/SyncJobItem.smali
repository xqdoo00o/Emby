.class public Lcom/mb/android/model/sync/SyncJobItem;
.super Ljava/lang/Object;
.source "SyncJobItem.java"


# instance fields
.field public AdditionalFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/sync/ItemFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public Item:Lcom/mb/android/model/dto/BaseItemDto;

.field public OriginalFileName:Ljava/lang/String;

.field public ServerId:Ljava/lang/String;

.field public SyncJobId:I

.field public SyncJobItemId:I

.field public SyncJobName:Ljava/lang/String;

.field public UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
