.class Lcom/mb/android/media/tv/RecommendationManager$1;
.super Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;
.source "RecommendationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/tv/RecommendationManager;->loadAllChannels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/tv/RecommendationManager;

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;


# direct methods
.method constructor <init>(Lcom/mb/android/media/tv/RecommendationManager;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mb/android/media/tv/RecommendationManager$1;->this$0:Lcom/mb/android/media/tv/RecommendationManager;

    iput-object p2, p0, Lcom/mb/android/media/tv/RecommendationManager$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/mb/android/media/tv/RecommendationManager$1;->this$0:Lcom/mb/android/media/tv/RecommendationManager;

    iget-object p2, p0, Lcom/mb/android/media/tv/RecommendationManager$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p1, p2}, Lcom/mb/android/media/tv/RecommendationManager;->access$000(Lcom/mb/android/media/tv/RecommendationManager;Lcom/mb/android/apiinteraction/ApiClient;)V

    return-void
.end method
