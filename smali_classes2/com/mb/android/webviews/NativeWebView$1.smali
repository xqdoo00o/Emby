.class Lcom/mb/android/webviews/NativeWebView$1;
.super Ljava/lang/Object;
.source "NativeWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/webviews/NativeWebView;->sendJavaScript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/webviews/NativeWebView;

.field final synthetic val$javascript:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/webviews/NativeWebView;Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/mb/android/webviews/NativeWebView$1;->this$0:Lcom/mb/android/webviews/NativeWebView;

    iput-object p2, p0, Lcom/mb/android/webviews/NativeWebView$1;->val$javascript:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mb/android/webviews/NativeWebView$1;->this$0:Lcom/mb/android/webviews/NativeWebView;

    invoke-static {v0}, Lcom/mb/android/webviews/NativeWebView;->access$000(Lcom/mb/android/webviews/NativeWebView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/webviews/NativeWebView$1;->val$javascript:Ljava/lang/String;

    new-instance v2, Lcom/mb/android/EmptyStringCallback;

    invoke-direct {v2}, Lcom/mb/android/EmptyStringCallback;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mb/android/webviews/NativeWebView$1;->val$javascript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/mb/android/webviews/NativeWebView$1;->this$0:Lcom/mb/android/webviews/NativeWebView;

    invoke-static {v1}, Lcom/mb/android/webviews/NativeWebView;->access$000(Lcom/mb/android/webviews/NativeWebView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
