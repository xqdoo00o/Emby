.class Lcom/mb/android/iap/IapManager$1$1$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "IapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/iap/IapManager$1$1;->onResponse(Ljava/lang/Boolean;)V
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
.field final synthetic this$2:Lcom/mb/android/iap/IapManager$1$1;


# direct methods
.method constructor <init>(Lcom/mb/android/iap/IapManager$1$1;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mb/android/iap/IapManager$1$1$1;->this$2:Lcom/mb/android/iap/IapManager$1$1;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/mb/android/iap/IapManager$1$1$1;->this$2:Lcom/mb/android/iap/IapManager$1$1;

    iget-object v0, v0, Lcom/mb/android/iap/IapManager$1$1;->this$1:Lcom/mb/android/iap/IapManager$1;

    iget-object v0, v0, Lcom/mb/android/iap/IapManager$1;->this$0:Lcom/mb/android/iap/IapManager;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/iap/IapManager$1$1$1;->this$2:Lcom/mb/android/iap/IapManager$1$1;

    iget-object v2, v2, Lcom/mb/android/iap/IapManager$1$1;->this$1:Lcom/mb/android/iap/IapManager$1;

    iget-object v2, v2, Lcom/mb/android/iap/IapManager$1;->val$callback:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mb/android/iap/IapManager$1$1$1;->this$2:Lcom/mb/android/iap/IapManager$1$1;

    iget-object v2, v2, Lcom/mb/android/iap/IapManager$1$1;->this$1:Lcom/mb/android/iap/IapManager$1;

    iget-object v2, v2, Lcom/mb/android/iap/IapManager$1;->val$monthlySubSku:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/mb/android/iap/IapManager$1$1$1;->this$2:Lcom/mb/android/iap/IapManager$1$1;

    iget-object p1, p1, Lcom/mb/android/iap/IapManager$1$1;->this$1:Lcom/mb/android/iap/IapManager$1;

    iget-object p1, p1, Lcom/mb/android/iap/IapManager$1;->this$0:Lcom/mb/android/iap/IapManager;

    invoke-static {p1}, Lcom/mb/android/iap/IapManager;->access$300(Lcom/mb/android/iap/IapManager;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "%s(\"%s\", %s, \"%s\")"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mb/android/iap/IapManager;->access$100(Lcom/mb/android/iap/IapManager;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mb/android/iap/IapManager$1$1$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method
