.class Lcom/mb/android/apiinteraction/ApiClient$4;
.super Lcom/mb/android/apiinteraction/Response;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/apiinteraction/ApiClient;->reportOfflineActions(Ljava/util/List;)V
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

.field final synthetic val$actions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$4;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p2, p0, Lcom/mb/android/apiinteraction/ApiClient$4;->val$actions:Ljava/util/List;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient$4;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v0}, Lcom/mb/android/apiinteraction/ApiClient;->access$500(Lcom/mb/android/apiinteraction/ApiClient;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ApiClient: Error in reportOfflineActions "

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 350
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient$4;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3

    .line 353
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$4;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p1}, Lcom/mb/android/apiinteraction/ApiClient;->access$500(Lcom/mb/android/apiinteraction/ApiClient;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient$4;->val$actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ApiClient: reportOfflineActions %d actions reported"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
