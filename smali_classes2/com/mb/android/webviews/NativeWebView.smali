.class public Lcom/mb/android/webviews/NativeWebView;
.super Ljava/lang/Object;
.source "NativeWebView.java"

# interfaces
.implements Lcom/mb/android/webviews/IWebView;


# instance fields
.field private keyDispatcher:Lcom/mb/android/webviews/WebViewKeyDispatcher;

.field private loaded:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/MainActivity;Landroid/view/ViewGroup;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/mb/android/webviews/WebViewKeyDispatcher;

    invoke-direct {v0, p1, p0}, Lcom/mb/android/webviews/WebViewKeyDispatcher;-><init>(Landroid/content/Context;Lcom/mb/android/webviews/IWebView;)V

    iput-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->keyDispatcher:Lcom/mb/android/webviews/WebViewKeyDispatcher;

    .line 35
    new-instance v0, Lcom/mb/android/webviews/MySystemWebView;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/mb/android/webviews/MySystemWebView;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/MainActivity;Lcom/mb/android/webviews/IWebView;)V

    iput-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    .line 37
    iget-object p1, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object p1, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p2, p3, p3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {p0}, Lcom/mb/android/webviews/NativeWebView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/webviews/NativeWebView;)Landroid/webkit/WebView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private initWebViewSettings()V
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 201
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 207
    iget-object v3, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-static {v3, v4, v0}, Lcom/mb/android/webviews/NativeWebView;->setCommonSettings(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebSettings;)V

    .line 209
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 210
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 212
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 214
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 215
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 217
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 218
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    return-void
.end method

.method public static setCommonSettings(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebSettings;)V
    .locals 2

    .line 146
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p1, 0x0

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    .line 148
    :try_start_0
    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 152
    :cond_0
    :goto_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_1

    .line 153
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    :cond_1
    const/4 p0, 0x1

    .line 156
    invoke-virtual {p2, p0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 159
    invoke-virtual {p2, p0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 162
    :cond_2
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 176
    invoke-virtual {p2, p0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 179
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 185
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 190
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 191
    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public getCurrentCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/mb/android/webviews/NativeWebView;->initWebViewSettings()V

    .line 50
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 52
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/mb/android/webviews/NativeWebView;->loaded:Z

    return-void
.end method

.method public onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->keyDispatcher:Lcom/mb/android/webviews/WebViewKeyDispatcher;

    invoke-virtual {v0, p1}, Lcom/mb/android/webviews/WebViewKeyDispatcher;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method public sendJavaScript(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mb/android/webviews/NativeWebView$1;

    invoke-direct {v1, p0, p1}, Lcom/mb/android/webviews/NativeWebView$1;-><init>(Lcom/mb/android/webviews/NativeWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendJavascriptEvent(Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-boolean v0, p0, Lcom/mb/android/webviews/NativeWebView;->loaded:Z

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "document.dispatchEvent(new CustomEvent(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",{}));"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mb/android/webviews/NativeWebView;->sendJavaScript(Ljava/lang/String;)V

    return-void
.end method
