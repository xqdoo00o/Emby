.class Ltv/emby/iap/IabValidator$4;
.super Ljava/lang/Object;
.source "IabValidator.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/IabValidator;->checkPurchaseInternal(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/IabValidator;

.field final synthetic val$resultHandler:Ltv/emby/iap/IResultHandler;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/iap/IabValidator;Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V
    .locals 0

    .line 122
    iput-object p1, p0, Ltv/emby/iap/IabValidator$4;->this$0:Ltv/emby/iap/IabValidator;

    iput-object p2, p0, Ltv/emby/iap/IabValidator$4;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Ltv/emby/iap/IabValidator$4;->val$resultHandler:Ltv/emby/iap/IResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
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

    .line 125
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 126
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 127
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Ltv/emby/iap/IabValidator$4;->val$sku:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 128
    iget-object p1, p0, Ltv/emby/iap/IabValidator$4;->val$resultHandler:Ltv/emby/iap/IResultHandler;

    sget-object p2, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    invoke-interface {p1, p2}, Ltv/emby/iap/IResultHandler;->onResult(Ljava/lang/Object;)V

    return-void

    .line 132
    :cond_1
    iget-object p1, p0, Ltv/emby/iap/IabValidator$4;->val$resultHandler:Ltv/emby/iap/IResultHandler;

    sget-object p2, Ltv/emby/iap/ResultType;->Failure:Ltv/emby/iap/ResultType;

    invoke-interface {p1, p2}, Ltv/emby/iap/IResultHandler;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object p2, p0, Ltv/emby/iap/IabValidator$4;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {p2}, Ltv/emby/iap/IabValidator;->access$400(Ltv/emby/iap/IabValidator;)Ltv/emby/iap/IResultHandler;

    move-result-object p2

    sget-object v0, Ltv/emby/iap/ErrorSeverity;->Critical:Ltv/emby/iap/ErrorSeverity;

    sget-object v1, Ltv/emby/iap/ErrorType;->UnableToValidatePurchase:Ltv/emby/iap/ErrorType;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Ltv/emby/iap/IResultHandler;->onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
