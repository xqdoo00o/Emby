.class public abstract Lnet/gotev/uploadservice/HttpUploadTask;
.super Lnet/gotev/uploadservice/UploadTask;
.source "HttpUploadTask.kt"

# interfaces
.implements Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;
.implements Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpUploadTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUploadTask.kt\nnet/gotev/uploadservice/HttpUploadTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1313#2:76\n1382#2,3:77\n*E\n*S KotlinDebug\n*F\n+ 1 HttpUploadTask.kt\nnet/gotev/uploadservice/HttpUploadTask\n*L\n47#1:76\n47#1,3:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0015R\u0012\u0010\u0005\u001a\u00020\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lnet/gotev/uploadservice/HttpUploadTask;",
        "Lnet/gotev/uploadservice/UploadTask;",
        "Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;",
        "Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;",
        "()V",
        "bodyLength",
        "",
        "getBodyLength",
        "()J",
        "httpParams",
        "Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;",
        "getHttpParams",
        "()Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;",
        "onBytesWritten",
        "",
        "bytesWritten",
        "",
        "shouldContinueWriting",
        "",
        "upload",
        "httpStack",
        "Lnet/gotev/uploadservice/network/HttpStack;",
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
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadTask;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBodyLength()J
.end method

.method protected final getHttpParams()Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getAdditionalParameters()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type net.gotev.uploadservice.data.HttpUploadTaskParameters"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onBytesWritten(I)V
    .locals 2

    int-to-long v0, p1

    .line 72
    invoke-virtual {p0, v0, v1}, Lnet/gotev/uploadservice/HttpUploadTask;->onProgress(J)V

    return-void
.end method

.method public shouldContinueWriting()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getShouldContinue()Z

    move-result v0

    return v0
.end method

.method protected upload(Lnet/gotev/uploadservice/network/HttpStack;)V
    .locals 5
    .param p1    # Lnet/gotev/uploadservice/network/HttpStack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "httpStack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javaClass.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v2

    invoke-virtual {v2}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/gotev/uploadservice/HttpUploadTask$upload$1;->INSTANCE:Lnet/gotev/uploadservice/HttpUploadTask$upload$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/HttpUploadTask;->setAllFilesHaveBeenSuccessfullyUploaded(Z)V

    .line 44
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getBodyLength()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lnet/gotev/uploadservice/HttpUploadTask;->setTotalBytes(J)V

    .line 46
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v2

    invoke-virtual {v2}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getHttpParams()Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    move-result-object v3

    invoke-virtual {v3}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v4

    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getServerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lnet/gotev/uploadservice/network/HttpStack;->newRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/network/HttpRequest;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getHttpParams()Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    move-result-object v2

    invoke-virtual {v2}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->getRequestHeaders()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 77
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 78
    check-cast v4, Lnet/gotev/uploadservice/data/NameValue;

    .line 47
    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/NameValue;->validateAsHeader()Lnet/gotev/uploadservice/data/NameValue;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 47
    invoke-interface {p1, v3}, Lnet/gotev/uploadservice/network/HttpRequest;->setHeaders(Ljava/util/List;)Lnet/gotev/uploadservice/network/HttpRequest;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getHttpParams()Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;

    move-result-object v4

    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/HttpUploadTaskParameters;->getUsesFixedLengthStreamingMode()Z

    move-result v4

    invoke-interface {p1, v2, v3, v4}, Lnet/gotev/uploadservice/network/HttpRequest;->setTotalBodyBytes(JZ)Lnet/gotev/uploadservice/network/HttpRequest;

    move-result-object p1

    .line 49
    move-object v2, p0

    check-cast v2, Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;

    move-object v3, p0

    check-cast v3, Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;

    invoke-interface {p1, v2, v3}, Lnet/gotev/uploadservice/network/HttpRequest;->getResponse(Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;)Lnet/gotev/uploadservice/network/ServerResponse;

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lnet/gotev/uploadservice/HttpUploadTask$upload$2;

    invoke-direct {v3, p1}, Lnet/gotev/uploadservice/HttpUploadTask$upload$2;-><init>(Lnet/gotev/uploadservice/network/ServerResponse;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v1, v3}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 61
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getShouldContinue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {p1}, Lnet/gotev/uploadservice/network/ServerResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-static {p0, v0, v1, v2}, Lnet/gotev/uploadservice/UploadTask;->setAllFilesHaveBeenSuccessfullyUploaded$default(Lnet/gotev/uploadservice/UploadTask;ZILjava/lang/Object;)V

    .line 65
    :cond_1
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/HttpUploadTask;->onResponseReceived(Lnet/gotev/uploadservice/network/ServerResponse;)V

    :cond_2
    return-void
.end method
