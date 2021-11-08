.class Lcom/mb/android/sync/MediaSync$3;
.super Lcom/mb/android/apiinteraction/Response;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/MediaSync;->getImages(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/data/database/LocalItem;)V
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

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$libraryItem:Lcom/mb/android/model/dto/BaseItemDto;

.field final synthetic val$localItem:Lcom/mb/android/sync/data/database/LocalItem;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/model/dto/BaseItemDto;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/mb/android/sync/MediaSync$3;->this$0:Lcom/mb/android/sync/MediaSync;

    iput-object p2, p0, Lcom/mb/android/sync/MediaSync$3;->val$localItem:Lcom/mb/android/sync/data/database/LocalItem;

    iput-object p3, p0, Lcom/mb/android/sync/MediaSync$3;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p4, p0, Lcom/mb/android/sync/MediaSync$3;->val$serverId:Ljava/lang/String;

    iput-object p5, p0, Lcom/mb/android/sync/MediaSync$3;->val$libraryItem:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mb/android/model/dto/BaseItemDto;)V
    .locals 8

    .line 344
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getHasPrimaryImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/mb/android/sync/MediaSync$3;->this$0:Lcom/mb/android/sync/MediaSync;

    iget-object v2, p0, Lcom/mb/android/sync/MediaSync$3;->val$localItem:Lcom/mb/android/sync/data/database/LocalItem;

    iget-object v3, p0, Lcom/mb/android/sync/MediaSync$3;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v4, p0, Lcom/mb/android/sync/MediaSync$3;->val$serverId:Ljava/lang/String;

    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$3;->val$libraryItem:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p1

    sget-object v0, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    invoke-static/range {v1 .. v7}, Lcom/mb/android/sync/MediaSync;->access$600(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 341
    check-cast p1, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Lcom/mb/android/sync/MediaSync$3;->onResponse(Lcom/mb/android/model/dto/BaseItemDto;)V

    return-void
.end method
