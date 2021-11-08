.class Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$3;
.super Lcom/mb/android/apiinteraction/Response;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
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
.field final synthetic this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$isArtistFocus:Z


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;Lcom/mb/android/apiinteraction/ApiClient;Z)V
    .locals 0

    .line 1046
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$3;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$3;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iput-boolean p3, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$3;->val$isArtistFocus:Z

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$3;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    iget-object v0, v0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    const-string v1, "Network Error"

    invoke-static {v0, v1, p1}, Lcom/mb/android/media/PlaybackManager;->access$400(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V
    .locals 3

    .line 1049
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$3;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    iget-object v0, v0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$3;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object p1, p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;->Items:Ljava/util/List;

    iget-boolean v2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$3;->val$isArtistFocus:Z

    invoke-static {v0, v1, p1, v2}, Lcom/mb/android/media/PlaybackManager;->access$1600(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;Z)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1046
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$3;->onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V

    return-void
.end method
