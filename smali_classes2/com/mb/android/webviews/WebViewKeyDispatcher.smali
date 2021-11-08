.class public Lcom/mb/android/webviews/WebViewKeyDispatcher;
.super Ljava/lang/Object;
.source "WebViewKeyDispatcher.java"


# instance fields
.field private isLongPress:Z

.field private mContext:Landroid/content/Context;

.field private webView:Lcom/mb/android/webviews/IWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/webviews/IWebView;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/mb/android/webviews/WebViewKeyDispatcher;->isLongPress:Z

    .line 17
    iput-object p1, p0, Lcom/mb/android/webviews/WebViewKeyDispatcher;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/mb/android/webviews/WebViewKeyDispatcher;->webView:Lcom/mb/android/webviews/IWebView;

    return-void
.end method

.method private getCommand(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x52

    if-eq p1, v0, :cond_6

    const/16 v0, 0x82

    if-eq p1, v0, :cond_5

    const/16 v0, 0xac

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_3

    const/16 v0, 0xde

    if-eq p1, v0, :cond_2

    const/16 v0, 0xff

    if-eq p1, v0, :cond_1

    const/16 v0, 0x101

    const-string v1, "info"

    if-eq p1, v0, :cond_0

    const-string v0, "stop"

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "channeldown"

    return-object p1

    :pswitch_1
    const-string p1, "channelup"

    return-object p1

    :pswitch_2
    return-object v1

    :pswitch_3
    return-object v0

    :pswitch_4
    const-string p1, "pause"

    return-object p1

    :pswitch_5
    const-string p1, "play"

    return-object p1

    :pswitch_6
    const-string p1, "fastforward"

    return-object p1

    :pswitch_7
    const-string p1, "rewind"

    return-object p1

    :pswitch_8
    const-string p1, "previous"

    return-object p1

    :pswitch_9
    const-string p1, "next"

    return-object p1

    :pswitch_a
    return-object v0

    :pswitch_b
    const-string p1, "playpause"

    return-object p1

    :pswitch_c
    const-string p1, "search"

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    :pswitch_d
    const-string p1, "changezoom"

    return-object p1

    :cond_2
    const-string p1, "changeaudiotrack"

    return-object p1

    :cond_3
    const-string p1, "settings"

    return-object p1

    :cond_4
    const-string p1, "guide"

    return-object p1

    :cond_5
    const-string p1, "record"

    return-object p1

    :cond_6
    const-string p1, "menu"

    return-object p1

    :cond_7
    const-string p1, "back"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private sendCommand(Ljava/lang/String;)V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Emby.InputManager.trigger(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/mb/android/webviews/WebViewKeyDispatcher;->webView:Lcom/mb/android/webviews/IWebView;

    invoke-interface {v0, p1}, Lcom/mb/android/webviews/IWebView;->sendJavaScript(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 5

    .line 76
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 77
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0x17

    const/4 v3, 0x1

    .line 78
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iput-boolean v3, p0, Lcom/mb/android/webviews/WebViewKeyDispatcher;->isLongPress:Z

    const-string p1, "menu"

    .line 84
    invoke-direct {p0, p1}, Lcom/mb/android/webviews/WebViewKeyDispatcher;->sendCommand(Ljava/lang/String;)V

    return-object v4

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    return-object v4

    .line 92
    :cond_1
    invoke-direct {p0, v0}, Lcom/mb/android/webviews/WebViewKeyDispatcher;->getCommand(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object v4

    :cond_2
    if-ne v1, v3, :cond_5

    if-ne v0, v2, :cond_4

    .line 100
    iget-boolean p1, p0, Lcom/mb/android/webviews/WebViewKeyDispatcher;->isLongPress:Z

    if-nez p1, :cond_3

    const-string p1, "select"

    .line 101
    invoke-direct {p0, p1}, Lcom/mb/android/webviews/WebViewKeyDispatcher;->sendCommand(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/mb/android/webviews/WebViewKeyDispatcher;->isLongPress:Z

    return-object v4

    .line 109
    :cond_4
    invoke-direct {p0, v0}, Lcom/mb/android/webviews/WebViewKeyDispatcher;->getCommand(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 111
    invoke-direct {p0, p1}, Lcom/mb/android/webviews/WebViewKeyDispatcher;->sendCommand(Ljava/lang/String;)V

    return-object v4

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
