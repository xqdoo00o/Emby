.class Lcom/mb/android/media/PlaybackManager$8;
.super Lcom/mb/android/apiinteraction/Response;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager;->playItems(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/PlaybackManager;

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$first:Lcom/mb/android/model/dto/BaseItemDto;

.field final synthetic val$isArtistFocus:Z

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager;ZLcom/mb/android/model/dto/BaseItemDto;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$8;->this$0:Lcom/mb/android/media/PlaybackManager;

    iput-boolean p2, p0, Lcom/mb/android/media/PlaybackManager$8;->val$isArtistFocus:Z

    iput-object p3, p0, Lcom/mb/android/media/PlaybackManager$8;->val$first:Lcom/mb/android/model/dto/BaseItemDto;

    iput-object p4, p0, Lcom/mb/android/media/PlaybackManager$8;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p5, p0, Lcom/mb/android/media/PlaybackManager$8;->val$items:Ljava/util/List;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$8;->this$0:Lcom/mb/android/media/PlaybackManager;

    const-string v1, "Network Error"

    invoke-static {v0, v1, p1}, Lcom/mb/android/media/PlaybackManager;->access$400(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Long;)V
    .locals 7

    .line 1140
    iget-boolean v0, p0, Lcom/mb/android/media/PlaybackManager$8;->val$isArtistFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$8;->val$first:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getArtists()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$8;->val$first:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getArtists()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 1143
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$8;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$8;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v4, p0, Lcom/mb/android/media/PlaybackManager$8;->val$items:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/mb/android/media/PlaybackManager;->access$300(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/util/List;J)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1136
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/PlaybackManager$8;->onResponse(Ljava/lang/Long;)V

    return-void
.end method
