.class Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;->onAfterUrlDetermined()V
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
.field final synthetic this$2:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;

    iget-object v0, v0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    iget-object v0, v0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    const-string v1, "Network Error"

    invoke-static {v0, v1, p1}, Lcom/mb/android/media/PlaybackManager;->access$400(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;

    iget-object v0, v0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    iget-object v0, v0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1$1;->this$2:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;

    iget-object v1, v1, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object p1, p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;->Items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/mb/android/media/PlaybackManager;->access$1600(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;Z)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 796
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1$1;->onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V

    return-void
.end method
