.class Ltv/emby/iap/PurchaseActivity$2$1;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Ltv/emby/iap/IResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/PurchaseActivity$2;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltv/emby/iap/IResultHandler<",
        "Ltv/emby/iap/ResultType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/iap/PurchaseActivity$2;


# direct methods
.method constructor <init>(Ltv/emby/iap/PurchaseActivity$2;)V
    .locals 0

    .line 60
    iput-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$200(Ltv/emby/iap/PurchaseActivity;)Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error getting available products "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 102
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltv/emby/iap/PurchaseActivity;->setResult(I)V

    .line 103
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-virtual {p1}, Ltv/emby/iap/PurchaseActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ltv/emby/iap/ResultType;

    invoke-virtual {p0, p1}, Ltv/emby/iap/PurchaseActivity$2$1;->onResult(Ltv/emby/iap/ResultType;)V

    return-void
.end method

.method public onResult(Ltv/emby/iap/ResultType;)V
    .locals 5

    .line 63
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->val$validator:Ltv/emby/iap/IabValidator;

    iget-object v0, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object v0, v0, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {v0}, Ltv/emby/iap/PurchaseActivity;->access$100(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/iap/IabValidator;->getSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 66
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 69
    iget-object v2, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object v2, v2, Ltv/emby/iap/PurchaseActivity$2;->val$validator:Ltv/emby/iap/IabValidator;

    invoke-virtual {v2}, Ltv/emby/iap/IabValidator;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object v3, v3, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {v3}, Ltv/emby/iap/PurchaseActivity;->access$200(Ltv/emby/iap/PurchaseActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    .line 83
    iget-object v2, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object v2, v2, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {v2}, Ltv/emby/iap/PurchaseActivity;->access$300(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error launching purchase flow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object v2, v2, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {v2}, Ltv/emby/iap/PurchaseActivity;->access$200(Ltv/emby/iap/PurchaseActivity;)Landroid/app/Activity;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "Error launching purchase flow %d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$300(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object v3, v3, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {v3}, Ltv/emby/iap/PurchaseActivity;->access$100(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is already owned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$200(Ltv/emby/iap/PurchaseActivity;)Landroid/app/Activity;

    move-result-object p1

    const-string v2, "Product is already owned"

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$300(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Billing is unavailable"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$200(Ltv/emby/iap/PurchaseActivity;)Landroid/app/Activity;

    move-result-object p1

    const-string v2, "Billing services unavailable"

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 87
    :goto_0
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-virtual {p1, v0}, Ltv/emby/iap/PurchaseActivity;->setResult(I)V

    .line 88
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-virtual {p1}, Ltv/emby/iap/PurchaseActivity;->finish()V

    goto :goto_1

    .line 92
    :cond_2
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$200(Ltv/emby/iap/PurchaseActivity;)Landroid/app/Activity;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object v4, v4, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {v4}, Ltv/emby/iap/PurchaseActivity;->access$100(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$300(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object v2, v2, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {v2}, Ltv/emby/iap/PurchaseActivity;->access$100(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-virtual {p1, v0}, Ltv/emby/iap/PurchaseActivity;->setResult(I)V

    .line 95
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2$1;->this$1:Ltv/emby/iap/PurchaseActivity$2;

    iget-object p1, p1, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-virtual {p1}, Ltv/emby/iap/PurchaseActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method
