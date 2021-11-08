.class Lcom/mb/android/MainActivity$13$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Ljava/util/ArrayList<",
        "Lcom/mb/android/model/apiclient/ServerDiscoveryInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mb/android/MainActivity$13;


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity$13;)V
    .locals 0

    .line 1799
    iput-object p1, p0, Lcom/mb/android/MainActivity$13$1;->this$1:Lcom/mb/android/MainActivity$13;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 1810
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity$13$1;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1799
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity$13$1;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/apiclient/ServerDiscoveryInfo;",
            ">;)V"
        }
    .end annotation

    .line 1804
    new-instance v0, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1805
    iget-object v0, p0, Lcom/mb/android/MainActivity$13$1;->this$1:Lcom/mb/android/MainActivity$13;

    iget-object v0, v0, Lcom/mb/android/MainActivity$13;->this$0:Lcom/mb/android/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.ServerDiscoveryCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method
