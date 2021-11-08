.class Lcom/mb/android/media/MediaSource$3;
.super Lcom/mb/android/apiinteraction/Response;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/MediaSource;->getAllSearchResults(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/media/MediaSource$SearchResultCallback;)Z
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

.field final synthetic val$results:Lcom/mb/android/media/MediaSource$SearchResultCallback;


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaSource;Lcom/mb/android/media/MediaSource$SearchResultCallback;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/mb/android/media/MediaSource$3;->this$0:Lcom/mb/android/media/MediaSource;

    iput-object p2, p0, Lcom/mb/android/media/MediaSource$3;->val$results:Lcom/mb/android/media/MediaSource$SearchResultCallback;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/mb/android/media/MediaSource$3;->val$results:Lcom/mb/android/media/MediaSource$SearchResultCallback;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->access$200(Lcom/mb/android/media/MediaSource$SearchResultCallback;Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/mb/android/media/MediaSource$3;->val$results:Lcom/mb/android/media/MediaSource$SearchResultCallback;

    iget-object p1, p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;->Items:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->access$200(Lcom/mb/android/media/MediaSource$SearchResultCallback;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/MediaSource$3;->onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V

    return-void
.end method
