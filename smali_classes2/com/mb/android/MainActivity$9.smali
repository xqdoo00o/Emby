.class Lcom/mb/android/MainActivity$9;
.super Lcom/mb/android/apiinteraction/Response;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity;->beginPurchase(Ltv/emby/iap/InAppProduct;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/mb/android/MainActivity;

.field final synthetic val$product:Ltv/emby/iap/InAppProduct;


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity;Ltv/emby/iap/InAppProduct;)V
    .locals 0

    .line 1158
    iput-object p1, p0, Lcom/mb/android/MainActivity$9;->this$0:Lcom/mb/android/MainActivity;

    iput-object p2, p0, Lcom/mb/android/MainActivity$9;->val$product:Ltv/emby/iap/InAppProduct;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1171
    iget-object p1, p0, Lcom/mb/android/MainActivity$9;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$200(Lcom/mb/android/MainActivity;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Back-end connectivity test failed."

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1158
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity$9;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 1162
    iget-object p1, p0, Lcom/mb/android/MainActivity$9;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$200(Lcom/mb/android/MainActivity;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Back-end connectivity test succeeded"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1165
    iget-object p1, p0, Lcom/mb/android/MainActivity$9;->this$0:Lcom/mb/android/MainActivity;

    iget-object v0, p0, Lcom/mb/android/MainActivity$9;->val$product:Ltv/emby/iap/InAppProduct;

    invoke-static {p1, v0}, Lcom/mb/android/MainActivity;->access$1600(Lcom/mb/android/MainActivity;Ltv/emby/iap/InAppProduct;)V

    return-void
.end method
