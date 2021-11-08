.class public Lcom/mb/android/webviews/MySystemWebViewClient$SslResponse;
.super Lcom/mb/android/apiinteraction/Response;
.source "MySystemWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/webviews/MySystemWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SslResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/webkit/SslErrorHandler;

.field final synthetic this$0:Lcom/mb/android/webviews/MySystemWebViewClient;


# direct methods
.method public constructor <init>(Lcom/mb/android/webviews/MySystemWebViewClient;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mb/android/webviews/MySystemWebViewClient$SslResponse;->this$0:Lcom/mb/android/webviews/MySystemWebViewClient;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/mb/android/webviews/MySystemWebViewClient$SslResponse;->handler:Landroid/webkit/SslErrorHandler;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/mb/android/webviews/MySystemWebViewClient$SslResponse;->handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .locals 0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/mb/android/webviews/MySystemWebViewClient$SslResponse;->handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/mb/android/webviews/MySystemWebViewClient$SslResponse;->handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mb/android/webviews/MySystemWebViewClient$SslResponse;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method
