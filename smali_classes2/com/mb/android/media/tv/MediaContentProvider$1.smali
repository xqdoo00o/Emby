.class Lcom/mb/android/media/tv/MediaContentProvider$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "MediaContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/tv/MediaContentProvider;->getSuggestions(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
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
.field final synthetic this$0:Lcom/mb/android/media/tv/MediaContentProvider;

.field final synthetic val$cursor:Landroid/database/MatrixCursor;


# direct methods
.method constructor <init>(Lcom/mb/android/media/tv/MediaContentProvider;Landroid/database/MatrixCursor;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/mb/android/media/tv/MediaContentProvider$1;->this$0:Lcom/mb/android/media/tv/MediaContentProvider;

    iput-object p2, p0, Lcom/mb/android/media/tv/MediaContentProvider$1;->val$cursor:Landroid/database/MatrixCursor;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/mb/android/media/tv/MediaContentProvider$1;->this$0:Lcom/mb/android/media/tv/MediaContentProvider;

    invoke-static {v0}, Lcom/mb/android/media/tv/MediaContentProvider;->access$200(Lcom/mb/android/media/tv/MediaContentProvider;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to fetch search results"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 120
    iget-object p1, p0, Lcom/mb/android/media/tv/MediaContentProvider$1;->this$0:Lcom/mb/android/media/tv/MediaContentProvider;

    invoke-static {p1}, Lcom/mb/android/media/tv/MediaContentProvider;->access$100(Lcom/mb/android/media/tv/MediaContentProvider;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/tv/MediaContentProvider$1;->this$0:Lcom/mb/android/media/tv/MediaContentProvider;

    invoke-static {v0}, Lcom/mb/android/media/tv/MediaContentProvider;->access$100(Lcom/mb/android/media/tv/MediaContentProvider;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V
    .locals 8

    .line 101
    iget-object p1, p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;->Items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/dto/BaseItemDto;

    .line 102
    iget-object v1, p0, Lcom/mb/android/media/tv/MediaContentProvider$1;->val$cursor:Landroid/database/MatrixCursor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 104
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 105
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/mb/android/media/tv/MediaContentProvider$1;->this$0:Lcom/mb/android/media/tv/MediaContentProvider;

    .line 106
    invoke-static {v4}, Lcom/mb/android/media/tv/MediaContentProvider;->access$000(Lcom/mb/android/media/tv/MediaContentProvider;)Lcom/mb/android/media/MediaSource;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 107
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    div-long/2addr v4, v6

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 108
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    aput-object v0, v2, v3

    .line 102
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/mb/android/media/tv/MediaContentProvider$1;->val$cursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->requery()Z

    goto/16 :goto_0

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/mb/android/media/tv/MediaContentProvider$1;->this$0:Lcom/mb/android/media/tv/MediaContentProvider;

    invoke-static {p1}, Lcom/mb/android/media/tv/MediaContentProvider;->access$100(Lcom/mb/android/media/tv/MediaContentProvider;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/tv/MediaContentProvider$1;->this$0:Lcom/mb/android/media/tv/MediaContentProvider;

    invoke-static {v0}, Lcom/mb/android/media/tv/MediaContentProvider;->access$100(Lcom/mb/android/media/tv/MediaContentProvider;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/tv/MediaContentProvider$1;->onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V

    return-void
.end method
