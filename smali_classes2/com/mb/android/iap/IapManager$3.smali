.class Lcom/mb/android/iap/IapManager$3;
.super Ljava/lang/Object;
.source "IapManager.java"

# interfaces
.implements Ltv/emby/iap/IResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/iap/IapManager;->init()V
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


# direct methods
.method constructor <init>(Lcom/mb/android/iap/IapManager;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/mb/android/iap/IapManager$3;->this$0:Lcom/mb/android/iap/IapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/emby/iap/ErrorSeverity;Ltv/emby/iap/ErrorType;Ljava/lang/String;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/mb/android/iap/IapManager$3;->this$0:Lcom/mb/android/iap/IapManager;

    invoke-static {p1}, Lcom/mb/android/iap/IapManager;->access$500(Lcom/mb/android/iap/IapManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error intializing IAP Manager. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 155
    check-cast p1, Ltv/emby/iap/ResultType;

    invoke-virtual {p0, p1}, Lcom/mb/android/iap/IapManager$3;->onResult(Ltv/emby/iap/ResultType;)V

    return-void
.end method

.method public onResult(Ltv/emby/iap/ResultType;)V
    .locals 2

    .line 159
    iget-object p1, p0, Lcom/mb/android/iap/IapManager$3;->this$0:Lcom/mb/android/iap/IapManager;

    invoke-static {p1}, Lcom/mb/android/iap/IapManager;->access$600(Lcom/mb/android/iap/IapManager;)Z

    move-result p1

    .line 160
    iget-object v0, p0, Lcom/mb/android/iap/IapManager$3;->this$0:Lcom/mb/android/iap/IapManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mb/android/iap/IapManager;->access$602(Lcom/mb/android/iap/IapManager;Z)Z

    if-nez p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/mb/android/iap/IapManager$3;->this$0:Lcom/mb/android/iap/IapManager;

    const-string v0, "IapManager.onStoreReady();"

    invoke-static {p1, v0}, Lcom/mb/android/iap/IapManager;->access$100(Lcom/mb/android/iap/IapManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
