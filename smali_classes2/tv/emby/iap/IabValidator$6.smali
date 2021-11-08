.class Ltv/emby/iap/IabValidator$6;
.super Ljava/lang/Object;
.source "IabValidator.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/IabValidator;->getProductsInternal(Ltv/emby/iap/IResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/IabValidator;

.field final synthetic val$allSkuDetails:Ljava/util/List;

.field final synthetic val$handler:Ltv/emby/iap/IResultHandler;


# direct methods
.method constructor <init>(Ltv/emby/iap/IabValidator;Ljava/util/List;Ltv/emby/iap/IResultHandler;)V
    .locals 0

    .line 173
    iput-object p1, p0, Ltv/emby/iap/IabValidator$6;->this$0:Ltv/emby/iap/IabValidator;

    iput-object p2, p0, Ltv/emby/iap/IabValidator$6;->val$allSkuDetails:Ljava/util/List;

    iput-object p3, p0, Ltv/emby/iap/IabValidator$6;->val$handler:Ltv/emby/iap/IResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
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
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 178
    iget-object p1, p0, Ltv/emby/iap/IabValidator$6;->val$allSkuDetails:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    .line 181
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v0, p0, Ltv/emby/iap/IabValidator$6;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v0}, Ltv/emby/iap/IabValidator;->access$600(Ltv/emby/iap/IabValidator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/iap/InAppProduct;->getCurrentMonthlySku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p2

    const-string v0, "subs"

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 184
    iget-object p2, p0, Ltv/emby/iap/IabValidator$6;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {p2}, Ltv/emby/iap/IabValidator;->access$900(Ltv/emby/iap/IabValidator;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p1

    new-instance v0, Ltv/emby/iap/IabValidator$6$1;

    invoke-direct {v0, p0}, Ltv/emby/iap/IabValidator$6$1;-><init>(Ltv/emby/iap/IabValidator$6;)V

    invoke-virtual {p2, p1, v0}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object p2, p0, Ltv/emby/iap/IabValidator$6;->val$handler:Ltv/emby/iap/IResultHandler;

    sget-object v0, Ltv/emby/iap/ErrorSeverity;->Critical:Ltv/emby/iap/ErrorSeverity;

    sget-object v1, Ltv/emby/iap/ErrorType;->General:Ltv/emby/iap/ErrorType;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Ltv/emby/iap/IResultHandler;->onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
