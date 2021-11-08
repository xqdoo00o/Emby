.class public Lcom/mb/android/iap/IapManager;
.super Ljava/lang/Object;
.source "IapManager.java"


# static fields
.field public static final GOOGLE_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk4MSP7wxlKaJwF066w7qQ+FvttXc+uSvUI5a+Lq+TT74Y1LTp0qg1+WRqou78WRK5cdfCr2m1N4LqttmYFfsWG/DBon98+ZFtaUbiP+Nx29YCkawE06hMyn0pONw/FnXB90mm0vGl7+fkpdYoUx1pit2DGoQweAZwmilW2jfPdi+YloSbX3SJlTXcgZIoAzIvY+qOinyuWIaRda5YcDfvson2yQC6XQOYqQ4ZOKhQxCSzaaQp3dLMCXlKPpsQNzFpVQsHLt4OntBMPkK3e/RxTE9AyhQYxofEzdKg/MHz1c3vCFIJCkzPy1cstwYMcjktRoLGgPHjxW60Iq9+USjfwIDAQAB"


# instance fields
.field private context:Landroid/content/Context;

.field private iabValidator:Ltv/emby/iap/IabValidator;

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private oldUnlockPurchased:Z

.field private storeReady:Z

.field private webView:Lcom/mb/android/webviews/IWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/webviews/IWebView;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/mb/android/iap/IapManager;->webView:Lcom/mb/android/webviews/IWebView;

    .line 35
    iput-object p3, p0, Lcom/mb/android/iap/IapManager;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 36
    iput-object p1, p0, Lcom/mb/android/iap/IapManager;->context:Landroid/content/Context;

    return-void
.end method

.method private RespondToWebView(Ljava/lang/String;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/mb/android/iap/IapManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Sending url to webView: %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/mb/android/iap/IapManager;->webView:Lcom/mb/android/webviews/IWebView;

    invoke-interface {v0, p1}, Lcom/mb/android/webviews/IWebView;->sendJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/iap/IapManager;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mb/android/iap/IapManager;->getUnlockPrice()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/iap/IapManager;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/mb/android/iap/IapManager;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mb/android/iap/IapManager;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/mb/android/iap/IapManager;->oldUnlockPurchased:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mb/android/iap/IapManager;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mb/android/iap/IapManager;->getMonthlyPrice()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/mb/android/iap/IapManager;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/mb/android/iap/IapManager;->isPurchasedInternal(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mb/android/iap/IapManager;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/mb/android/iap/IapManager;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mb/android/iap/IapManager;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/mb/android/iap/IapManager;->storeReady:Z

    return p0
.end method

.method static synthetic access$602(Lcom/mb/android/iap/IapManager;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/mb/android/iap/IapManager;->storeReady:Z

    return p1
.end method

.method private getMonthlyPrice()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/iap/IapManager;->iabValidator:Ltv/emby/iap/IabValidator;

    invoke-virtual {v1}, Ltv/emby/iap/IabValidator;->getPremiereMonthly()Ltv/emby/iap/InAppProduct;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1}, Ltv/emby/iap/InAppProduct;->getPrice()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private getUnlockPrice()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/iap/IapManager;->iabValidator:Ltv/emby/iap/IabValidator;

    invoke-virtual {v1}, Ltv/emby/iap/IabValidator;->getUnlockProduct()Ltv/emby/iap/InAppProduct;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v1}, Ltv/emby/iap/InAppProduct;->getPrice()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private init()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/mb/android/iap/IapManager;->iabValidator:Ltv/emby/iap/IabValidator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltv/emby/iap/IabValidator;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ltv/emby/iap/IabValidator;

    iget-object v1, p0, Lcom/mb/android/iap/IapManager;->context:Landroid/content/Context;

    new-instance v2, Lcom/mb/android/iap/IapLogger;

    iget-object v3, p0, Lcom/mb/android/iap/IapManager;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v2, v3}, Lcom/mb/android/iap/IapLogger;-><init>(Lcom/mb/android/model/logging/ILogger;)V

    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk4MSP7wxlKaJwF066w7qQ+FvttXc+uSvUI5a+Lq+TT74Y1LTp0qg1+WRqou78WRK5cdfCr2m1N4LqttmYFfsWG/DBon98+ZFtaUbiP+Nx29YCkawE06hMyn0pONw/FnXB90mm0vGl7+fkpdYoUx1pit2DGoQweAZwmilW2jfPdi+YloSbX3SJlTXcgZIoAzIvY+qOinyuWIaRda5YcDfvson2yQC6XQOYqQ4ZOKhQxCSzaaQp3dLMCXlKPpsQNzFpVQsHLt4OntBMPkK3e/RxTE9AyhQYxofEzdKg/MHz1c3vCFIJCkzPy1cstwYMcjktRoLGgPHjxW60Iq9+USjfwIDAQAB"

    invoke-direct {v0, v1, v3, v2}, Ltv/emby/iap/IabValidator;-><init>(Landroid/content/Context;Ljava/lang/String;Ltv/emby/iap/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/iap/IapManager;->iabValidator:Ltv/emby/iap/IabValidator;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/mb/android/iap/IapManager;->iabValidator:Ltv/emby/iap/IabValidator;

    new-instance v1, Lcom/mb/android/iap/IapManager$3;

    invoke-direct {v1, p0}, Lcom/mb/android/iap/IapManager$3;-><init>(Lcom/mb/android/iap/IapManager;)V

    invoke-virtual {v0, v1}, Ltv/emby/iap/IabValidator;->validateProductsAsync(Ltv/emby/iap/IResultHandler;)V

    return-void
.end method

.method private isPurchasedInternal(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/mb/android/iap/IapManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Checking purchase status of %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/mb/android/iap/IapManager;->iabValidator:Ltv/emby/iap/IabValidator;

    new-instance v1, Lcom/mb/android/iap/IapManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mb/android/iap/IapManager$2;-><init>(Lcom/mb/android/iap/IapManager;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    invoke-virtual {v0, p1, v1}, Ltv/emby/iap/IabValidator;->checkInAppPurchase(Ljava/lang/String;Ltv/emby/iap/IResultHandler;)V

    return-void
.end method


# virtual methods
.method public getPremiereMonthly()Ltv/emby/iap/InAppProduct;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/mb/android/iap/IapManager;->iabValidator:Ltv/emby/iap/IabValidator;

    invoke-virtual {v0}, Ltv/emby/iap/IabValidator;->getPremiereMonthly()Ltv/emby/iap/InAppProduct;

    move-result-object v0

    return-object v0
.end method

.method public getPremiereMonthlySku()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 130
    sget-object v0, Lcom/mb/android/MainActivity;->AppPackageName:Ljava/lang/String;

    invoke-static {v0}, Ltv/emby/iap/InAppProduct;->getCurrentMonthlySku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPremiereWeekly()Ltv/emby/iap/InAppProduct;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mb/android/iap/IapManager;->iabValidator:Ltv/emby/iap/IabValidator;

    invoke-virtual {v0}, Ltv/emby/iap/IabValidator;->getPremiereWeekly()Ltv/emby/iap/InAppProduct;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseInfos(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mb/android/iap/IapManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getPurchaseInfos"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mb/android/MainActivity;->AppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".old"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/iap/InAppProduct;->getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {p0}, Lcom/mb/android/iap/IapManager;->getUnlockProductSku()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/mb/android/iap/IapManager;->getPremiereMonthlySku()Ljava/lang/String;

    move-result-object v6

    .line 48
    new-instance v7, Lcom/mb/android/iap/IapManager$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/mb/android/iap/IapManager$1;-><init>(Lcom/mb/android/iap/IapManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v7}, Lcom/mb/android/iap/IapManager;->isPurchasedInternal(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getUnlockProduct()Ltv/emby/iap/InAppProduct;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/mb/android/iap/IapManager;->iabValidator:Ltv/emby/iap/IabValidator;

    invoke-virtual {v0}, Ltv/emby/iap/IabValidator;->getUnlockProduct()Ltv/emby/iap/InAppProduct;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockProductSku()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 127
    sget-object v0, Lcom/mb/android/MainActivity;->AppPackageName:Ljava/lang/String;

    invoke-static {v0}, Ltv/emby/iap/InAppProduct;->getCurrentUnlockSku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initStore()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/mb/android/iap/IapManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "initStore called"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :try_start_0
    invoke-direct {p0}, Lcom/mb/android/iap/IapManager;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    iget-object v2, p0, Lcom/mb/android/iap/IapManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Error initializing store"

    invoke-interface {v2, v3, v0, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isOldUnlockPurchased()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 124
    iget-boolean v0, p0, Lcom/mb/android/iap/IapManager;->oldUnlockPurchased:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isStoreAvailable()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/mb/android/iap/IapManager;->storeReady:Z

    return v0
.end method
