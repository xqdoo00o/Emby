.class Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;
.super Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->playRandom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onAfterUrlDetermined()V
    .locals 4

    .line 796
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    iget-object v0, v0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$1700(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/MediaSource;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    new-instance v2, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1$1;

    invoke-direct {v2, p0}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1$1;-><init>(Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;)V

    const-string v3, "Audio"

    invoke-virtual {v0, v1, v3, v2}, Lcom/mb/android/media/MediaSource;->getRandomItemsWithType(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method protected onServerConnectionFailed(Lcom/mb/android/model/apiclient/ServerInfo;)V
    .locals 2

    .line 792
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    invoke-static {p1}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->access$1500(Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PlaybackManager.playRandom Unable to connect to server."

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V
    .locals 0

    .line 787
    invoke-virtual {p0}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;->onAfterUrlDetermined()V

    return-void
.end method
