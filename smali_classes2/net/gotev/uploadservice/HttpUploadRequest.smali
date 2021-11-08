.class public abstract Lnet/gotev/uploadservice/HttpUploadRequest;
.super Lnet/gotev/uploadservice/UploadRequest;
.source "HttpUploadRequest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lnet/gotev/uploadservice/HttpUploadRequest<",
        "TB;>;>",
        "Lnet/gotev/uploadservice/UploadRequest<",
        "TB;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpUploadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUploadRequest.kt\nnet/gotev/uploadservice/HttpUploadRequest\n*L\n1#1,129:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J)\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u00062\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u000f\"\u00020\u0006H\u0016\u00a2\u0006\u0002\u0010\u0010J#\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u00062\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013J\u001b\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0017J\u001d\u0010\u0018\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0016\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010\u001a\u001a\u00020\u001bH\u0014J\u001b\u0010\u001c\u001a\u00028\u00002\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0017J\u0013\u0010\u001f\u001a\u00028\u00002\u0006\u0010 \u001a\u00020\u0006\u00a2\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00028\u00002\u0006\u0010#\u001a\u00020\u0006\u00a2\u0006\u0002\u0010!J\u0013\u0010$\u001a\u00028\u00002\u0006\u0010%\u001a\u00020&\u00a2\u0006\u0002\u0010\'R\u0014\u0010\u0008\u001a\u00020\tX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006("
    }
    d2 = {
        "Lnet/gotev/uploadservice/HttpUploadRequest;",
        "B",
        "Lnet/gotev/uploadservice/UploadRequest;",
        "context",
        "Landroid/content/Context;",
        "serverUrl",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "httpParams",
        "Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;",
        "getHttpParams",
        "()Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;",
        "addArrayParameter",
        "paramName",
        "array",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;",
        "list",
        "",
        "(Ljava/lang/String;Ljava/util/List;)Lnet/gotev/uploadservice/HttpUploadRequest;",
        "addHeader",
        "headerName",
        "headerValue",
        "(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;",
        "addParameter",
        "paramValue",
        "getAdditionalParameters",
        "Landroid/os/Parcelable;",
        "setBasicAuth",
        "username",
        "password",
        "setBearerAuth",
        "bearerToken",
        "(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;",
        "setMethod",
        "method",
        "setUsesFixedLengthStreamingMode",
        "fixedLength",
        "",
        "(Z)Lnet/gotev/uploadservice/HttpUploadRequest;",
        "uploadservice_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final httpParams:Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lnet/gotev/uploadservice/UploadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;-><init>(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->httpParams:Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    .line 24
    invoke-static {p2}, Lnet/gotev/uploadservice/extensions/StringExtensionsKt;->isValidHttpUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specify either http:// or https:// as protocol"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public addArrayParameter(Ljava/lang/String;Ljava/util/List;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paramName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->httpParams:Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->getRequestParameters()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lnet/gotev/uploadservice/data/NameValue;

    invoke-direct {v2, p1, v0}, Lnet/gotev/uploadservice/data/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->self()Lnet/gotev/uploadservice/UploadRequest;

    move-result-object p1

    check-cast p1, Lnet/gotev/uploadservice/HttpUploadRequest;

    return-object p1
.end method

.method public varargs addArrayParameter(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paramName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "array"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 84
    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->httpParams:Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->getRequestParameters()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lnet/gotev/uploadservice/data/NameValue;

    invoke-direct {v4, p1, v2}, Lnet/gotev/uploadservice/data/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->self()Lnet/gotev/uploadservice/UploadRequest;

    move-result-object p1

    check-cast p1, Lnet/gotev/uploadservice/HttpUploadRequest;

    return-object p1
.end method

.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "headerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->httpParams:Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->getRequestHeaders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnet/gotev/uploadservice/extensions/CollectionsExtensionsKt;->addHeader(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->self()Lnet/gotev/uploadservice/UploadRequest;

    move-result-object p1

    check-cast p1, Lnet/gotev/uploadservice/HttpUploadRequest;

    return-object p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paramName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paramValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->httpParams:Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->getRequestParameters()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lnet/gotev/uploadservice/data/NameValue;

    invoke-direct {v1, p1, p2}, Lnet/gotev/uploadservice/data/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->self()Lnet/gotev/uploadservice/UploadRequest;

    move-result-object p1

    check-cast p1, Lnet/gotev/uploadservice/HttpUploadRequest;

    return-object p1
.end method

.method protected getAdditionalParameters()Landroid/os/Parcelable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->httpParams:Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method protected final getHttpParams()Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->httpParams:Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    return-object v0
.end method

.method public final setBasicAuth(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Basic "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Authorization"

    invoke-virtual {p0, p2, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBearerAuth(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bearerToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    move-result-object p1

    return-object p1
.end method

.method public final setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->httpParams:Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Locale.ROOT"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->setMethod(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->self()Lnet/gotev/uploadservice/UploadRequest;

    move-result-object p1

    check-cast p1, Lnet/gotev/uploadservice/HttpUploadRequest;

    return-object p1
.end method

.method public final setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/HttpUploadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 125
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->httpParams:Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    invoke-virtual {v0, p1}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->setUsesFixedLengthStreamingMode(Z)V

    .line 126
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->self()Lnet/gotev/uploadservice/UploadRequest;

    move-result-object p1

    check-cast p1, Lnet/gotev/uploadservice/HttpUploadRequest;

    return-object p1
.end method
