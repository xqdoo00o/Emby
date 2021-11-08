.class Ltv/emby/iap/IabValidator$6$1;
.super Ljava/lang/Object;
.source "IabValidator.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/IabValidator$6;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/iap/IabValidator$6;


# direct methods
.method constructor <init>(Ltv/emby/iap/IabValidator$6;)V
    .locals 0

    .line 184
    iput-object p1, p0, Ltv/emby/iap/IabValidator$6$1;->this$1:Ltv/emby/iap/IabValidator$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
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
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    .line 188
    iget-object p1, p0, Ltv/emby/iap/IabValidator$6$1;->this$1:Ltv/emby/iap/IabValidator$6;

    iget-object p1, p1, Ltv/emby/iap/IabValidator$6;->val$allSkuDetails:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    :cond_0
    iget-object p1, p0, Ltv/emby/iap/IabValidator$6$1;->this$1:Ltv/emby/iap/IabValidator$6;

    iget-object p1, p1, Ltv/emby/iap/IabValidator$6;->this$0:Ltv/emby/iap/IabValidator;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Ltv/emby/iap/IabValidator;->access$702(Ltv/emby/iap/IabValidator;Ljava/util/List;)Ljava/util/List;

    .line 191
    iget-object p1, p0, Ltv/emby/iap/IabValidator$6$1;->this$1:Ltv/emby/iap/IabValidator$6;

    iget-object p1, p1, Ltv/emby/iap/IabValidator$6;->this$0:Ltv/emby/iap/IabValidator;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Ltv/emby/iap/IabValidator;->access$802(Ltv/emby/iap/IabValidator;Ljava/util/List;)Ljava/util/List;

    .line 192
    iget-object p1, p0, Ltv/emby/iap/IabValidator$6$1;->this$1:Ltv/emby/iap/IabValidator$6;

    iget-object p1, p1, Ltv/emby/iap/IabValidator$6;->val$allSkuDetails:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 193
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Ltv/emby/iap/IabValidator$6$1;->this$1:Ltv/emby/iap/IabValidator$6;

    iget-object v0, v0, Ltv/emby/iap/IabValidator$6;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v0}, Ltv/emby/iap/IabValidator;->access$700(Ltv/emby/iap/IabValidator;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ltv/emby/iap/InAppProduct;

    invoke-direct {v1, p2}, Ltv/emby/iap/InAppProduct;-><init>(Lcom/android/billingclient/api/SkuDetails;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Ltv/emby/iap/IabValidator$6$1;->this$1:Ltv/emby/iap/IabValidator$6;

    iget-object v0, v0, Ltv/emby/iap/IabValidator$6;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v0}, Ltv/emby/iap/IabValidator;->access$800(Ltv/emby/iap/IabValidator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Ltv/emby/iap/IabValidator$6$1;->this$1:Ltv/emby/iap/IabValidator$6;

    iget-object v0, v0, Ltv/emby/iap/IabValidator$6;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v0}, Ltv/emby/iap/IabValidator;->access$000(Ltv/emby/iap/IabValidator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSkuDetailsResponse: Available product: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_2
    iget-object p1, p0, Ltv/emby/iap/IabValidator$6$1;->this$1:Ltv/emby/iap/IabValidator$6;

    iget-object p1, p1, Ltv/emby/iap/IabValidator$6;->val$handler:Ltv/emby/iap/IResultHandler;

    sget-object p2, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    invoke-interface {p1, p2}, Ltv/emby/iap/IResultHandler;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 201
    :cond_3
    iget-object p2, p0, Ltv/emby/iap/IabValidator$6$1;->this$1:Ltv/emby/iap/IabValidator$6;

    iget-object p2, p2, Ltv/emby/iap/IabValidator$6;->val$handler:Ltv/emby/iap/IResultHandler;

    sget-object v0, Ltv/emby/iap/ErrorSeverity;->Critical:Ltv/emby/iap/ErrorSeverity;

    sget-object v1, Ltv/emby/iap/ErrorType;->General:Ltv/emby/iap/ErrorType;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Ltv/emby/iap/IResultHandler;->onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
