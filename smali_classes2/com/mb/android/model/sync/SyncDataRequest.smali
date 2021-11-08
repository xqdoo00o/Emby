.class public Lcom/mb/android/model/sync/SyncDataRequest;
.super Ljava/lang/Object;
.source "SyncDataRequest.java"


# instance fields
.field private final LocalItemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final TargetId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/mb/android/model/sync/SyncDataRequest;->TargetId:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/mb/android/model/sync/SyncDataRequest;->LocalItemIds:Ljava/util/List;

    return-void
.end method
