.class Ltv/emby/iap/IabValidator$2;
.super Ljava/lang/Object;
.source "IabValidator.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/IabValidator;->Connect(Ltv/emby/iap/IResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/IabValidator;

.field final synthetic val$response:Ltv/emby/iap/IResultHandler;


# direct methods
.method constructor <init>(Ltv/emby/iap/IabValidator;Ltv/emby/iap/IResultHandler;)V
    .locals 0

    .line 70
    iput-object p1, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    iput-object p2, p0, Ltv/emby/iap/IabValidator$2;->val$response:Ltv/emby/iap/IResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 3

    .line 88
    iget-object v0, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v0}, Ltv/emby/iap/IabValidator;->access$000(Ltv/emby/iap/IabValidator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBillingServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v2}, Ltv/emby/iap/IabValidator;->access$200(Ltv/emby/iap/IabValidator;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Not reconnecting because object disposed"

    goto :goto_0

    :cond_0
    const-string v2, "Re-connecting..."

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v0}, Ltv/emby/iap/IabValidator;->access$200(Ltv/emby/iap/IabValidator;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    iget-object v1, p0, Ltv/emby/iap/IabValidator$2;->val$response:Ltv/emby/iap/IResultHandler;

    invoke-virtual {v0, v1}, Ltv/emby/iap/IabValidator;->Connect(Ltv/emby/iap/IResultHandler;)V

    :cond_1
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object p1, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltv/emby/iap/IabValidator;->access$102(Ltv/emby/iap/IabValidator;Z)Z

    .line 76
    iget-object p1, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {p1}, Ltv/emby/iap/IabValidator;->access$000(Ltv/emby/iap/IabValidator;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onBillingSetupFinished: Connected to Google Play Services"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Ltv/emby/iap/IabValidator$2;->val$response:Ltv/emby/iap/IResultHandler;

    const-string v0, "OK"

    invoke-interface {p1, v0}, Ltv/emby/iap/IResultHandler;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    invoke-static {v0}, Ltv/emby/iap/IabValidator;->access$000(Ltv/emby/iap/IabValidator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBillingSetupFinished: Error Connecting to Google Play Services - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Ltv/emby/iap/IabValidator$2;->this$0:Ltv/emby/iap/IabValidator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/iap/IabValidator;->access$102(Ltv/emby/iap/IabValidator;Z)Z

    .line 82
    iget-object v0, p0, Ltv/emby/iap/IabValidator$2;->val$response:Ltv/emby/iap/IResultHandler;

    sget-object v1, Ltv/emby/iap/ErrorSeverity;->Critical:Ltv/emby/iap/ErrorSeverity;

    sget-object v2, Ltv/emby/iap/ErrorType;->UnableToConnectToStore:Ltv/emby/iap/ErrorType;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Ltv/emby/iap/IResultHandler;->onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
