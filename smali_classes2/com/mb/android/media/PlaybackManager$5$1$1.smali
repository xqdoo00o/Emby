.class Lcom/mb/android/media/PlaybackManager$5$1$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager$5$1;->onResponse(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mb/android/media/PlaybackManager$5$1;

.field final synthetic val$bitrate:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager$5$1;Ljava/lang/Long;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$5$1;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->val$bitrate:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$5$1;

    iget-object v0, v0, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iget-object v0, v0, Lcom/mb/android/media/PlaybackManager$5;->this$0:Lcom/mb/android/media/PlaybackManager;

    const-string v1, "Network Error"

    invoke-static {v0, v1, p1}, Lcom/mb/android/media/PlaybackManager;->access$400(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 680
    iget-object v0, p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;->Items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 684
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    iget-object p1, p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;->Items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/dto/BaseItemDto;

    .line 686
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$5$1;

    iget-object v2, v2, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iget-object v2, v2, Lcom/mb/android/media/PlaybackManager$5;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object v3, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$5$1;

    iget-object v3, v3, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iget-object v3, v3, Lcom/mb/android/media/PlaybackManager$5;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v4, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->val$bitrate:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v1, v4, v5}, Lcom/mb/android/media/PlaybackManager;->access$500(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;J)Ljava/lang/String;

    move-result-object v2

    .line 687
    iget-object v3, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$5$1;

    iget-object v3, v3, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iget-object v3, v3, Lcom/mb/android/media/PlaybackManager$5;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v3, v1}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, ""

    .line 688
    :goto_1
    invoke-static {v1, v2, v3}, Lcom/mb/android/media/QueueManager;->buildMetadata(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    .line 689
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 691
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 692
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$5$1;

    iget-object v1, v1, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iget-wide v1, v1, Lcom/mb/android/media/PlaybackManager$5;->val$startPosition:J

    const-string v3, "startPositionMs"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 693
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$5$1;

    iget-object v1, v1, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iget-object v1, v1, Lcom/mb/android/media/PlaybackManager$5;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$900(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/QueueManager;

    move-result-object v1

    const-string v2, "Emby"

    invoke-virtual {v1, v2, v0}, Lcom/mb/android/media/QueueManager;->setQueue(Ljava/lang/String;Ljava/util/List;)V

    .line 694
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$5$1;

    iget-object v1, v1, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iget-object v1, v1, Lcom/mb/android/media/PlaybackManager$5;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v1

    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$5$1;

    iget-object v2, v2, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iget v2, v2, Lcom/mb/android/media/PlaybackManager$5;->val$startIndex:I

    invoke-interface {v1, v0, v2, p1}, Lcom/mb/android/media/Playback;->play(Ljava/util/List;ILandroid/os/Bundle;)V

    return-void

    .line 681
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$5$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$5$1;

    iget-object p1, p1, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iget-object p1, p1, Lcom/mb/android/media/PlaybackManager$5;->this$0:Lcom/mb/android/media/PlaybackManager;

    const-string v0, "No Items"

    invoke-static {p1, v0}, Lcom/mb/android/media/PlaybackManager;->access$1100(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 677
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/PlaybackManager$5$1$1;->onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V

    return-void
.end method
