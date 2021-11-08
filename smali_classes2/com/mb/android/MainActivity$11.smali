.class Lcom/mb/android/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity;->handleSslError(Landroid/net/http/SslError;Lcom/mb/android/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/MainActivity;

.field final synthetic val$appSettings:Lcom/mb/android/sync/AppSettings;

.field final synthetic val$cert:Landroid/net/http/SslCertificate;

.field final synthetic val$certManager:Lcom/mb/android/networking/CertificateManager;

.field final synthetic val$response:Lcom/mb/android/apiinteraction/Response;

.field final synthetic val$results:Ljava/lang/String;

.field final synthetic val$srch:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity;Lcom/mb/android/sync/AppSettings;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/networking/CertificateManager;Landroid/net/http/SslCertificate;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 1735
    iput-object p1, p0, Lcom/mb/android/MainActivity$11;->this$0:Lcom/mb/android/MainActivity;

    iput-object p2, p0, Lcom/mb/android/MainActivity$11;->val$appSettings:Lcom/mb/android/sync/AppSettings;

    iput-object p3, p0, Lcom/mb/android/MainActivity$11;->val$results:Ljava/lang/String;

    iput-object p4, p0, Lcom/mb/android/MainActivity$11;->val$srch:Ljava/lang/String;

    iput-object p5, p0, Lcom/mb/android/MainActivity$11;->val$certManager:Lcom/mb/android/networking/CertificateManager;

    iput-object p6, p0, Lcom/mb/android/MainActivity$11;->val$cert:Landroid/net/http/SslCertificate;

    iput-object p7, p0, Lcom/mb/android/MainActivity$11;->val$response:Lcom/mb/android/apiinteraction/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1739
    iget-object p1, p0, Lcom/mb/android/MainActivity$11;->val$appSettings:Lcom/mb/android/sync/AppSettings;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mb/android/MainActivity$11;->val$results:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mb/android/MainActivity$11;->val$srch:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/sync/AppSettings;->setAcceptedCertificates(Ljava/lang/String;)V

    .line 1740
    iget-object p1, p0, Lcom/mb/android/MainActivity$11;->val$certManager:Lcom/mb/android/networking/CertificateManager;

    if-eqz p1, :cond_0

    .line 1742
    :try_start_0
    iget-object p2, p0, Lcom/mb/android/MainActivity$11;->val$srch:Ljava/lang/String;

    iget-object v0, p0, Lcom/mb/android/MainActivity$11;->val$cert:Landroid/net/http/SslCertificate;

    invoke-virtual {p1, p2, v0}, Lcom/mb/android/networking/CertificateManager;->storeSSLCertificate(Ljava/lang/String;Landroid/net/http/SslCertificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1744
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1748
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mb/android/MainActivity$11;->val$response:Lcom/mb/android/apiinteraction/Response;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
