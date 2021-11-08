.class public final Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;
.super Lnet/gotev/uploadservice/HttpUploadRequest;
.source "MultipartUploadRequest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/gotev/uploadservice/HttpUploadRequest<",
        "Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultipartUploadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartUploadRequest.kt\nnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest\n*L\n1#1,65:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J0\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0007R\u001c\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\t0\u00088TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;",
        "Lnet/gotev/uploadservice/HttpUploadRequest;",
        "context",
        "Landroid/content/Context;",
        "serverUrl",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "taskClass",
        "Ljava/lang/Class;",
        "Lnet/gotev/uploadservice/UploadTask;",
        "getTaskClass",
        "()Ljava/lang/Class;",
        "addFileToUpload",
        "filePath",
        "parameterName",
        "fileName",
        "contentType",
        "uploadservice_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
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

    .line 17
    invoke-direct {p0, p1, p2}, Lnet/gotev/uploadservice/HttpUploadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic addFileToUpload$default(Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 39
    move-object p3, v0

    check-cast p3, Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 40
    move-object p4, v0

    check-cast p4, Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;->addFileToUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addFileToUpload(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;->addFileToUpload$default(Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;

    move-result-object p1

    return-object p1
.end method

.method public final addFileToUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;->addFileToUpload$default(Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;

    move-result-object p1

    return-object p1
.end method

.method public final addFileToUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 46
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;->getFiles()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lnet/gotev/uploadservice/data/UploadFile;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, p1, v5, v4, v5}, Lnet/gotev/uploadservice/data/UploadFile;-><init>(Ljava/lang/String;Ljava/util/LinkedHashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    invoke-static {v3, p2}, Lnet/gotev/uploadservice/protocols/multipart/UploadFileExtensionsKt;->setParameterName(Lnet/gotev/uploadservice/data/UploadFile;Ljava/lang/String;)V

    .line 49
    move-object p1, p4

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {v3}, Lnet/gotev/uploadservice/data/UploadFile;->getHandler()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;

    move-result-object p1

    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;->contentType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    .line 49
    :cond_3
    invoke-static {v3, p4}, Lnet/gotev/uploadservice/protocols/multipart/UploadFileExtensionsKt;->setContentType(Lnet/gotev/uploadservice/data/UploadFile;Ljava/lang/String;)V

    .line 55
    move-object p1, p3

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 56
    invoke-virtual {v3}, Lnet/gotev/uploadservice/data/UploadFile;->getHandler()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;

    move-result-object p1

    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadRequest;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 55
    :cond_6
    invoke-static {v3, p3}, Lnet/gotev/uploadservice/protocols/multipart/UploadFileExtensionsKt;->setRemoteFileName(Lnet/gotev/uploadservice/data/UploadFile;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 42
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please specify valid filePath and parameterName. They cannot be blank."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected getTaskClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lnet/gotev/uploadservice/UploadTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    const-class v0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;

    return-object v0
.end method
