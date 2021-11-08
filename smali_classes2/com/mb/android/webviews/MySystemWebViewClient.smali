.class public Lcom/mb/android/webviews/MySystemWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MySystemWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/webviews/MySystemWebViewClient$SslResponse;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SystemWebChromeClient"


# instance fields
.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private mainActivity:Lcom/mb/android/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mb/android/webviews/MySystemWebViewClient;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 28
    iput-object p2, p0, Lcom/mb/android/webviews/MySystemWebViewClient;->mainActivity:Lcom/mb/android/MainActivity;

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 44
    iget-object p1, p0, Lcom/mb/android/webviews/MySystemWebViewClient;->mainActivity:Lcom/mb/android/MainActivity;

    new-instance v0, Lcom/mb/android/webviews/MySystemWebViewClient$SslResponse;

    invoke-direct {v0, p0, p2}, Lcom/mb/android/webviews/MySystemWebViewClient$SslResponse;-><init>(Lcom/mb/android/webviews/MySystemWebViewClient;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3, v0}, Lcom/mb/android/MainActivity;->handleSslError(Landroid/net/http/SslError;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4

    .line 33
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/mb/android/webviews/MySystemWebViewClient;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "MySystemWebViewClient.shouldOverrideUrlLoading %s %s %s"

    invoke-interface {v1, p1, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/mb/android/webviews/MySystemWebViewClient;->mainActivity:Lcom/mb/android/MainActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/mb/android/MainActivity;->launchIntent(Landroid/net/Uri;Ljava/lang/String;)Z

    return v3
.end method
