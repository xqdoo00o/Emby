.class public Lcom/mb/android/networking/CompositeHostnameVerifier;
.super Lorg/apache/http/conn/ssl/AbstractVerifier;
.source "CompositeHostnameVerifier.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final strictHostnameVerifier:Lorg/apache/http/conn/ssl/StrictHostnameVerifier;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AbstractVerifier;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mb/android/networking/CompositeHostnameVerifier;->context:Landroid/content/Context;

    .line 20
    new-instance p1, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {p1}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    iput-object p1, p0, Lcom/mb/android/networking/CompositeHostnameVerifier;->strictHostnameVerifier:Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/networking/CompositeHostnameVerifier;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 28
    iget-object v1, p0, Lcom/mb/android/networking/CompositeHostnameVerifier;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mb/android/sync/AppSettings;->getAceptedCertificates(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Lcom/mb/android/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return-void

    .line 32
    :cond_0
    array-length v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p2, v4

    .line 33
    invoke-static {v0, v5}, Lcom/mb/android/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37
    :cond_2
    array-length v1, p3

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, p3, v3

    .line 38
    invoke-static {v0, v4}, Lcom/mb/android/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/mb/android/networking/CompositeHostnameVerifier;->strictHostnameVerifier:Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
