.class public abstract Lnet/gotev/uploadservice/UploadRequest;
.super Ljava/lang/Object;
.source "UploadRequest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lnet/gotev/uploadservice/UploadRequest<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUploadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadRequest.kt\nnet/gotev/uploadservice/UploadRequest\n*L\n1#1,140:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010.\u001a\u00020/H$J\r\u00100\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u00101J\u0013\u00102\u001a\u00028\u00002\u0006\u00103\u001a\u00020\t\u00a2\u0006\u0002\u00104J\u0013\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0002\u00105J.\u0010#\u001a\u00028\u00002!\u00106\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020 0\u001c\u00a2\u0006\u0002\u00107J\u0013\u00108\u001a\u00028\u00002\u0006\u00109\u001a\u00020\u0006\u00a2\u0006\u0002\u0010:J\u0008\u0010;\u001a\u00020\u0006H\u0016J\u0016\u0010<\u001a\u00020=2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010>\u001a\u00020?J\u000e\u0010<\u001a\u00020@2\u0006\u0010A\u001a\u00020=R\u001a\u0010\u0008\u001a\u00020\tX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR7\u0010\u001b\u001a\u001f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0006\u0012\u0004\u0018\u00010 0\u001cX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010\u0005\u001a\u00020\u0006X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001a\u0010)\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020+0*X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u000e\u0010\u001f\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006B"
    }
    d2 = {
        "Lnet/gotev/uploadservice/UploadRequest;",
        "B",
        "",
        "context",
        "Landroid/content/Context;",
        "serverUrl",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "autoDeleteSuccessfullyUploadedFiles",
        "",
        "getAutoDeleteSuccessfullyUploadedFiles",
        "()Z",
        "setAutoDeleteSuccessfullyUploadedFiles",
        "(Z)V",
        "getContext",
        "()Landroid/content/Context;",
        "files",
        "Ljava/util/ArrayList;",
        "Lnet/gotev/uploadservice/data/UploadFile;",
        "getFiles",
        "()Ljava/util/ArrayList;",
        "maxRetries",
        "",
        "getMaxRetries",
        "()I",
        "setMaxRetries",
        "(I)V",
        "notificationConfig",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "uploadId",
        "Lnet/gotev/uploadservice/data/UploadNotificationConfig;",
        "getNotificationConfig",
        "()Lkotlin/jvm/functions/Function1;",
        "setNotificationConfig",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getServerUrl",
        "()Ljava/lang/String;",
        "setServerUrl",
        "(Ljava/lang/String;)V",
        "taskClass",
        "Ljava/lang/Class;",
        "Lnet/gotev/uploadservice/UploadTask;",
        "getTaskClass",
        "()Ljava/lang/Class;",
        "getAdditionalParameters",
        "Landroid/os/Parcelable;",
        "self",
        "()Lnet/gotev/uploadservice/UploadRequest;",
        "setAutoDeleteFilesAfterSuccessfulUpload",
        "autoDeleteFiles",
        "(Z)Lnet/gotev/uploadservice/UploadRequest;",
        "(I)Lnet/gotev/uploadservice/UploadRequest;",
        "config",
        "(Lkotlin/jvm/functions/Function1;)Lnet/gotev/uploadservice/UploadRequest;",
        "setUploadID",
        "uploadID",
        "(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadRequest;",
        "startUpload",
        "subscribe",
        "Lnet/gotev/uploadservice/observer/request/RequestObserver;",
        "delegate",
        "Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;",
        "",
        "observer",
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
.field private autoDeleteSuccessfullyUploadedFiles:Z

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/gotev/uploadservice/data/UploadFile;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxRetries:I

.field private notificationConfig:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lnet/gotev/uploadservice/data/UploadNotificationConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private serverUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private uploadId:Ljava/lang/String;


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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/UploadRequest;->context:Landroid/content/Context;

    iput-object p2, p0, Lnet/gotev/uploadservice/UploadRequest;->serverUrl:Ljava/lang/String;

    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UUID.randomUUID().toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/gotev/uploadservice/UploadRequest;->uploadId:Ljava/lang/String;

    .line 30
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getRetryPolicy()Lnet/gotev/uploadservice/data/RetryPolicyConfig;

    move-result-object p1

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->getDefaultMaxRetries()I

    move-result p1

    iput p1, p0, Lnet/gotev/uploadservice/UploadRequest;->maxRetries:I

    .line 32
    sget-object p1, Lnet/gotev/uploadservice/UploadRequest$notificationConfig$1;->INSTANCE:Lnet/gotev/uploadservice/UploadRequest$notificationConfig$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lnet/gotev/uploadservice/UploadRequest;->notificationConfig:Lkotlin/jvm/functions/Function1;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/UploadRequest;->files:Ljava/util/ArrayList;

    .line 43
    iget-object p1, p0, Lnet/gotev/uploadservice/UploadRequest;->serverUrl:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Server URL cannot be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method protected abstract getAdditionalParameters()Landroid/os/Parcelable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final getAutoDeleteSuccessfullyUploadedFiles()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadRequest;->autoDeleteSuccessfullyUploadedFiles:Z

    return v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnet/gotev/uploadservice/data/UploadFile;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadRequest;->files:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getMaxRetries()I
    .locals 1

    .line 30
    iget v0, p0, Lnet/gotev/uploadservice/UploadRequest;->maxRetries:I

    return v0
.end method

.method protected final getNotificationConfig()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lnet/gotev/uploadservice/data/UploadNotificationConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadRequest;->notificationConfig:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected final getServerUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadRequest;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getTaskClass()Ljava/lang/Class;
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
.end method

.method protected final self()Lnet/gotev/uploadservice/UploadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 87
    move-object v0, p0

    check-cast v0, Lnet/gotev/uploadservice/UploadRequest;

    return-object v0
.end method

.method public final setAutoDeleteFilesAfterSuccessfulUpload(Z)Lnet/gotev/uploadservice/UploadRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 112
    iput-boolean p1, p0, Lnet/gotev/uploadservice/UploadRequest;->autoDeleteSuccessfullyUploadedFiles:Z

    .line 113
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadRequest;->self()Lnet/gotev/uploadservice/UploadRequest;

    move-result-object p1

    return-object p1
.end method

.method protected final setAutoDeleteSuccessfullyUploadedFiles(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lnet/gotev/uploadservice/UploadRequest;->autoDeleteSuccessfullyUploadedFiles:Z

    return-void
.end method

.method public final setMaxRetries(I)Lnet/gotev/uploadservice/UploadRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 124
    iput p1, p0, Lnet/gotev/uploadservice/UploadRequest;->maxRetries:I

    .line 125
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadRequest;->self()Lnet/gotev/uploadservice/UploadRequest;

    move-result-object p1

    return-object p1
.end method

.method protected final setMaxRetries(I)V
    .locals 0

    .line 30
    iput p1, p0, Lnet/gotev/uploadservice/UploadRequest;->maxRetries:I

    return-void
.end method

.method public final setNotificationConfig(Lkotlin/jvm/functions/Function1;)Lnet/gotev/uploadservice/UploadRequest;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lnet/gotev/uploadservice/data/UploadNotificationConfig;",
            ">;)TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadRequest;->notificationConfig:Lkotlin/jvm/functions/Function1;

    .line 101
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadRequest;->self()Lnet/gotev/uploadservice/UploadRequest;

    move-result-object p1

    return-object p1
.end method

.method protected final setNotificationConfig(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lnet/gotev/uploadservice/data/UploadNotificationConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadRequest;->notificationConfig:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method protected final setServerUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadRequest;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method public final setUploadID(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadRequest;
    .locals 1
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

    const-string v0, "uploadID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadRequest;->uploadId:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadRequest;->self()Lnet/gotev/uploadservice/UploadRequest;

    move-result-object p1

    return-object p1
.end method

.method public startUpload()Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadRequest;->context:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadRequest;->getTaskClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v10, Lnet/gotev/uploadservice/data/UploadTaskParameters;

    .line 55
    iget-object v3, p0, Lnet/gotev/uploadservice/UploadRequest;->uploadId:Ljava/lang/String;

    .line 56
    iget-object v4, p0, Lnet/gotev/uploadservice/UploadRequest;->serverUrl:Ljava/lang/String;

    .line 57
    iget v5, p0, Lnet/gotev/uploadservice/UploadRequest;->maxRetries:I

    .line 58
    iget-boolean v6, p0, Lnet/gotev/uploadservice/UploadRequest;->autoDeleteSuccessfullyUploadedFiles:Z

    .line 59
    iget-object v2, p0, Lnet/gotev/uploadservice/UploadRequest;->notificationConfig:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    .line 60
    iget-object v8, p0, Lnet/gotev/uploadservice/UploadRequest;->files:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadRequest;->getAdditionalParameters()Landroid/os/Parcelable;

    move-result-object v9

    move-object v2, v10

    .line 54
    invoke-direct/range {v2 .. v9}, Lnet/gotev/uploadservice/data/UploadTaskParameters;-><init>(Ljava/lang/String;Ljava/lang/String;IZLnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/util/ArrayList;Landroid/os/Parcelable;)V

    .line 53
    invoke-static {v0, v1, v10}, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt;->startNewUpload(Landroid/content/Context;Ljava/lang/Class;Lnet/gotev/uploadservice/data/UploadTaskParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Landroid/content/Context;Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;)Lnet/gotev/uploadservice/observer/request/RequestObserver;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lnet/gotev/uploadservice/observer/request/RequestObserver;

    invoke-direct {v0, p1, p2}, Lnet/gotev/uploadservice/observer/request/RequestObserver;-><init>(Landroid/content/Context;Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;)V

    invoke-virtual {v0, p0}, Lnet/gotev/uploadservice/observer/request/RequestObserver;->subscribe(Lnet/gotev/uploadservice/UploadRequest;)V

    return-object v0
.end method

.method public final subscribe(Lnet/gotev/uploadservice/observer/request/RequestObserver;)V
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/observer/request/RequestObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, p0}, Lnet/gotev/uploadservice/observer/request/RequestObserver;->subscribe(Lnet/gotev/uploadservice/UploadRequest;)V

    return-void
.end method
