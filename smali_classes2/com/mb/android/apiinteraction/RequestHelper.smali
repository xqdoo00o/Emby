.class public Lcom/mb/android/apiinteraction/RequestHelper;
.super Ljava/lang/Object;
.source "RequestHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelRequestsWithTag(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 148
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "Canceling requests with tag %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/mb/android/MainApp;

    invoke-virtual {p0}, Lcom/mb/android/MainApp;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 153
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Call;

    .line 158
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mb/android/apiinteraction/http/HttpRequest;",
            "Lcom/mb/android/model/logging/ILogger;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, p2, v0, p3}, Lcom/mb/android/apiinteraction/RequestHelper;->getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public static getString(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mb/android/apiinteraction/http/HttpRequest;",
            "Lcom/mb/android/model/logging/ILogger;",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    :try_start_0
    invoke-static {p0, p1, p2, p4, p3}, Lcom/mb/android/apiinteraction/RequestHelper;->getStringInternal(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 56
    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "Error sending request"

    invoke-interface {p2, p3, p0, p1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p4, p0}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static getStringInternal(Landroid/content/Context;Lcom/mb/android/apiinteraction/http/HttpRequest;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;Ljava/lang/String;)V
    .locals 5
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mb/android/apiinteraction/http/HttpRequest;",
            "Lcom/mb/android/model/logging/ILogger;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 69
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "Getting response stream from %s"

    invoke-interface {p2, v4, v2}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/mb/android/MainApp;

    invoke-virtual {p0}, Lcom/mb/android/MainApp;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    .line 73
    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 78
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 79
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v1, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 80
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    .line 81
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Accept"

    const-string v2, "application/json"

    .line 82
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 83
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {v0, p4}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->getRequestHeaders()Ljava/util/HashMap;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->getRequestHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->getRequestContentType()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/mb/android/tangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 92
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->getRequestContentType()Ljava/lang/String;

    move-result-object p4

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_2
    const/4 p4, 0x0

    .line 96
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->getRequestContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 98
    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    .line 99
    invoke-static {p4}, Lokhttp3/RequestBody;->create([B)Lokhttp3/RequestBody;

    move-result-object p4

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    new-array p4, v3, [B

    invoke-static {p4}, Lokhttp3/RequestBody;->create([B)Lokhttp3/RequestBody;

    move-result-object p4

    .line 104
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 106
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lcom/mb/android/apiinteraction/RequestHelper$1;

    invoke-direct {p1, p2, p3}, Lcom/mb/android/apiinteraction/RequestHelper$1;-><init>(Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/Response;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    .line 75
    :cond_5
    new-array p0, v1, [Ljava/lang/Object;

    aput-object v0, p0, v3

    const-string p1, "RequestHelper.getString Error: Invalid URL: %s"

    invoke-interface {p2, p1, p0}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v0, p1, v3

    const-string p2, "Invalid URL %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
