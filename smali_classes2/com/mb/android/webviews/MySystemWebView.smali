.class public Lcom/mb/android/webviews/MySystemWebView;
.super Landroid/webkit/WebView;
.source "MySystemWebView.java"


# instance fields
.field private final activity:Lcom/mb/android/MainActivity;

.field private engine:Lcom/mb/android/webviews/IWebView;

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/MainActivity;Lcom/mb/android/webviews/IWebView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/mb/android/webviews/MySystemWebView;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/mb/android/webviews/MySystemWebView;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 29
    iput-object p3, p0, Lcom/mb/android/webviews/MySystemWebView;->activity:Lcom/mb/android/MainActivity;

    .line 30
    iput-object p4, p0, Lcom/mb/android/webviews/MySystemWebView;->engine:Lcom/mb/android/webviews/IWebView;

    .line 32
    invoke-virtual {p0}, Lcom/mb/android/webviews/MySystemWebView;->CreateSystemWebViewClient()Lcom/mb/android/webviews/MySystemWebViewClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/webviews/MySystemWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 33
    invoke-virtual {p0}, Lcom/mb/android/webviews/MySystemWebView;->CreateChromeClient()Lcom/mb/android/webviews/MySystemWebChromeClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/webviews/MySystemWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method public CreateChromeClient()Lcom/mb/android/webviews/MySystemWebChromeClient;
    .locals 3

    .line 37
    new-instance v0, Lcom/mb/android/webviews/MySystemWebChromeClient;

    iget-object v1, p0, Lcom/mb/android/webviews/MySystemWebView;->logger:Lcom/mb/android/model/logging/ILogger;

    iget-object v2, p0, Lcom/mb/android/webviews/MySystemWebView;->activity:Lcom/mb/android/MainActivity;

    invoke-direct {v0, v1, v2}, Lcom/mb/android/webviews/MySystemWebChromeClient;-><init>(Lcom/mb/android/model/logging/ILogger;Landroid/app/Activity;)V

    return-object v0
.end method

.method public CreateSystemWebViewClient()Lcom/mb/android/webviews/MySystemWebViewClient;
    .locals 3

    .line 41
    new-instance v0, Lcom/mb/android/webviews/MySystemWebViewClient;

    iget-object v1, p0, Lcom/mb/android/webviews/MySystemWebView;->logger:Lcom/mb/android/model/logging/ILogger;

    iget-object v2, p0, Lcom/mb/android/webviews/MySystemWebView;->activity:Lcom/mb/android/MainActivity;

    invoke-direct {v0, v1, v2}, Lcom/mb/android/webviews/MySystemWebViewClient;-><init>(Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/MainActivity;)V

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mb/android/webviews/MySystemWebView;->engine:Lcom/mb/android/webviews/IWebView;

    invoke-interface {v0, p1}, Lcom/mb/android/webviews/IWebView;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 50
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
