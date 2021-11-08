.class Lcom/mb/android/iap/IapManager$1$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "IapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/iap/IapManager$1;->onResponse(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mb/android/iap/IapManager$1;


# direct methods
.method constructor <init>(Lcom/mb/android/iap/IapManager$1;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/mb/android/iap/IapManager$1$1;->this$1:Lcom/mb/android/iap/IapManager$1;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/mb/android/iap/IapManager$1$1;->this$1:Lcom/mb/android/iap/IapManager$1;

    iget-object v0, v0, Lcom/mb/android/iap/IapManager$1;->this$0:Lcom/mb/android/iap/IapManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/mb/android/iap/IapManager;->access$202(Lcom/mb/android/iap/IapManager;Z)Z

    .line 62
    iget-object p1, p0, Lcom/mb/android/iap/IapManager$1$1;->this$1:Lcom/mb/android/iap/IapManager$1;

    iget-object p1, p1, Lcom/mb/android/iap/IapManager$1;->this$0:Lcom/mb/android/iap/IapManager;

    iget-object v0, p0, Lcom/mb/android/iap/IapManager$1$1;->this$1:Lcom/mb/android/iap/IapManager$1;

    iget-object v0, v0, Lcom/mb/android/iap/IapManager$1;->val$monthlySubSku:Ljava/lang/String;

    new-instance v1, Lcom/mb/android/iap/IapManager$1$1$1;

    invoke-direct {v1, p0}, Lcom/mb/android/iap/IapManager$1$1$1;-><init>(Lcom/mb/android/iap/IapManager$1$1;)V

    invoke-static {p1, v0, v1}, Lcom/mb/android/iap/IapManager;->access$400(Lcom/mb/android/iap/IapManager;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mb/android/iap/IapManager$1$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method
