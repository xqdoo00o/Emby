.class Lcom/mb/android/media/PlaybackManager$5;
.super Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager;->playMediaPlaylist(Ljava/lang/String;Ljava/util/List;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/PlaybackManager;

.field final synthetic val$client:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$itemIds:Ljava/util/List;

.field final synthetic val$startIndex:I

.field final synthetic val$startPosition:J


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager;Ljava/util/List;Lcom/mb/android/apiinteraction/ApiClient;JI)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$5;->this$0:Lcom/mb/android/media/PlaybackManager;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$5;->val$itemIds:Ljava/util/List;

    iput-object p3, p0, Lcom/mb/android/media/PlaybackManager$5;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iput-wide p4, p0, Lcom/mb/android/media/PlaybackManager$5;->val$startPosition:J

    iput p6, p0, Lcom/mb/android/media/PlaybackManager$5;->val$startIndex:I

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onAfterUrlDetermined()V
    .locals 3

    .line 672
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 673
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$5;->val$itemIds:Ljava/util/List;

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ids"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$5;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    new-instance v2, Lcom/mb/android/media/PlaybackManager$5$1;

    invoke-direct {v2, p0, v0}, Lcom/mb/android/media/PlaybackManager$5$1;-><init>(Lcom/mb/android/media/PlaybackManager$5;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2}, Lcom/mb/android/apiinteraction/ApiClient;->detectBitrate(Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method protected onServerConnectionFailed(Lcom/mb/android/model/apiclient/ServerInfo;)V
    .locals 2

    .line 668
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$5;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {p1}, Lcom/mb/android/media/PlaybackManager;->access$1000(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PlaybackManager.playMediaPlaylist Unable to connect to server."

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V
    .locals 0

    .line 663
    invoke-virtual {p0}, Lcom/mb/android/media/PlaybackManager$5;->onAfterUrlDetermined()V

    return-void
.end method
