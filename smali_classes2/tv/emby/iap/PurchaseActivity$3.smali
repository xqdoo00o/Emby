.class Ltv/emby/iap/PurchaseActivity$3;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/PurchaseActivity;->processPurchaseResult(Ltv/emby/iap/IabValidator;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/PurchaseActivity;

.field final synthetic val$purchase:Lcom/android/billingclient/api/Purchase;


# direct methods
.method constructor <init>(Ltv/emby/iap/PurchaseActivity;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 137
    iput-object p1, p0, Ltv/emby/iap/PurchaseActivity$3;->this$0:Ltv/emby/iap/PurchaseActivity;

    iput-object p2, p0, Ltv/emby/iap/PurchaseActivity$3;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 140
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 141
    iget-object v0, p0, Ltv/emby/iap/PurchaseActivity$3;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "storeToken"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "store"

    const-string v1, "Google"

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Ltv/emby/iap/PurchaseActivity$3;->this$0:Ltv/emby/iap/PurchaseActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Ltv/emby/iap/PurchaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 144
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$3;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$200(Ltv/emby/iap/PurchaseActivity;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
