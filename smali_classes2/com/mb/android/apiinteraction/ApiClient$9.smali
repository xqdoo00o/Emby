.class Lcom/mb/android/apiinteraction/ApiClient$9;
.super Lcom/mb/android/apiinteraction/Response;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/apiinteraction/ApiClient;->reportPlaybackProgress(Lcom/mb/android/model/session/PlaybackProgressInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/apiinteraction/ApiClient;


# direct methods
.method constructor <init>(Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$9;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 866
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient$9;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v0}, Lcom/mb/android/apiinteraction/ApiClient;->access$500(Lcom/mb/android/apiinteraction/ApiClient;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ApiClient: Error in reportPlaybackProgress "

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 853
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient$9;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 856
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 857
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$9;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p1}, Lcom/mb/android/apiinteraction/ApiClient;->access$500(Lcom/mb/android/apiinteraction/ApiClient;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "ApiClient: reportPlaybackProgress"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient$9;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v0}, Lcom/mb/android/apiinteraction/ApiClient;->access$500(Lcom/mb/android/apiinteraction/ApiClient;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "ApiClient: reportPlaybackProgress response: %s"

    invoke-interface {v0, p1, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
