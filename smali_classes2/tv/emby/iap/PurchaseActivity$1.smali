.class Ltv/emby/iap/PurchaseActivity$1;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/PurchaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/PurchaseActivity;

.field final synthetic val$validator:Ltv/emby/iap/IabValidator;


# direct methods
.method constructor <init>(Ltv/emby/iap/PurchaseActivity;Ltv/emby/iap/IabValidator;)V
    .locals 0

    .line 48
    iput-object p1, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    iput-object p2, p0, Ltv/emby/iap/PurchaseActivity$1;->val$validator:Ltv/emby/iap/IabValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Ltv/emby/iap/PurchaseActivity$1;->this$0:Ltv/emby/iap/PurchaseActivity;

    iget-object v1, p0, Ltv/emby/iap/PurchaseActivity$1;->val$validator:Ltv/emby/iap/IabValidator;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, v1, p1, p2}, Ltv/emby/iap/PurchaseActivity;->access$000(Ltv/emby/iap/PurchaseActivity;Ltv/emby/iap/IabValidator;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method
