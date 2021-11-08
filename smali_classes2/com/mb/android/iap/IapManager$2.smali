.class Lcom/mb/android/iap/IapManager$2;
.super Ljava/lang/Object;
.source "IapManager.java"

# interfaces
.implements Ltv/emby/iap/IResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/iap/IapManager;->isPurchasedInternal(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltv/emby/iap/IResultHandler<",
        "Ltv/emby/iap/ResultType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/iap/IapManager;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$response:Lcom/mb/android/apiinteraction/Response;


# direct methods
.method constructor <init>(Lcom/mb/android/iap/IapManager;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/mb/android/iap/IapManager$2;->this$0:Lcom/mb/android/iap/IapManager;

    iput-object p2, p0, Lcom/mb/android/iap/IapManager$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/mb/android/iap/IapManager$2;->val$response:Lcom/mb/android/apiinteraction/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/mb/android/iap/IapManager$2;->this$0:Lcom/mb/android/iap/IapManager;

    invoke-static {p1}, Lcom/mb/android/iap/IapManager;->access$500(Lcom/mb/android/iap/IapManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mb/android/iap/IapManager$2;->val$id:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const-string p3, "*** IsPurchased Error %s %s"

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Ltv/emby/iap/ResultType;

    invoke-virtual {p0, p1}, Lcom/mb/android/iap/IapManager$2;->onResult(Ltv/emby/iap/ResultType;)V

    return-void
.end method

.method public onResult(Ltv/emby/iap/ResultType;)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/mb/android/iap/IapManager$2;->this$0:Lcom/mb/android/iap/IapManager;

    invoke-static {v0}, Lcom/mb/android/iap/IapManager;->access$500(Lcom/mb/android/iap/IapManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/iap/IapManager$2;->val$id:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "*** IsPurchased Result: %s %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/mb/android/iap/IapManager$2;->val$response:Lcom/mb/android/apiinteraction/Response;

    sget-object v1, Ltv/emby/iap/ResultType;->Success:Ltv/emby/iap/ResultType;

    invoke-virtual {p1, v1}, Ltv/emby/iap/ResultType;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
