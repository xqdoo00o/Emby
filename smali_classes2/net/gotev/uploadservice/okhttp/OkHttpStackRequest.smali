.class public final Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;
.super Ljava/lang/Object;
.source "OkHttpStackRequest.kt"

# interfaces
.implements Lnet/gotev/uploadservice/network/HttpRequest;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpStackRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpStackRequest.kt\nnet/gotev/uploadservice/okhttp/OkHttpStackRequest\n*L\n1#1,106:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0016\u0010\u001c\u001a\u00020\u00012\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\u0018\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00020#H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;",
        "Lnet/gotev/uploadservice/network/HttpRequest;",
        "uploadId",
        "",
        "httpClient",
        "Lokhttp3/OkHttpClient;",
        "httpMethod",
        "url",
        "(Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V",
        "bodyLength",
        "",
        "contentType",
        "Lokhttp3/MediaType;",
        "requestBuilder",
        "Lokhttp3/Request$Builder;",
        "uuid",
        "close",
        "",
        "createBody",
        "Lokhttp3/RequestBody;",
        "delegate",
        "Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;",
        "listener",
        "Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;",
        "getResponse",
        "Lnet/gotev/uploadservice/network/ServerResponse;",
        "request",
        "Lokhttp3/Request;",
        "setHeaders",
        "requestHeaders",
        "",
        "Lnet/gotev/uploadservice/data/NameValue;",
        "setTotalBodyBytes",
        "totalBodyBytes",
        "isFixedLengthStreamingMode",
        "",
        "uploadservice-okhttp_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private bodyLength:J

.field private contentType:Lokhttp3/MediaType;

.field private final httpClient:Lokhttp3/OkHttpClient;

.field private final httpMethod:Ljava/lang/String;

.field private final requestBuilder:Lokhttp3/Request$Builder;

.field private final uploadId:Ljava/lang/String;

.field private final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uploadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpMethod"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->uploadId:Ljava/lang/String;

    iput-object p2, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->httpClient:Lokhttp3/OkHttpClient;

    iput-object p3, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->httpMethod:Ljava/lang/String;

    .line 30
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->requestBuilder:Lokhttp3/Request$Builder;

    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UUID.randomUUID().toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->uuid:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "javaClass.simpleName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->uploadId:Ljava/lang/String;

    new-instance p3, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$1;

    invoke-direct {p3, p0}, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$1;-><init>(Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2, p3}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getBodyLength$p(Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->bodyLength:J

    return-wide v0
.end method

.method public static final synthetic access$getContentType$p(Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;)Lokhttp3/MediaType;
    .locals 0

    .line 23
    iget-object p0, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->contentType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public static final synthetic access$getUuid$p(Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setBodyLength$p(Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->bodyLength:J

    return-void
.end method

.method public static final synthetic access$setContentType$p(Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;Lokhttp3/MediaType;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->contentType:Lokhttp3/MediaType;

    return-void
.end method

.method private final createBody(Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;)Lokhttp3/RequestBody;
    .locals 1

    .line 67
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->httpMethod:Ljava/lang/String;

    invoke-static {v0}, Lnet/gotev/uploadservice/okhttp/OkHttpExtensionsKt;->hasBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    new-instance v0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1;

    invoke-direct {v0, p0, p2, p1}, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1;-><init>(Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;)V

    check-cast v0, Lokhttp3/RequestBody;

    return-object v0
.end method

.method private final request(Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;)Lokhttp3/Request;
    .locals 2

    .line 85
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->requestBuilder:Lokhttp3/Request$Builder;

    .line 86
    iget-object v1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->httpMethod:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->createBody(Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javaClass.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->uploadId:Ljava/lang/String;

    new-instance v2, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$close$1;

    invoke-direct {v2, p0}, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$close$1;-><init>(Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public getResponse(Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;)Lnet/gotev/uploadservice/network/ServerResponse;
    .locals 3
    .param p1    # Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 93
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p0

    check-cast v2, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;

    .line 94
    iget-object v2, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->httpClient:Lokhttp3/OkHttpClient;

    invoke-direct {p0, p1, p2}, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->request(Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;)Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 95
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 96
    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object p2, p1

    check-cast p2, Lokhttp3/Response;

    invoke-static {p2}, Lnet/gotev/uploadservice/okhttp/OkHttpExtensionsKt;->asServerResponse(Lokhttp3/Response;)Lnet/gotev/uploadservice/network/ServerResponse;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v0, p2

    .line 96
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, p1

    .line 93
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setHeaders(Ljava/util/List;)Lnet/gotev/uploadservice/network/HttpRequest;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/gotev/uploadservice/data/NameValue;",
            ">;)",
            "Lnet/gotev/uploadservice/network/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/data/NameValue;

    .line 44
    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/NameValue;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "Locale.getDefault()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "content-type"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/NameValue;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    iput-object v1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->contentType:Lokhttp3/MediaType;

    goto :goto_1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    :goto_1
    iget-object v1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/NameValue;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/NameValue;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_6
    move-object p1, p0

    check-cast p1, Lnet/gotev/uploadservice/network/HttpRequest;

    return-object p1
.end method

.method public setTotalBodyBytes(JZ)Lnet/gotev/uploadservice/network/HttpRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    .line 58
    :goto_0
    iput-wide p1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->bodyLength:J

    .line 60
    move-object p1, p0

    check-cast p1, Lnet/gotev/uploadservice/network/HttpRequest;

    return-object p1
.end method
