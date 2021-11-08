.class Lcom/mb/android/apiinteraction/ApiClient$5;
.super Lcom/mb/android/apiinteraction/SerializedResponse;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/apiinteraction/ApiClient;->getEndpointInfo(Lcom/mb/android/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/SerializedResponse<",
        "Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/apiinteraction/ApiClient;


# direct methods
.method constructor <init>(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$5;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-direct {p0, p2, p3, p4}, Lcom/mb/android/apiinteraction/SerializedResponse;-><init>(Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onSerializedResponse(Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;)V
    .locals 1

    .line 668
    invoke-super {p0, p1}, Lcom/mb/android/apiinteraction/SerializedResponse;->onSerializedResponse(Ljava/lang/Object;)V

    .line 669
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient$5;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v0, p1}, Lcom/mb/android/apiinteraction/ApiClient;->access$802(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;)Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;

    return-void
.end method

.method protected bridge synthetic onSerializedResponse(Ljava/lang/Object;)V
    .locals 0

    .line 665
    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;

    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient$5;->onSerializedResponse(Lcom/mb/android/apiinteraction/ApiClient$EndpointInfo;)V

    return-void
.end method
