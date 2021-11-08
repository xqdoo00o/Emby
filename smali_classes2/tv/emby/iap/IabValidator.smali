.class public Ltv/emby/iap/IabValidator;
.super Ljava/lang/Object;
.source "IabValidator.java"


# static fields
.field private static instance:Ltv/emby/iap/IabValidator;


# instance fields
.field private TAG:Ljava/lang/String;

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private disposed:Z

.field private initialized:Z

.field private message:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltv/emby/iap/InAppProduct;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseCheckHandler:Ltv/emby/iap/IResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltv/emby/iap/IResultHandler<",
            "Ltv/emby/iap/ResultType;",
            ">;"
        }
    .end annotation
.end field

.field private sku:Ljava/lang/String;

.field private skuDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ltv/emby/iap/ILogger;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "IabValidator"

    .line 28
    iput-object p2, p0, Ltv/emby/iap/IabValidator;->TAG:Ljava/lang/String;

    .line 44
    sput-object p0, Ltv/emby/iap/IabValidator;->instance:Ltv/emby/iap/IabValidator;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ltv/emby/iap/IabValidator;->packageName:Ljava/lang/String;

    .line 46
    new-instance p2, Ltv/emby/iap/IabValidator$1;

    invoke-direct {p2, p0}, Ltv/emby/iap/IabValidator$1;-><init>(Ltv/emby/iap/IabValidator;)V

    invoke-direct {p0, p1, p2}, Ltv/emby/iap/IabValidator;->createBillingClient(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/iap/IabValidator;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/iap/IabValidator;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Ltv/emby/iap/IabValidator;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ltv/emby/iap/IabValidator;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Ltv/emby/iap/IabValidator;->initialized:Z

    return p1
.end method

.method static synthetic access$200(Ltv/emby/iap/IabValidator;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Ltv/emby/iap/IabValidator;->disposed:Z

    return p0
.end method

.method static synthetic access$300(Ltv/emby/iap/IabValidator;Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Ltv/emby/iap/IabValidator;->checkPurchaseInternal(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V

    return-void
.end method

.method static synthetic access$400(Ltv/emby/iap/IabValidator;)Ltv/emby/iap/IResultHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Ltv/emby/iap/IabValidator;->purchaseCheckHandler:Ltv/emby/iap/IResultHandler;

    return-object p0
.end method

.method static synthetic access$500(Ltv/emby/iap/IabValidator;Ltv/emby/iap/IResultHandler;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Ltv/emby/iap/IabValidator;->getProductsInternal(Ltv/emby/iap/IResultHandler;)V

    return-void
.end method

.method static synthetic access$600(Ltv/emby/iap/IabValidator;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Ltv/emby/iap/IabValidator;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Ltv/emby/iap/IabValidator;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Ltv/emby/iap/IabValidator;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 26
    iput-object p1, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Ltv/emby/iap/IabValidator;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Ltv/emby/iap/IabValidator;->skuDetailsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Ltv/emby/iap/IabValidator;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 26
    iput-object p1, p0, Ltv/emby/iap/IabValidator;->skuDetailsList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Ltv/emby/iap/IabValidator;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 26
    iget-object p0, p0, Ltv/emby/iap/IabValidator;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method private checkPurchaseInternal(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/emby/iap/IResultHandler<",
            "Ltv/emby/iap/ResultType;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Ltv/emby/iap/IabValidator;->sku:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Ltv/emby/iap/IabValidator;->purchaseCheckHandler:Ltv/emby/iap/IResultHandler;

    .line 122
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Ltv/emby/iap/IabValidator$4;

    invoke-direct {v1, p0, p1, p2}, Ltv/emby/iap/IabValidator$4;-><init>(Ltv/emby/iap/IabValidator;Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V

    const-string p1, "inapp"

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method private createBillingClient(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient;
    .locals 0
    .param p2    # Lcom/android/billingclient/api/PurchasesUpdatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Ltv/emby/iap/IabValidator;
    .locals 2

    .line 41
    sget-object v0, Ltv/emby/iap/IabValidator;->instance:Ltv/emby/iap/IabValidator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ltv/emby/iap/IabValidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Ltv/emby/iap/IabValidator;-><init>(Landroid/content/Context;Ljava/lang/String;Ltv/emby/iap/ILogger;)V

    :goto_0
    return-object v0
.end method

.method private getProductsInternal(Ltv/emby/iap/IResultHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/iap/IResultHandler<",
            "Ltv/emby/iap/ResultType;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v2, p0, Ltv/emby/iap/IabValidator;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ltv/emby/iap/InAppProduct;->getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v2, p0, Ltv/emby/iap/IabValidator;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    new-instance v3, Ltv/emby/iap/IabValidator$6;

    invoke-direct {v3, p0, v1, p1}, Ltv/emby/iap/IabValidator$6;-><init>(Ltv/emby/iap/IabValidator;Ljava/util/List;Ltv/emby/iap/IResultHandler;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method


# virtual methods
.method public Connect(Ltv/emby/iap/IResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/iap/IResultHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Ltv/emby/iap/IabValidator$2;

    invoke-direct {v1, p0, p1}, Ltv/emby/iap/IabValidator$2;-><init>(Ltv/emby/iap/IabValidator;Ltv/emby/iap/IResultHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public checkInAppPurchase(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltv/emby/iap/IResultHandler<",
            "Ltv/emby/iap/ResultType;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Ltv/emby/iap/IabValidator;->initialized:Z

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ltv/emby/iap/IabValidator$3;

    invoke-direct {v0, p0, p1, p2}, Ltv/emby/iap/IabValidator$3;-><init>(Ltv/emby/iap/IabValidator;Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V

    invoke-virtual {p0, v0}, Ltv/emby/iap/IabValidator;->Connect(Ltv/emby/iap/IResultHandler;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0, p1, p2}, Ltv/emby/iap/IabValidator;->checkPurchaseInternal(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Ltv/emby/iap/IabValidator;->disposed:Z

    .line 267
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    :cond_0
    const/4 v0, 0x0

    .line 268
    sput-object v0, Ltv/emby/iap/IabValidator;->instance:Ltv/emby/iap/IabValidator;

    .line 269
    iput-object v0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    return-void
.end method

.method public getBillingClient()Lcom/android/billingclient/api/BillingClient;
    .locals 1

    .line 95
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object v0
.end method

.method public getPremiereLifetime()Ltv/emby/iap/InAppProduct;
    .locals 5

    .line 246
    invoke-virtual {p0}, Ltv/emby/iap/IabValidator;->productsInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 248
    :cond_0
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/iap/InAppProduct;

    .line 249
    invoke-virtual {v2}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/iap/IabValidator;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ltv/emby/iap/InAppProduct;->getCurrentLifetimeSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getPremiereMonthly()Ltv/emby/iap/InAppProduct;
    .locals 5

    .line 226
    invoke-virtual {p0}, Ltv/emby/iap/IabValidator;->productsInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 228
    :cond_0
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/iap/InAppProduct;

    .line 229
    invoke-virtual {v2}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/iap/IabValidator;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ltv/emby/iap/InAppProduct;->getCurrentMonthlySku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getPremiereWeekly()Ltv/emby/iap/InAppProduct;
    .locals 5

    .line 236
    invoke-virtual {p0}, Ltv/emby/iap/IabValidator;->productsInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 238
    :cond_0
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/iap/InAppProduct;

    .line 239
    invoke-virtual {v2}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/iap/IabValidator;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ltv/emby/iap/InAppProduct;->getCurrentWeeklySku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;
    .locals 3

    .line 217
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->skuDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 218
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUnlockProduct()Ltv/emby/iap/InAppProduct;
    .locals 5

    .line 256
    invoke-virtual {p0}, Ltv/emby/iap/IabValidator;->productsInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 258
    :cond_0
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/iap/InAppProduct;

    .line 259
    invoke-virtual {v2}, Ltv/emby/iap/InAppProduct;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/emby/iap/IabValidator;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ltv/emby/iap/InAppProduct;->getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public isDisposed()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Ltv/emby/iap/IabValidator;->disposed:Z

    return v0
.end method

.method public productsInitialized()Z
    .locals 1

    .line 214
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->products:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPurchaseListener(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 1

    .line 61
    iget-object v0, p0, Ltv/emby/iap/IabValidator;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 65
    :cond_0
    invoke-direct {p0, p1, p2}, Ltv/emby/iap/IabValidator;->createBillingClient(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/iap/IabValidator;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method

.method public validateProductsAsync(Ltv/emby/iap/IResultHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/emby/iap/IResultHandler<",
            "Ltv/emby/iap/ResultType;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Ltv/emby/iap/IabValidator;->productsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    invoke-interface {p1, v0}, Ltv/emby/iap/IResultHandler;->onResult(Ljava/lang/Object;)V

    return-void

    .line 147
    :cond_0
    iget-boolean v0, p0, Ltv/emby/iap/IabValidator;->initialized:Z

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ltv/emby/iap/IabValidator$5;

    invoke-direct {v0, p0, p1}, Ltv/emby/iap/IabValidator$5;-><init>(Ltv/emby/iap/IabValidator;Ltv/emby/iap/IResultHandler;)V

    invoke-virtual {p0, v0}, Ltv/emby/iap/IabValidator;->Connect(Ltv/emby/iap/IResultHandler;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-direct {p0, p1}, Ltv/emby/iap/IabValidator;->getProductsInternal(Ltv/emby/iap/IResultHandler;)V

    :goto_0
    return-void
.end method
