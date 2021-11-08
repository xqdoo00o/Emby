.class public Ltv/emby/iap/PurchaseActivity;
.super Landroid/app/Activity;
.source "PurchaseActivity.java"


# static fields
.field public static Logger:Ltv/emby/iap/ILogger;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private check:Ljava/lang/String;

.field private sku:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ltv/emby/iap/LogcatLogger;

    invoke-direct {v0}, Ltv/emby/iap/LogcatLogger;-><init>()V

    sput-object v0, Ltv/emby/iap/PurchaseActivity;->Logger:Ltv/emby/iap/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "PurchaseActivity"

    .line 27
    iput-object v0, p0, Ltv/emby/iap/PurchaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ltv/emby/iap/PurchaseActivity;Ltv/emby/iap/IabValidator;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Ltv/emby/iap/PurchaseActivity;->processPurchaseResult(Ltv/emby/iap/IabValidator;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

.method static synthetic access$100(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Ltv/emby/iap/PurchaseActivity;->sku:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ltv/emby/iap/PurchaseActivity;)Landroid/app/Activity;
    .locals 0

    .line 25
    iget-object p0, p0, Ltv/emby/iap/PurchaseActivity;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Ltv/emby/iap/PurchaseActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private processPurchaseResult(Ltv/emby/iap/IabValidator;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    .line 123
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p2

    if-ne p2, v2, :cond_4

    .line 132
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result p2

    if-nez p2, :cond_1

    .line 134
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p2

    .line 135
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p2

    .line 136
    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p2

    .line 137
    invoke-virtual {p1}, Ltv/emby/iap/IabValidator;->getBillingClient()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    new-instance v0, Ltv/emby/iap/PurchaseActivity$3;

    invoke-direct {v0, p0, p3}, Ltv/emby/iap/PurchaseActivity$3;-><init>(Ltv/emby/iap/PurchaseActivity;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {p0, v1}, Ltv/emby/iap/PurchaseActivity;->setResult(I)V

    .line 150
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 125
    invoke-virtual {p0}, Ltv/emby/iap/PurchaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error completing purchase. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 128
    :cond_3
    invoke-virtual {p0, v1}, Ltv/emby/iap/PurchaseActivity;->setResult(I)V

    .line 129
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Ltv/emby/iap/PurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "googleKey"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "sku"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/emby/iap/PurchaseActivity;->sku:Ljava/lang/String;

    .line 42
    iput-object p0, p0, Ltv/emby/iap/PurchaseActivity;->activity:Landroid/app/Activity;

    .line 45
    invoke-static {p0}, Ltv/emby/iap/IabValidator;->getInstance(Landroid/content/Context;)Ltv/emby/iap/IabValidator;

    move-result-object p1

    .line 48
    new-instance v0, Ltv/emby/iap/PurchaseActivity$1;

    invoke-direct {v0, p0, p1}, Ltv/emby/iap/PurchaseActivity$1;-><init>(Ltv/emby/iap/PurchaseActivity;Ltv/emby/iap/IabValidator;)V

    invoke-virtual {p1, p0, v0}, Ltv/emby/iap/IabValidator;->setPurchaseListener(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    .line 56
    new-instance v0, Ltv/emby/iap/PurchaseActivity$2;

    invoke-direct {v0, p0, p1}, Ltv/emby/iap/PurchaseActivity$2;-><init>(Ltv/emby/iap/PurchaseActivity;Ltv/emby/iap/IabValidator;)V

    invoke-virtual {p1, v0}, Ltv/emby/iap/IabValidator;->Connect(Ltv/emby/iap/IResultHandler;)V

    return-void
.end method
