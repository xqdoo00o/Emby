.class Lcom/mb/android/media/PlaybackManager$7;
.super Lcom/mb/android/media/MediaSource$SearchResultCallback;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager;->handleQuery(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/mb/android/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/PlaybackManager;

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$getItemsResponse:Lcom/mb/android/apiinteraction/Response;

.field final synthetic val$isAlbumFocus:Z

.field final synthetic val$isArtistFocus:Z

.field final synthetic val$isItemFocus:Z

.field final synthetic val$isPlaylistFocus:Z


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager;ZLcom/mb/android/apiinteraction/ApiClient;ZZLcom/mb/android/apiinteraction/Response;Z)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$7;->this$0:Lcom/mb/android/media/PlaybackManager;

    iput-boolean p2, p0, Lcom/mb/android/media/PlaybackManager$7;->val$isItemFocus:Z

    iput-object p3, p0, Lcom/mb/android/media/PlaybackManager$7;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iput-boolean p4, p0, Lcom/mb/android/media/PlaybackManager$7;->val$isArtistFocus:Z

    iput-boolean p5, p0, Lcom/mb/android/media/PlaybackManager$7;->val$isAlbumFocus:Z

    iput-object p6, p0, Lcom/mb/android/media/PlaybackManager$7;->val$getItemsResponse:Lcom/mb/android/apiinteraction/Response;

    iput-boolean p7, p0, Lcom/mb/android/media/PlaybackManager$7;->val$isPlaylistFocus:Z

    invoke-direct {p0}, Lcom/mb/android/media/MediaSource$SearchResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onAllUpdated(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 1090
    iget-boolean v0, p0, Lcom/mb/android/media/PlaybackManager$7;->val$isItemFocus:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager$7;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object p3, p0, Lcom/mb/android/media/PlaybackManager$7;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-boolean p4, p0, Lcom/mb/android/media/PlaybackManager$7;->val$isArtistFocus:Z

    invoke-static {p2, p3, p1, p4}, Lcom/mb/android/media/PlaybackManager;->access$1600(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 1093
    :cond_0
    iget-boolean v0, p0, Lcom/mb/android/media/PlaybackManager$7;->val$isAlbumFocus:Z

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1094
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$7;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager$7;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p1, p2, p3}, Lcom/mb/android/media/PlaybackManager;->access$2500(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1096
    :cond_1
    iget-boolean v0, p0, Lcom/mb/android/media/PlaybackManager$7;->val$isArtistFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1097
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$7;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object p3, p0, Lcom/mb/android/media/PlaybackManager$7;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/mb/android/media/PlaybackManager$7;->val$getItemsResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-static {p1, p3, p2, p4}, Lcom/mb/android/media/PlaybackManager;->access$2600(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    goto :goto_0

    .line 1099
    :cond_2
    iget-boolean v0, p0, Lcom/mb/android/media/PlaybackManager$7;->val$isPlaylistFocus:Z

    if-eqz v0, :cond_3

    invoke-static {p4}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1100
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$7;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager$7;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p1, p2, p4}, Lcom/mb/android/media/PlaybackManager;->access$2500(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V

    goto :goto_0

    .line 1103
    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1104
    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager$7;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object p3, p0, Lcom/mb/android/media/PlaybackManager$7;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-boolean p4, p0, Lcom/mb/android/media/PlaybackManager$7;->val$isArtistFocus:Z

    invoke-static {p2, p3, p1, p4}, Lcom/mb/android/media/PlaybackManager;->access$1600(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;Z)V

    goto :goto_0

    .line 1106
    :cond_4
    invoke-static {p3}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1107
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$7;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager$7;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p1, p2, p3}, Lcom/mb/android/media/PlaybackManager;->access$2500(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V

    goto :goto_0

    .line 1109
    :cond_5
    invoke-static {p2}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1110
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$7;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object p3, p0, Lcom/mb/android/media/PlaybackManager$7;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/mb/android/media/PlaybackManager$7;->val$getItemsResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-static {p1, p3, p2, p4}, Lcom/mb/android/media/PlaybackManager;->access$2600(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    goto :goto_0

    .line 1112
    :cond_6
    invoke-static {p4}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1113
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$7;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager$7;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p1, p2, p4}, Lcom/mb/android/media/PlaybackManager;->access$2500(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V

    goto :goto_0

    .line 1116
    :cond_7
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$7;->this$0:Lcom/mb/android/media/PlaybackManager;

    const-string p2, "No results found"

    invoke-static {p1, p2}, Lcom/mb/android/media/PlaybackManager;->access$1100(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$7;->this$0:Lcom/mb/android/media/PlaybackManager;

    const-string v1, "Network Error"

    invoke-static {v0, v1, p1}, Lcom/mb/android/media/PlaybackManager;->access$400(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
