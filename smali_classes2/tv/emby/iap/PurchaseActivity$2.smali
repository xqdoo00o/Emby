.class Ltv/emby/iap/PurchaseActivity$2;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Ltv/emby/iap/IResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/PurchaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltv/emby/iap/IResultHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/iap/PurchaseActivity;

.field final synthetic val$validator:Ltv/emby/iap/IabValidator;


# direct methods
.method constructor <init>(Ltv/emby/iap/PurchaseActivity;Ltv/emby/iap/IabValidator;)V
    .locals 0

    .line 56
    iput-object p1, p0, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    iput-object p2, p0, Ltv/emby/iap/PurchaseActivity$2;->val$validator:Ltv/emby/iap/IabValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V
    .locals 0

    .line 111
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-static {p1}, Ltv/emby/iap/PurchaseActivity;->access$300(Ltv/emby/iap/PurchaseActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onError: Error connecting Google Play Service"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltv/emby/iap/PurchaseActivity;->setResult(I)V

    .line 113
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2;->this$0:Ltv/emby/iap/PurchaseActivity;

    invoke-virtual {p1}, Ltv/emby/iap/PurchaseActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/emby/iap/PurchaseActivity$2;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object p1, p0, Ltv/emby/iap/PurchaseActivity$2;->val$validator:Ltv/emby/iap/IabValidator;

    new-instance v0, Ltv/emby/iap/PurchaseActivity$2$1;

    invoke-direct {v0, p0}, Ltv/emby/iap/PurchaseActivity$2$1;-><init>(Ltv/emby/iap/PurchaseActivity$2;)V

    invoke-virtual {p1, v0}, Ltv/emby/iap/IabValidator;->validateProductsAsync(Ltv/emby/iap/IResultHandler;)V

    return-void
.end method
