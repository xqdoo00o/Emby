.class Lcom/mb/android/iap/IapManager$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "IapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/iap/IapManager;->getPurchaseInfos(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/mb/android/iap/IapManager;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$monthlySubSku:Ljava/lang/String;

.field final synthetic val$oldUnlockSku:Ljava/lang/String;

.field final synthetic val$unlockSku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/iap/IapManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mb/android/iap/IapManager$1;->this$0:Lcom/mb/android/iap/IapManager;

    iput-object p2, p0, Lcom/mb/android/iap/IapManager$1;->val$callback:Ljava/lang/String;

    iput-object p3, p0, Lcom/mb/android/iap/IapManager$1;->val$unlockSku:Ljava/lang/String;

    iput-object p4, p0, Lcom/mb/android/iap/IapManager$1;->val$oldUnlockSku:Ljava/lang/String;

    iput-object p5, p0, Lcom/mb/android/iap/IapManager$1;->val$monthlySubSku:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/mb/android/iap/IapManager$1;->this$0:Lcom/mb/android/iap/IapManager;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/iap/IapManager$1;->val$callback:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mb/android/iap/IapManager$1;->val$unlockSku:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0}, Lcom/mb/android/iap/IapManager;->access$000(Lcom/mb/android/iap/IapManager;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "%s(\"%s\", %s, \"%s\")"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mb/android/iap/IapManager;->access$100(Lcom/mb/android/iap/IapManager;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/mb/android/iap/IapManager$1;->this$0:Lcom/mb/android/iap/IapManager;

    iget-object v0, p0, Lcom/mb/android/iap/IapManager$1;->val$oldUnlockSku:Ljava/lang/String;

    new-instance v1, Lcom/mb/android/iap/IapManager$1$1;

    invoke-direct {v1, p0}, Lcom/mb/android/iap/IapManager$1$1;-><init>(Lcom/mb/android/iap/IapManager$1;)V

    invoke-static {p1, v0, v1}, Lcom/mb/android/iap/IapManager;->access$400(Lcom/mb/android/iap/IapManager;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mb/android/iap/IapManager$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method
