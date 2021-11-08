.class Lcom/mb/android/media/BrowseTree$4;
.super Lcom/mb/android/apiinteraction/Response;
.source "BrowseTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/BrowseTree;->getMusicViewId(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
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
.field final synthetic this$0:Lcom/mb/android/media/BrowseTree;

.field final synthetic val$outerResponse:Lcom/mb/android/apiinteraction/Response;


# direct methods
.method constructor <init>(Lcom/mb/android/media/BrowseTree;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/mb/android/media/BrowseTree$4;->this$0:Lcom/mb/android/media/BrowseTree;

    iput-object p2, p0, Lcom/mb/android/media/BrowseTree$4;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree$4;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V
    .locals 3

    .line 221
    iget-object p1, p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;->Items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/dto/BaseItemDto;

    .line 222
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/mb/android/media/BrowseTree$4;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/mb/android/media/BrowseTree$4;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 218
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/BrowseTree$4;->onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V

    return-void
.end method
