.class Lcom/mb/android/media/PlaybackManager$2;
.super Lcom/mb/android/apiinteraction/Response;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager;->onAfterGetItem(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/mb/android/media/PlaybackManager;

.field final synthetic val$client:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$item:Lcom/mb/android/model/dto/BaseItemDto;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$2;->this$0:Lcom/mb/android/media/PlaybackManager;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$2;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p3, p0, Lcom/mb/android/media/PlaybackManager$2;->val$item:Lcom/mb/android/model/dto/BaseItemDto;

    iput-object p4, p0, Lcom/mb/android/media/PlaybackManager$2;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Long;)V
    .locals 6

    .line 447
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$2;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$2;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$2;->val$item:Lcom/mb/android/model/dto/BaseItemDto;

    iget-object v3, p0, Lcom/mb/android/media/PlaybackManager$2;->val$mediaId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/mb/android/media/PlaybackManager;->access$200(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 444
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/PlaybackManager$2;->onResponse(Ljava/lang/Long;)V

    return-void
.end method
