.class public interface abstract Lcom/mb/android/webviews/IWebView;
.super Ljava/lang/Object;
.source "IWebView.java"

# interfaces
.implements Lcom/mb/android/webviews/ISendJavaScript;


# virtual methods
.method public abstract addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract canGoBack()Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getCurrentCertificate()Landroid/net/http/SslCertificate;
.end method

.method public abstract getURL()Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract goBack()Z
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
.end method

.method public abstract onResume()V
.end method

.method public abstract sendJavascriptEvent(Ljava/lang/String;)V
.end method
