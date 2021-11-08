.class Lcom/mb/android/media/PlaybackManager$4;
.super Lcom/mb/android/apiinteraction/Response;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager;->onAfterBitrateDetect(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;J)V
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
.field final synthetic this$0:Lcom/mb/android/media/PlaybackManager;

.field final synthetic val$bitrate:J

.field final synthetic val$client:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$originalItem:Lcom/mb/android/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/model/dto/BaseItemDto;Lcom/mb/android/apiinteraction/ApiClient;J)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$4;->this$0:Lcom/mb/android/media/PlaybackManager;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$4;->val$originalItem:Lcom/mb/android/model/dto/BaseItemDto;

    iput-object p3, p0, Lcom/mb/android/media/PlaybackManager$4;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iput-wide p4, p0, Lcom/mb/android/media/PlaybackManager$4;->val$bitrate:J

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$4;->this$0:Lcom/mb/android/media/PlaybackManager;

    const-string v1, "Network Error"

    invoke-static {v0, v1, p1}, Lcom/mb/android/media/PlaybackManager;->access$400(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V
    .locals 8

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    iget-object p1, p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;->Items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/model/dto/BaseItemDto;

    .line 492
    invoke-virtual {v2}, Lcom/mb/android/model/dto/BaseItemDto;->getIsFolderItem()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "video"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 494
    invoke-virtual {v2}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mb/android/media/PlaybackManager$4;->val$originalItem:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {v5}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 495
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 498
    :cond_1
    iget-object v4, p0, Lcom/mb/android/media/PlaybackManager$4;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object v5, p0, Lcom/mb/android/media/PlaybackManager$4;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iget-wide v6, p0, Lcom/mb/android/media/PlaybackManager$4;->val$bitrate:J

    invoke-static {v4, v5, v2, v6, v7}, Lcom/mb/android/media/PlaybackManager;->access$500(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;J)Ljava/lang/String;

    move-result-object v4

    .line 499
    iget-object v5, p0, Lcom/mb/android/media/PlaybackManager$4;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v5, v2}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v3, v5

    .line 500
    :cond_2
    invoke-static {v2, v4, v3}, Lcom/mb/android/media/QueueManager;->buildMetadata(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    .line 501
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 506
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$4;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$4;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v4, p0, Lcom/mb/android/media/PlaybackManager$4;->val$originalItem:Lcom/mb/android/model/dto/BaseItemDto;

    iget-wide v5, p0, Lcom/mb/android/media/PlaybackManager$4;->val$bitrate:J

    invoke-static {p1, v2, v4, v5, v6}, Lcom/mb/android/media/PlaybackManager;->access$500(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;J)Ljava/lang/String;

    move-result-object p1

    .line 507
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$4;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v4, p0, Lcom/mb/android/media/PlaybackManager$4;->val$originalItem:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-static {v2, v4}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v2

    .line 508
    iget-object v4, p0, Lcom/mb/android/media/PlaybackManager$4;->val$originalItem:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    invoke-static {v4, p1, v2}, Lcom/mb/android/media/QueueManager;->buildMetadata(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 509
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_5
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$4;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$4;->val$originalItem:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-static {p1, v2}, Lcom/mb/android/media/PlaybackManager;->access$600(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/os/Bundle;

    move-result-object p1

    .line 513
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$4;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v2}, Lcom/mb/android/media/PlaybackManager;->access$700(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;->onPlaybackStart()V

    .line 514
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$4;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v2}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcom/mb/android/media/Playback;->play(Ljava/util/List;ILandroid/os/Bundle;)V

    .line 515
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$4;->this$0:Lcom/mb/android/media/PlaybackManager;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    .line 517
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$4;->val$originalItem:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbum()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 519
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$4;->val$originalItem:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p1

    .line 521
    :cond_6
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$4;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$900(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/QueueManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/mb/android/media/QueueManager;->setQueue(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 485
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/PlaybackManager$4;->onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V

    return-void
.end method
