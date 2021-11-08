.class Lcom/mb/android/apiinteraction/ApiClient$6;
.super Lcom/mb/android/apiinteraction/Response;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/apiinteraction/ApiClient;->detectBitrate(Lcom/mb/android/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$response:Lcom/mb/android/apiinteraction/Response;


# direct methods
.method constructor <init>(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$6;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p2, p0, Lcom/mb/android/apiinteraction/ApiClient$6;->val$response:Lcom/mb/android/apiinteraction/Response;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 688
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$6;->val$response:Lcom/mb/android/apiinteraction/Response;

    const-wide/32 v0, 0x16e360

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;)V
    .locals 2

    .line 678
    iget-boolean p1, p1, Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;->IsInNetwork:Z

    if-eqz p1, :cond_0

    .line 679
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$6;->val$response:Lcom/mb/android/apiinteraction/Response;

    const-wide/32 v0, 0x8583b00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 682
    :cond_0
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$6;->val$response:Lcom/mb/android/apiinteraction/Response;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient$6;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v0}, Lcom/mb/android/apiinteraction/ApiClient;->access$900(Lcom/mb/android/apiinteraction/ApiClient;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 675
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;

    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient$6;->onResponse(Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;)V

    return-void
.end method
