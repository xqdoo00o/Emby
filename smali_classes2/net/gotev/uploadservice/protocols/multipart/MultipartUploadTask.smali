.class public final Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;
.super Lnet/gotev/uploadservice/HttpUploadTask;
.source "MultipartUploadTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultipartUploadTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartUploadTask.kt\nnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1587#2,2:87\n1313#2:89\n1382#2,3:90\n1313#2:93\n1382#2,3:94\n*E\n*S KotlinDebug\n*F\n+ 1 MultipartUploadTask.kt\nnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask\n*L\n42#1,2:87\n58#1:89\n58#1,3:90\n61#1:93\n61#1,3:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001bH\u0016J\u000c\u0010\u001f\u001a\u00020\u001b*\u00020\u001dH\u0002J\u000c\u0010 \u001a\u00020\u001b*\u00020\u001dH\u0002R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0006R\u000e\u0010\r\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0006R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\u00020\n*\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0011\u001a\u00020\n*\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0016R\u0018\u0010\u0017\u001a\u00020\u0004*\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\""
    }
    d2 = {
        "Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;",
        "Lnet/gotev/uploadservice/HttpUploadTask;",
        "()V",
        "bodyLength",
        "",
        "getBodyLength",
        "()J",
        "boundary",
        "",
        "boundaryBytes",
        "",
        "filesLength",
        "getFilesLength",
        "newLineBytes",
        "requestParametersLength",
        "getRequestParametersLength",
        "trailerBytes",
        "multipartHeader",
        "Lnet/gotev/uploadservice/data/NameValue;",
        "getMultipartHeader",
        "(Lnet/gotev/uploadservice/data/NameValue;)[B",
        "Lnet/gotev/uploadservice/data/UploadFile;",
        "(Lnet/gotev/uploadservice/data/UploadFile;)[B",
        "totalMultipartBytes",
        "getTotalMultipartBytes",
        "(Lnet/gotev/uploadservice/data/UploadFile;)J",
        "onWriteRequestBody",
        "",
        "bodyWriter",
        "Lnet/gotev/uploadservice/network/BodyWriter;",
        "performInitialization",
        "writeFiles",
        "writeRequestParameters",
        "Companion",
        "uploadservice_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final BOUNDARY_SIGNATURE:Ljava/lang/String; = "-------UploadService4.0.0-beta02-"

.field public static final Companion:Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask$Companion;

.field private static final NEW_LINE:Ljava/lang/String; = "\r\n"

.field private static final TWO_HYPHENS:Ljava/lang/String; = "--"


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final boundaryBytes:[B

.field private final newLineBytes:[B

.field private final trailerBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->Companion:Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 15
    invoke-direct {p0}, Lnet/gotev/uploadservice/HttpUploadTask;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------UploadService4.0.0-beta02-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->boundary:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/gotev/uploadservice/extensions/StringExtensionsKt;->getAsciiByes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->boundaryBytes:[B

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/gotev/uploadservice/extensions/StringExtensionsKt;->getAsciiByes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->trailerBytes:[B

    .line 26
    invoke-static {v2}, Lnet/gotev/uploadservice/extensions/StringExtensionsKt;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->newLineBytes:[B

    return-void
.end method

.method private final getFilesLength()J
    .locals 4

    .line 61
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getFiles()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 94
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 95
    check-cast v2, Lnet/gotev/uploadservice/data/UploadFile;

    .line 61
    invoke-direct {p0, v2}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getTotalMultipartBytes(Lnet/gotev/uploadservice/data/UploadFile;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 61
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sumOfLong(Ljava/lang/Iterable;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final getMultipartHeader(Lnet/gotev/uploadservice/data/NameValue;)[B
    .locals 3
    .param p1    # Lnet/gotev/uploadservice/data/NameValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 29
    iget-object v0, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->boundaryBytes:[B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition: form-data; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/NameValue;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/NameValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/gotev/uploadservice/extensions/StringExtensionsKt;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final getMultipartHeader(Lnet/gotev/uploadservice/data/UploadFile;)[B
    .locals 3
    .param p1    # Lnet/gotev/uploadservice/data/UploadFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 33
    iget-object v0, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->boundaryBytes:[B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition: form-data; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {p1}, Lnet/gotev/uploadservice/protocols/multipart/UploadFileExtensionsKt;->getParameterName(Lnet/gotev/uploadservice/data/UploadFile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {p1}, Lnet/gotev/uploadservice/protocols/multipart/UploadFileExtensionsKt;->getRemoteFileName(Lnet/gotev/uploadservice/data/UploadFile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p1}, Lnet/gotev/uploadservice/protocols/multipart/UploadFileExtensionsKt;->getContentType(Lnet/gotev/uploadservice/data/UploadFile;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/gotev/uploadservice/extensions/StringExtensionsKt;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final getRequestParametersLength()J
    .locals 4

    .line 58
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getHttpParams()Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->getRequestParameters()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 91
    check-cast v2, Lnet/gotev/uploadservice/data/NameValue;

    .line 58
    invoke-direct {p0, v2}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getMultipartHeader(Lnet/gotev/uploadservice/data/NameValue;)[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 58
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sumOfLong(Ljava/lang/Iterable;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final getTotalMultipartBytes(Lnet/gotev/uploadservice/data/UploadFile;)J
    .locals 4
    .param p1    # Lnet/gotev/uploadservice/data/UploadFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getMultipartHeader(Lnet/gotev/uploadservice/data/UploadFile;)[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadFile;->getHandler()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;

    move-result-object p1

    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v2}, Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;->size(Landroid/content/Context;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object p1, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->newLineBytes:[B

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final writeFiles(Lnet/gotev/uploadservice/network/BodyWriter;)V
    .locals 3
    .param p1    # Lnet/gotev/uploadservice/network/BodyWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 48
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getFiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/data/UploadFile;

    .line 49
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getShouldContinue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "file"

    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getMultipartHeader(Lnet/gotev/uploadservice/data/UploadFile;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/gotev/uploadservice/network/BodyWriter;->write([B)V

    .line 52
    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadFile;->getHandler()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;

    move-result-object v1

    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;->stream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/gotev/uploadservice/network/BodyWriter;->writeStream(Ljava/io/InputStream;)V

    .line 53
    iget-object v1, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->newLineBytes:[B

    invoke-virtual {p1, v1}, Lnet/gotev/uploadservice/network/BodyWriter;->write([B)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final writeRequestParameters(Lnet/gotev/uploadservice/network/BodyWriter;)V
    .locals 2
    .param p1    # Lnet/gotev/uploadservice/network/BodyWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 42
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getHttpParams()Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->getRequestParameters()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/data/NameValue;

    .line 43
    invoke-direct {p0, v1}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getMultipartHeader(Lnet/gotev/uploadservice/data/NameValue;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/gotev/uploadservice/network/BodyWriter;->write([B)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBodyLength()J
    .locals 4

    .line 64
    invoke-direct {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getRequestParametersLength()J

    move-result-wide v0

    invoke-direct {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getFilesLength()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->trailerBytes:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onWriteRequestBody(Lnet/gotev/uploadservice/network/BodyWriter;)V
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/network/BodyWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bodyWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->resetUploadedBytes()V

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->setAllFilesHaveBeenSuccessfullyUploaded(Z)V

    .line 80
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->writeRequestParameters(Lnet/gotev/uploadservice/network/BodyWriter;)V

    .line 81
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->writeFiles(Lnet/gotev/uploadservice/network/BodyWriter;)V

    .line 82
    iget-object v0, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->trailerBytes:[B

    invoke-virtual {p1, v0}, Lnet/gotev/uploadservice/network/BodyWriter;->write([B)V

    return-void
.end method

.method public performInitialization()V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getHttpParams()Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->getRequestHeaders()Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-static {v0, v2, v1}, Lnet/gotev/uploadservice/extensions/CollectionsExtensionsKt;->addHeader(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/multipart/MultipartUploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getFiles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    const-string v1, "close"

    goto :goto_0

    :cond_0
    const-string v1, "Keep-Alive"

    :goto_0
    const-string v2, "Connection"

    invoke-static {v0, v2, v1}, Lnet/gotev/uploadservice/extensions/CollectionsExtensionsKt;->addHeader(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
