.class Lcom/mb/android/sync/MediaSync$4;
.super Lcom/mb/android/apiinteraction/Response;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/MediaSync;->downloadParentItem(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Lcom/mb/android/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/MediaSync;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/MediaSync;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/mb/android/sync/MediaSync$4;->this$0:Lcom/mb/android/sync/MediaSync;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mb/android/model/dto/BaseItemDto;)V
    .locals 5

    const/4 v0, 0x1

    .line 499
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mb/android/model/dto/BaseItemDto;->setCanDelete(Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    .line 500
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mb/android/model/dto/BaseItemDto;->setCanDownload(Ljava/lang/Boolean;)V

    .line 501
    invoke-virtual {p1, v2}, Lcom/mb/android/model/dto/BaseItemDto;->setSupportsSync(Ljava/lang/Boolean;)V

    const/4 v2, 0x0

    .line 502
    invoke-virtual {p1, v2}, Lcom/mb/android/model/dto/BaseItemDto;->setSpecialFeatureCount(Ljava/lang/Integer;)V

    .line 503
    invoke-virtual {p1, v2}, Lcom/mb/android/model/dto/BaseItemDto;->setBackdropImageTags(Ljava/util/ArrayList;)V

    .line 504
    invoke-virtual {p1, v2}, Lcom/mb/android/model/dto/BaseItemDto;->setParentBackdropImageTags(Ljava/util/ArrayList;)V

    .line 505
    invoke-virtual {p1, v2}, Lcom/mb/android/model/dto/BaseItemDto;->setParentArtImageTag(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p1, v2}, Lcom/mb/android/model/dto/BaseItemDto;->setParentLogoImageTag(Ljava/lang/String;)V

    .line 508
    new-instance v3, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {v3}, Lcom/mb/android/sync/data/database/LocalItem;-><init>()V

    .line 509
    invoke-virtual {v3, p1}, Lcom/mb/android/sync/data/database/LocalItem;->setItem(Lcom/mb/android/model/dto/BaseItemDto;)V

    .line 510
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mb/android/sync/data/database/LocalItem;->ItemId:Ljava/lang/String;

    .line 511
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getServerId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 512
    iput-object v2, v3, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    .line 513
    sget-object v2, Lcom/mb/android/sync/data/SyncJobStatus;->Completed:Lcom/mb/android/sync/data/SyncJobStatus;

    iput-object v2, v3, Lcom/mb/android/sync/data/database/LocalItem;->Status:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 516
    :try_start_0
    iget-object v2, p0, Lcom/mb/android/sync/MediaSync$4;->this$0:Lcom/mb/android/sync/MediaSync;

    invoke-static {v2}, Lcom/mb/android/sync/MediaSync;->access$700(Lcom/mb/android/sync/MediaSync;)Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->insertLocalItem(Lcom/mb/android/sync/data/database/LocalItem;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    iget-object v2, p0, Lcom/mb/android/sync/MediaSync$4;->this$0:Lcom/mb/android/sync/MediaSync;

    invoke-static {v2}, Lcom/mb/android/sync/MediaSync;->access$300(Lcom/mb/android/sync/MediaSync;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "MediaSync: Parent item \'%s\' already exists"

    invoke-interface {v2, p1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 495
    check-cast p1, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Lcom/mb/android/sync/MediaSync$4;->onResponse(Lcom/mb/android/model/dto/BaseItemDto;)V

    return-void
.end method
