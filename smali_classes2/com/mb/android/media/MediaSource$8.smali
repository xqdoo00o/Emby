.class Lcom/mb/android/media/MediaSource$8;
.super Lcom/mb/android/apiinteraction/Response;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/MediaSource;->getFavoriteArtists(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
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
.field final synthetic this$0:Lcom/mb/android/media/MediaSource;

.field final synthetic val$client:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$outerResponse:Lcom/mb/android/apiinteraction/Response;


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaSource;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/mb/android/media/MediaSource$8;->this$0:Lcom/mb/android/media/MediaSource;

    iput-object p2, p0, Lcom/mb/android/media/MediaSource$8;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p3, p0, Lcom/mb/android/media/MediaSource$8;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/mb/android/media/MediaSource$8;->this$0:Lcom/mb/android/media/MediaSource;

    invoke-static {v0}, Lcom/mb/android/media/MediaSource;->access$400(Lcom/mb/android/media/MediaSource;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSource.getFavoriteArtists Error getting items."

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 523
    iget-object v0, p0, Lcom/mb/android/media/MediaSource$8;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V
    .locals 3

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    iget-object p1, p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;->Items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/dto/BaseItemDto;

    .line 515
    iget-object v2, p0, Lcom/mb/android/media/MediaSource$8;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v2, v1}, Lcom/mb/android/media/MediaSource;->access$800(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 517
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/MediaSource$8;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 510
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/MediaSource$8;->onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V

    return-void
.end method
