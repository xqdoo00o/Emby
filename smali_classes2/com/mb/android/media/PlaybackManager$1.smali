.class Lcom/mb/android/media/PlaybackManager$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager;->playFromMediaId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Lcom/mb/android/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/PlaybackManager;

.field final synthetic val$client:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$mediaId:Ljava/lang/String;

.field final synthetic val$pathParts:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager;[Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$1;->this$0:Lcom/mb/android/media/PlaybackManager;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$1;->val$pathParts:[Ljava/lang/String;

    iput-object p3, p0, Lcom/mb/android/media/PlaybackManager$1;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p4, p0, Lcom/mb/android/media/PlaybackManager$1;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 433
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$1;->this$0:Lcom/mb/android/media/PlaybackManager;

    const/4 v0, 0x7

    const-string v1, "Network Error"

    invoke-virtual {p1, v0, v1}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/model/dto/BaseItemDto;)V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$1;->val$pathParts:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "__PLAYLIST__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$1;->val$pathParts:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 427
    invoke-virtual {p1, v0}, Lcom/mb/android/model/dto/BaseItemDto;->setParentId(Ljava/lang/String;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$1;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$1;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$1;->val$mediaId:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/mb/android/media/PlaybackManager;->access$100(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 422
    check-cast p1, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/PlaybackManager$1;->onResponse(Lcom/mb/android/model/dto/BaseItemDto;)V

    return-void
.end method
