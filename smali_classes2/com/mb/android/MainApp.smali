.class public Lcom/mb/android/MainApp;
.super Landroid/app/Application;
.source "MainApp.java"


# instance fields
.field private connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

.field private exoDownloadHelper:Lcom/mb/android/download/exo/ExoDownloadHelper;

.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mb/android/MainApp;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-direct {v0, p0}, Lcom/mb/android/apiinteraction/android/ConnectionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mb/android/MainApp;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/mb/android/MainApp;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    return-object v0
.end method

.method public declared-synchronized getExoDownloadHelper()Lcom/mb/android/download/exo/ExoDownloadHelper;
    .locals 2

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/MainApp;->exoDownloadHelper:Lcom/mb/android/download/exo/ExoDownloadHelper;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/mb/android/download/exo/ExoDownloadHelper;

    invoke-virtual {p0}, Lcom/mb/android/MainApp;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mb/android/download/exo/ExoDownloadHelper;-><init>(Landroid/content/Context;Lokhttp3/OkHttpClient;)V

    iput-object v0, p0, Lcom/mb/android/MainApp;->exoDownloadHelper:Lcom/mb/android/download/exo/ExoDownloadHelper;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/mb/android/MainApp;->exoDownloadHelper:Lcom/mb/android/download/exo/ExoDownloadHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/mb/android/MainApp;->okHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 54
    :try_start_0
    new-instance v1, Lcom/mb/android/networking/CertificateManager;

    invoke-direct {v1, p0}, Lcom/mb/android/networking/CertificateManager;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v1}, Lcom/mb/android/networking/CertificateManager;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mb/android/networking/CertificateManager;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 56
    invoke-virtual {v1}, Lcom/mb/android/networking/CertificateManager;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 57
    invoke-virtual {v1}, Lcom/mb/android/networking/CertificateManager;->setDefaultTrustedCertificateAuthorities()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :goto_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/MainApp;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/mb/android/MainApp;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 26
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "com.mb.android"

    .line 30
    invoke-static {v0}, Lnet/gotev/uploadservice/UploadServiceConfig;->setNamespace(Ljava/lang/String;)V

    const-wide/16 v0, 0xfa

    .line 31
    invoke-static {v0, v1}, Lnet/gotev/uploadservice/UploadServiceConfig;->setUploadProgressNotificationIntervalMillis(J)V

    .line 33
    new-instance v0, Lnet/gotev/uploadservice/okhttp/OkHttpStack;

    invoke-virtual {p0}, Lcom/mb/android/MainApp;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/okhttp/OkHttpStack;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-static {v0}, Lnet/gotev/uploadservice/UploadServiceConfig;->setHttpStack(Lnet/gotev/uploadservice/network/HttpStack;)V

    return-void
.end method
