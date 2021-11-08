.class Ltv/emby/iap/IabValidator$5;
.super Ljava/lang/Object;
.source "IabValidator.java"

# interfaces
.implements Ltv/emby/iap/IResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/iap/IabValidator;->validateProductsAsync(Ltv/emby/iap/IResultHandler;)V
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
.field final synthetic this$0:Ltv/emby/iap/IabValidator;

.field final synthetic val$resultHandler:Ltv/emby/iap/IResultHandler;


# direct methods
.method constructor <init>(Ltv/emby/iap/IabValidator;Ltv/emby/iap/IResultHandler;)V
    .locals 0

    .line 148
    iput-object p1, p0, Ltv/emby/iap/IabValidator$5;->this$0:Ltv/emby/iap/IabValidator;

    iput-object p2, p0, Ltv/emby/iap/IabValidator$5;->val$resultHandler:Ltv/emby/iap/IResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V
    .locals 1

    .line 156
    iget-object v0, p0, Ltv/emby/iap/IabValidator$5;->val$resultHandler:Ltv/emby/iap/IResultHandler;

    invoke-interface {v0, p1, p2, p3}, Ltv/emby/iap/IResultHandler;->onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 148
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/emby/iap/IabValidator$5;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object p1, p0, Ltv/emby/iap/IabValidator$5;->this$0:Ltv/emby/iap/IabValidator;

    iget-object v0, p0, Ltv/emby/iap/IabValidator$5;->val$resultHandler:Ltv/emby/iap/IResultHandler;

    invoke-static {p1, v0}, Ltv/emby/iap/IabValidator;->access$500(Ltv/emby/iap/IabValidator;Ltv/emby/iap/IResultHandler;)V

    return-void
.end method
