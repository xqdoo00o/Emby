.class Lcom/mb/android/MainActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/mb/android/MainActivity$4;->this$0:Lcom/mb/android/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 529
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "beforePlayVideo"

    .line 531
    invoke-static {p1, v0}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "mediaSource"

    .line 533
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 534
    iget-object p2, p0, Lcom/mb/android/MainActivity$4;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p2}, Lcom/mb/android/MainActivity;->access$300(Lcom/mb/android/MainActivity;)Lcom/mb/android/model/serialization/IJsonSerializer;

    move-result-object p2

    const-class v0, Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-interface {p2, p1, v0}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mb/android/model/dto/MediaSourceInfo;

    .line 535
    iget-object p2, p0, Lcom/mb/android/MainActivity$4;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p2, p1}, Lcom/mb/android/MainActivity;->access$400(Lcom/mb/android/MainActivity;Lcom/mb/android/model/dto/MediaSourceInfo;)V

    goto :goto_0

    :cond_0
    const-string v0, "videoDestroy"

    .line 537
    invoke-static {p1, v0}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object p1, p0, Lcom/mb/android/MainActivity$4;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$500(Lcom/mb/android/MainActivity;)V

    goto :goto_0

    :cond_1
    const-string v0, "FcmData"

    .line 539
    invoke-static {p1, v0}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iget-object p1, p0, Lcom/mb/android/MainActivity$4;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1, p2}, Lcom/mb/android/MainActivity;->access$600(Lcom/mb/android/MainActivity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string p2, "verifyCurrentCertificate"

    .line 541
    invoke-static {p1, p2}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 542
    iget-object p1, p0, Lcom/mb/android/MainActivity$4;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$700(Lcom/mb/android/MainActivity;)Lcom/mb/android/webviews/IWebView;

    move-result-object p1

    invoke-interface {p1}, Lcom/mb/android/webviews/IWebView;->getCurrentCertificate()Landroid/net/http/SslCertificate;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 546
    :cond_3
    new-instance p2, Landroid/net/http/SslError;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mb/android/MainActivity$4;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v1}, Lcom/mb/android/MainActivity;->access$700(Lcom/mb/android/MainActivity;)Lcom/mb/android/webviews/IWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/mb/android/webviews/IWebView;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;Ljava/lang/String;)V

    .line 547
    iget-object p1, p0, Lcom/mb/android/MainActivity$4;->this$0:Lcom/mb/android/MainActivity;

    new-instance v0, Lcom/mb/android/MainActivity$4$1;

    invoke-direct {v0, p0}, Lcom/mb/android/MainActivity$4$1;-><init>(Lcom/mb/android/MainActivity$4;)V

    invoke-virtual {p1, p2, v0}, Lcom/mb/android/MainActivity;->handleSslError(Landroid/net/http/SslError;Lcom/mb/android/apiinteraction/Response;)V

    :cond_4
    :goto_0
    return-void
.end method
