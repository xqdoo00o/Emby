.class Lcom/mb/android/media/tv/RecommendationManager$2;
.super Lcom/mb/android/apiinteraction/Response;
.source "RecommendationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/tv/RecommendationManager;->loadNextUpChannel(Lcom/mb/android/apiinteraction/ApiClient;)V
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
.field final synthetic this$0:Lcom/mb/android/media/tv/RecommendationManager;

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;


# direct methods
.method constructor <init>(Lcom/mb/android/media/tv/RecommendationManager;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mb/android/media/tv/RecommendationManager$2;->this$0:Lcom/mb/android/media/tv/RecommendationManager;

    iput-object p2, p0, Lcom/mb/android/media/tv/RecommendationManager$2;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    .line 71
    iget-object v0, p0, Lcom/mb/android/media/tv/RecommendationManager$2;->this$0:Lcom/mb/android/media/tv/RecommendationManager;

    invoke-static {v0}, Lcom/mb/android/media/tv/RecommendationManager;->access$200(Lcom/mb/android/media/tv/RecommendationManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error adding NextUp items"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/mb/android/media/tv/RecommendationManager$2;->this$0:Lcom/mb/android/media/tv/RecommendationManager;

    iget-object v1, p0, Lcom/mb/android/media/tv/RecommendationManager$2;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object p1, p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;->Items:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/mb/android/media/tv/RecommendationManager;->access$100(Lcom/mb/android/media/tv/RecommendationManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/tv/RecommendationManager$2;->onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V

    return-void
.end method
