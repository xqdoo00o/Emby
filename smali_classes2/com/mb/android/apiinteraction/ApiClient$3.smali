.class Lcom/mb/android/apiinteraction/ApiClient$3;
.super Lcom/mb/android/apiinteraction/Response;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/apiinteraction/ApiClient;->testConnection(Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V
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

.field final synthetic val$callback:Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$testInfo:Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;


# direct methods
.method constructor <init>(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p2, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->val$callback:Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;

    iput-object p4, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->val$testInfo:Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 310
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->val$callback:Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v0}, Lcom/mb/android/apiinteraction/ApiClient;->access$600(Lcom/mb/android/apiinteraction/ApiClient;)Lcom/mb/android/model/apiclient/ServerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p1, v0, v1}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->access$700(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Lcom/mb/android/model/apiclient/ServerInfo;Lcom/mb/android/apiinteraction/ApiClient;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 303
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4

    .line 305
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p1}, Lcom/mb/android/apiinteraction/ApiClient;->access$400(Lcom/mb/android/apiinteraction/ApiClient;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v0}, Lcom/mb/android/apiinteraction/ApiClient;->access$500(Lcom/mb/android/apiinteraction/ApiClient;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->val$tag:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/mb/android/apiinteraction/RequestHelper;->cancelRequestsWithTag(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->val$callback:Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v0}, Lcom/mb/android/apiinteraction/ApiClient;->access$600(Lcom/mb/android/apiinteraction/ApiClient;)Lcom/mb/android/model/apiclient/ServerInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->val$testInfo:Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;

    iget-object v1, v1, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;->Address:Ljava/lang/String;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->val$testInfo:Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;

    iget-object v2, v2, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;->ConnectionMode:Lcom/mb/android/model/apiclient/ConnectionMode;

    iget-object v3, p0, Lcom/mb/android/apiinteraction/ApiClient$3;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->access$100(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;Lcom/mb/android/apiinteraction/ApiClient;)V

    return-void
.end method
