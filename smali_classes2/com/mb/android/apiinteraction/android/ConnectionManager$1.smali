.class Lcom/mb/android/apiinteraction/android/ConnectionManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/apiinteraction/android/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastNetworkType:I

.field final synthetic this$0:Lcom/mb/android/apiinteraction/android/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/mb/android/apiinteraction/android/ConnectionManager;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager$1;->this$0:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private onNetworkChanged()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager$1;->this$0:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-static {v0}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->access$000(Lcom/mb/android/apiinteraction/android/ConnectionManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 141
    :goto_0
    iget v3, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager$1;->lastNetworkType:I

    if-eq v2, v3, :cond_1

    .line 142
    iput v2, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager$1;->lastNetworkType:I

    .line 143
    iget-object v3, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager$1;->this$0:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-static {v3}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->access$100(Lcom/mb/android/apiinteraction/android/ConnectionManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mb/android/apiinteraction/ApiClient;

    .line 144
    invoke-virtual {v4}, Lcom/mb/android/apiinteraction/ApiClient;->onNetworkChanged()V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    return-void

    .line 151
    :cond_2
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v3, p0, Lcom/mb/android/apiinteraction/android/ConnectionManager$1;->this$0:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-static {v3}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->access$200(Lcom/mb/android/apiinteraction/android/ConnectionManager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getCameraUploadOnlyOnWifi()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 154
    invoke-static {}, Lcom/mb/android/sync/AndroidUploadManager;->cancelAllUploads()V

    :cond_4
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    invoke-direct {p0}, Lcom/mb/android/apiinteraction/android/ConnectionManager$1;->onNetworkChanged()V

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/mb/android/apiinteraction/android/ConnectionManager$1;->onNetworkChanged()V

    return-void
.end method
