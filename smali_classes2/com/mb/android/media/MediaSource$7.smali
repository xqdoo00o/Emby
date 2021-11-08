.class Lcom/mb/android/media/MediaSource$7;
.super Lcom/mb/android/apiinteraction/Response;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/MediaSource;->getLatestMusic(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "[",
        "Lcom/mb/android/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/MediaSource;

.field final synthetic val$client:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$outerResponse:Lcom/mb/android/apiinteraction/Response;


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaSource;Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/mb/android/media/MediaSource$7;->this$0:Lcom/mb/android/media/MediaSource;

    iput-object p2, p0, Lcom/mb/android/media/MediaSource$7;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    iput-object p3, p0, Lcom/mb/android/media/MediaSource$7;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/mb/android/media/MediaSource$7;->this$0:Lcom/mb/android/media/MediaSource;

    invoke-static {v0}, Lcom/mb/android/media/MediaSource;->access$400(Lcom/mb/android/media/MediaSource;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSource.getLatestMusic Error getting items."

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/mb/android/media/MediaSource$7;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 455
    check-cast p1, [Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/MediaSource$7;->onResponse([Lcom/mb/android/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse([Lcom/mb/android/model/dto/BaseItemDto;)V
    .locals 5

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 459
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 463
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 464
    iget-object v4, p0, Lcom/mb/android/media/MediaSource$7;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v4, v3}, Lcom/mb/android/media/MediaSource;->access$800(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    :cond_1
    iget-object p1, p0, Lcom/mb/android/media/MediaSource$7;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 460
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mb/android/media/MediaSource$7;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
