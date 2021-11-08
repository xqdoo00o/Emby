.class public Lcom/mb/android/networking/CertificateManager;
.super Ljava/lang/Object;
.source "CertificateManager.java"


# static fields
.field private static final CERT_STORE:Ljava/lang/String; = "cert.keystore"

.field private static final CERT_STORE_PASS:Ljava/lang/String; = "__SSAP_EROTS_TREC__"


# instance fields
.field private final context:Landroid/content/Context;

.field private final keyStore:Ljava/security/KeyStore;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/mb/android/networking/CertificateManager;->context:Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lcom/mb/android/networking/CertificateManager;->initKeyStore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/networking/CertificateManager;->keyStore:Ljava/security/KeyStore;

    return-void
.end method

.method private getSSLSocketFactoryTrustManagerPair()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/mb/android/networking/CertificateManager;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mb/android/networking/CertificateManager;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mb/android/networking/CertificateManager;->keyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lcom/mb/android/networking/CompositeX509TrustManager;->getCompositeTrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/networking/CertificateManager;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    const-string v0, "TLS"

    .line 88
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    .line 89
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mb/android/networking/CertificateManager;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 91
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/networking/CertificateManager;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 94
    :cond_1
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/mb/android/networking/CertificateManager;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p0, Lcom/mb/android/networking/CertificateManager;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getX509Certificate(Landroid/net/http/SslCertificate;)Ljava/security/cert/Certificate;
    .locals 3

    .line 113
    invoke-static {p1}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "x509-certificate"

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 119
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 120
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private initKeyStore(Landroid/content/Context;)Ljava/security/KeyStore;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const-string v1, "cert.keystore"

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-nez v8, :cond_1

    .line 52
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 55
    :cond_0
    invoke-virtual {v0, v5}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    :try_start_0
    const-string v1, "__SSAP_EROTS_TREC__"

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_2
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 58
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v5, :cond_3

    .line 60
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {v5, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_4
    :goto_2
    throw v0
.end method


# virtual methods
.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    .line 107
    new-instance v0, Lcom/mb/android/networking/CompositeHostnameVerifier;

    iget-object v1, p0, Lcom/mb/android/networking/CertificateManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mb/android/networking/CompositeHostnameVerifier;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/mb/android/networking/CertificateManager;->getSSLSocketFactoryTrustManagerPair()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/mb/android/networking/CertificateManager;->getSSLSocketFactoryTrustManagerPair()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public setDefaultTrustedCertificateAuthorities()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/mb/android/networking/CertificateManager;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 129
    invoke-virtual {p0}, Lcom/mb/android/networking/CertificateManager;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public storeSSLCertificate(Ljava/lang/String;Landroid/net/http/SslCertificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p2}, Lcom/mb/android/networking/CertificateManager;->getX509Certificate(Landroid/net/http/SslCertificate;)Ljava/security/cert/Certificate;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/mb/android/networking/CertificateManager;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 71
    iget-object p1, p0, Lcom/mb/android/networking/CertificateManager;->context:Landroid/content/Context;

    const/4 p2, 0x0

    const-string v0, "cert.keystore"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    const/4 p2, 0x0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/networking/CertificateManager;->keyStore:Ljava/security/KeyStore;

    const-string v1, "__SSAP_EROTS_TREC__"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 75
    :cond_1
    iput-object p2, p0, Lcom/mb/android/networking/CertificateManager;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 76
    iput-object p2, p0, Lcom/mb/android/networking/CertificateManager;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 78
    invoke-virtual {p0}, Lcom/mb/android/networking/CertificateManager;->setDefaultTrustedCertificateAuthorities()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 71
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 73
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    :goto_1
    throw v0
.end method
