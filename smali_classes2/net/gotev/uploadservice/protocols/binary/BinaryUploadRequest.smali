.class public final Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;
.super Lnet/gotev/uploadservice/HttpUploadRequest;
.source "BinaryUploadRequest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/gotev/uploadservice/HttpUploadRequest<",
        "Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinaryUploadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinaryUploadRequest.kt\nnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest\n*L\n1#1,65:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J)\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00052\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u000f\"\u00020\u0005H\u0016\u00a2\u0006\u0002\u0010\u0010J\u001e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00052\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0005J\u0008\u0010\u0019\u001a\u00020\u0005H\u0016R\u001c\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\t0\u00088TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;",
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
        "addArrayParameter",
        "paramName",
        "array",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;",
        "list",
        "",
        "addParameter",
        "paramValue",
        "logDoesNotSupportParameters",
        "",
        "setFileToUpload",
        "path",
        "startUpload",
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

    .line 20
    invoke-direct {p0, p1, p2}, Lnet/gotev/uploadservice/HttpUploadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final logDoesNotSupportParameters()V
    .locals 7

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v0, "javaClass.simpleName"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest$logDoesNotSupportParameters$1;->INSTANCE:Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest$logDoesNotSupportParameters$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const-string v2, "N/A"

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addArrayParameter(Ljava/lang/String;Ljava/util/List;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->addArrayParameter(Ljava/lang/String;Ljava/util/List;)Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;

    move-result-object p1

    check-cast p1, Lnet/gotev/uploadservice/HttpUploadRequest;

    return-object p1
.end method

.method public bridge synthetic addArrayParameter(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->addArrayParameter(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;

    move-result-object p1

    check-cast p1, Lnet/gotev/uploadservice/HttpUploadRequest;

    return-object p1
.end method

.method public addArrayParameter(Ljava/lang/String;Ljava/util/List;)Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;
    .locals 1
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
            ">;)",
            "Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paramName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "list"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->logDoesNotSupportParameters()V

    return-object p0
.end method

.method public varargs addArrayParameter(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paramName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "array"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->logDoesNotSupportParameters()V

    return-object p0
.end method

.method public bridge synthetic addParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;

    move-result-object p1

    check-cast p1, Lnet/gotev/uploadservice/HttpUploadRequest;

    return-object p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paramName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "paramValue"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->logDoesNotSupportParameters()V

    return-object p0
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

    .line 23
    const-class v0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;

    return-object v0
.end method

.method public final setFileToUpload(Ljava/lang/String;)Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;
    .locals 4
    .param p1    # Ljava/lang/String;
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

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->getFiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->getFiles()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lnet/gotev/uploadservice/data/UploadFile;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lnet/gotev/uploadservice/data/UploadFile;-><init>(Ljava/lang/String;Ljava/util/LinkedHashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public startUpload()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 55
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadRequest;->getFiles()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 56
    invoke-super {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->startUpload()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set the file to be used in the request body first!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
