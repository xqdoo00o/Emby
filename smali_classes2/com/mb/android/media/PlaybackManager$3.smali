.class Lcom/mb/android/media/PlaybackManager$3;
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

    .line 459
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$3;->this$0:Lcom/mb/android/media/PlaybackManager;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$3;->val$originalItem:Lcom/mb/android/model/dto/BaseItemDto;

    iput-object p3, p0, Lcom/mb/android/media/PlaybackManager$3;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iput-wide p4, p0, Lcom/mb/android/media/PlaybackManager$3;->val$bitrate:J

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$3;->this$0:Lcom/mb/android/media/PlaybackManager;

    const-string v1, "Network Error"

    invoke-static {v0, v1, p1}, Lcom/mb/android/media/PlaybackManager;->access$400(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V
    .locals 7

    .line 462
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$3;->val$originalItem:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v3

    .line 463
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$3;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$3;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v4, p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;->Items:Ljava/util/List;

    iget-wide v5, p0, Lcom/mb/android/media/PlaybackManager$3;->val$bitrate:J

    invoke-static/range {v1 .. v6}, Lcom/mb/android/media/PlaybackManager;->access$300(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/util/List;J)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 459
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/PlaybackManager$3;->onResponse(Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;)V

    return-void
.end method
