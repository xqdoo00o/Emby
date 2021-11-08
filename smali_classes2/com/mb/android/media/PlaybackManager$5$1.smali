.class Lcom/mb/android/media/PlaybackManager$5$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager$5;->onAfterUrlDetermined()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mb/android/media/PlaybackManager$5;

.field final synthetic val$options:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager$5;Ljava/util/HashMap;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$5$1;->val$options:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Long;)V
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iget-object v0, v0, Lcom/mb/android/media/PlaybackManager$5;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$5$1;->this$1:Lcom/mb/android/media/PlaybackManager$5;

    iget-object v1, v1, Lcom/mb/android/media/PlaybackManager$5;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-virtual {v1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$5$1;->val$options:Ljava/util/HashMap;

    new-instance v3, Lcom/mb/android/media/PlaybackManager$5$1$1;

    invoke-direct {v3, p0, p1}, Lcom/mb/android/media/PlaybackManager$5$1$1;-><init>(Lcom/mb/android/media/PlaybackManager$5$1;Ljava/lang/Long;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mb/android/apiinteraction/ApiClient;->getItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 674
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/PlaybackManager$5$1;->onResponse(Ljava/lang/Long;)V

    return-void
.end method
