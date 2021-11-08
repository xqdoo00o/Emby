.class public abstract Lnet/gotev/uploadservice/UploadTask;
.super Ljava/lang/Object;
.source "UploadTask.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/UploadTask$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUploadTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadTask.kt\nnet/gotev/uploadservice/UploadTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,304:1\n86#1:309\n87#1,8:311\n95#1:320\n171#1,8:321\n172#1,7:329\n86#1:336\n87#1,8:338\n95#1:347\n86#1:348\n87#1,8:350\n95#1:359\n86#1:360\n87#1,8:362\n95#1:371\n86#1:372\n87#1,8:374\n95#1:383\n86#1:384\n87#1,8:386\n95#1:395\n86#1:396\n87#1,8:398\n95#1:407\n1587#2,2:305\n1587#2:310\n1588#2:319\n1587#2:337\n1588#2:346\n1587#2:349\n1588#2:358\n1587#2:361\n1588#2:370\n1587#2:373\n1588#2:382\n1587#2:385\n1588#2:394\n1587#2:397\n1588#2:406\n1587#2,2:408\n673#2:410\n746#2,2:411\n10894#3,2:307\n*E\n*S KotlinDebug\n*F\n+ 1 UploadTask.kt\nnet/gotev/uploadservice/UploadTask\n*L\n128#1:309\n128#1,8:311\n128#1:320\n153#1,8:321\n194#1:336\n194#1,8:338\n194#1:347\n219#1:348\n219#1,8:350\n219#1:359\n228#1:360\n228#1,8:362\n228#1:371\n238#1:372\n238#1,8:374\n238#1:383\n264#1:384\n264#1,8:386\n264#1:395\n264#1:396\n264#1,8:398\n264#1:407\n86#1,2:305\n128#1:310\n128#1:319\n194#1:337\n194#1:346\n219#1:349\n219#1:358\n228#1:361\n228#1:370\n238#1:373\n238#1:382\n264#1:385\n264#1:394\n264#1:397\n264#1:406\n275#1,2:408\n287#1:410\n287#1,2:411\n116#1,2:307\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 T2\u00020\u0001:\u0001TB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u00102\u001a\u000203J\"\u00104\u001a\u0002032\u0017\u00105\u001a\u0013\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020306\u00a2\u0006\u0002\u00087H\u0082\u0008J7\u00108\u001a\u0002032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u00042\u0012\u0010:\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00150;\"\u00020\u0015\u00a2\u0006\u0002\u0010<J\u0010\u0010=\u001a\u0002032\u0006\u0010>\u001a\u00020?H\u0002J\u0010\u0010@\u001a\u0002032\u0006\u0010A\u001a\u00020\u000cH\u0004J\u0010\u0010B\u001a\u0002032\u0006\u0010C\u001a\u00020DH\u0004J\u0008\u0010E\u001a\u000203H\u0002J\u0008\u0010F\u001a\u000203H\u0016J\u0008\u0010G\u001a\u000203H\u0002J\u0008\u0010H\u001a\u000203H\u0004J\u0008\u0010I\u001a\u000203H\u0016J\u0012\u0010J\u001a\u0002032\u0008\u0008\u0002\u0010K\u001a\u00020\u001dH\u0004J\u0018\u0010L\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\u000cH\u0002J!\u0010M\u001a\u0002032\u0008\u0008\u0002\u0010N\u001a\u00020\u000c2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u001d0PH\u0082\u0008J\u0010\u0010Q\u001a\u0002032\u0006\u0010R\u001a\u00020SH$R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u001a\u0010(\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u00020.8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u000e\u00101\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006U"
    }
    d2 = {
        "Lnet/gotev/uploadservice/UploadTask;",
        "Ljava/lang/Runnable;",
        "()V",
        "attempts",
        "",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "errorDelay",
        "",
        "lastProgressNotificationTime",
        "notificationId",
        "getNotificationId",
        "()I",
        "setNotificationId",
        "(I)V",
        "observers",
        "Ljava/util/ArrayList;",
        "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
        "params",
        "Lnet/gotev/uploadservice/data/UploadTaskParameters;",
        "getParams",
        "()Lnet/gotev/uploadservice/data/UploadTaskParameters;",
        "setParams",
        "(Lnet/gotev/uploadservice/data/UploadTaskParameters;)V",
        "shouldContinue",
        "",
        "getShouldContinue",
        "()Z",
        "setShouldContinue",
        "(Z)V",
        "startTime",
        "successfullyUploadedFiles",
        "",
        "Lnet/gotev/uploadservice/data/UploadFile;",
        "getSuccessfullyUploadedFiles",
        "()Ljava/util/List;",
        "totalBytes",
        "getTotalBytes",
        "()J",
        "setTotalBytes",
        "(J)V",
        "uploadInfo",
        "Lnet/gotev/uploadservice/data/UploadInfo;",
        "getUploadInfo",
        "()Lnet/gotev/uploadservice/data/UploadInfo;",
        "uploadedBytes",
        "cancel",
        "",
        "doForEachObserver",
        "action",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "init",
        "taskParams",
        "taskObservers",
        "",
        "(Landroid/content/Context;Lnet/gotev/uploadservice/data/UploadTaskParameters;I[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;)V",
        "onError",
        "exception",
        "",
        "onProgress",
        "bytesSent",
        "onResponseReceived",
        "response",
        "Lnet/gotev/uploadservice/network/ServerResponse;",
        "onUserCancelledUpload",
        "performInitialization",
        "resetAttempts",
        "resetUploadedBytes",
        "run",
        "setAllFilesHaveBeenSuccessfullyUploaded",
        "value",
        "shouldThrottle",
        "sleepWhile",
        "millis",
        "condition",
        "Lkotlin/Function0;",
        "upload",
        "httpStack",
        "Lnet/gotev/uploadservice/network/HttpStack;",
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
.field public static final Companion:Lnet/gotev/uploadservice/UploadTask$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private attempts:I

.field protected context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private errorDelay:J

.field private lastProgressNotificationTime:J

.field private notificationId:I

.field private final observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
            ">;"
        }
    .end annotation
.end field

.field public params:Lnet/gotev/uploadservice/data/UploadTaskParameters;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shouldContinue:Z

.field private final startTime:J

.field private totalBytes:J

.field private uploadedBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/gotev/uploadservice/UploadTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/UploadTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnet/gotev/uploadservice/UploadTask;->Companion:Lnet/gotev/uploadservice/UploadTask$Companion;

    .line 20
    const-class v0, Lnet/gotev/uploadservice/UploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadTask::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lnet/gotev/uploadservice/UploadTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadTask;->shouldContinue:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadTask;->observers:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/UploadTask;->startTime:J

    .line 65
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getRetryPolicy()Lnet/gotev/uploadservice/data/RetryPolicyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->getInitialWaitTimeSeconds()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/UploadTask;->errorDelay:J

    return-void
.end method

.method public static final synthetic access$getAttempts$p(Lnet/gotev/uploadservice/UploadTask;)I
    .locals 0

    .line 17
    iget p0, p0, Lnet/gotev/uploadservice/UploadTask;->attempts:I

    return p0
.end method

.method public static final synthetic access$getErrorDelay$p(Lnet/gotev/uploadservice/UploadTask;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadTask;->errorDelay:J

    return-wide v0
.end method

.method public static final synthetic access$getObservers$p(Lnet/gotev/uploadservice/UploadTask;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lnet/gotev/uploadservice/UploadTask;->observers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lnet/gotev/uploadservice/UploadTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUploadedBytes$p(Lnet/gotev/uploadservice/UploadTask;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadTask;->uploadedBytes:J

    return-wide v0
.end method

.method public static final synthetic access$setAttempts$p(Lnet/gotev/uploadservice/UploadTask;I)V
    .locals 0

    .line 17
    iput p1, p0, Lnet/gotev/uploadservice/UploadTask;->attempts:I

    return-void
.end method

.method public static final synthetic access$setErrorDelay$p(Lnet/gotev/uploadservice/UploadTask;J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lnet/gotev/uploadservice/UploadTask;->errorDelay:J

    return-void
.end method

.method public static final synthetic access$setUploadedBytes$p(Lnet/gotev/uploadservice/UploadTask;J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lnet/gotev/uploadservice/UploadTask;->uploadedBytes:J

    return-void
.end method

.method private final doForEachObserver(Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lnet/gotev/uploadservice/UploadTask;->access$getObservers$p(Lnet/gotev/uploadservice/UploadTask;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 305
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    .line 88
    :try_start_0
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 90
    invoke-static {}, Lnet/gotev/uploadservice/UploadTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v3

    invoke-virtual {v3}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3, v1, v4}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getUploadInfo()Lnet/gotev/uploadservice/data/UploadInfo;
    .locals 12

    .line 68
    new-instance v10, Lnet/gotev/uploadservice/data/UploadInfo;

    .line 69
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    const-string v1, "params"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v2

    .line 70
    iget-wide v3, p0, Lnet/gotev/uploadservice/UploadTask;->startTime:J

    .line 71
    iget-wide v5, p0, Lnet/gotev/uploadservice/UploadTask;->uploadedBytes:J

    .line 72
    iget-wide v7, p0, Lnet/gotev/uploadservice/UploadTask;->totalBytes:J

    .line 73
    iget v0, p0, Lnet/gotev/uploadservice/UploadTask;->attempts:I

    add-int/lit8 v9, v0, -0x1

    .line 74
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getFiles()Ljava/util/ArrayList;

    move-result-object v11

    move-object v0, v10

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v9

    move-object v9, v11

    .line 68
    invoke-direct/range {v0 .. v9}, Lnet/gotev/uploadservice/data/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/ArrayList;)V

    return-object v10
.end method

.method private final onError(Ljava/lang/Throwable;)V
    .locals 7

    .line 263
    sget-object v0, Lnet/gotev/uploadservice/UploadTask;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    const-string v2, "params"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lnet/gotev/uploadservice/UploadTask$onError$1;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$onError$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p1, v3}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 264
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadTask;->getUploadInfo()Lnet/gotev/uploadservice/data/UploadInfo;

    move-result-object v0

    .line 384
    invoke-static {p0}, Lnet/gotev/uploadservice/UploadTask;->access$getObservers$p(Lnet/gotev/uploadservice/UploadTask;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 385
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    .line 265
    :try_start_0
    iget v4, p0, Lnet/gotev/uploadservice/UploadTask;->notificationId:I

    iget-object v5, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v5, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5, p1}, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;->onError(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 389
    invoke-static {}, Lnet/gotev/uploadservice/UploadTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v5

    invoke-virtual {v5}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v5, v3, v6}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 396
    :cond_2
    invoke-static {p0}, Lnet/gotev/uploadservice/UploadTask;->access$getObservers$p(Lnet/gotev/uploadservice/UploadTask;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 397
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    .line 266
    :try_start_1
    iget v3, p0, Lnet/gotev/uploadservice/UploadTask;->notificationId:I

    iget-object v4, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    move-result-object v4

    invoke-interface {v1, v0, v3, v4}, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;->onCompleted(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 401
    invoke-static {}, Lnet/gotev/uploadservice/UploadTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v4

    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4, v1, v5}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private final onUserCancelledUpload()V
    .locals 3

    .line 249
    sget-object v0, Lnet/gotev/uploadservice/UploadTask;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v1, :cond_0

    const-string v2, "params"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/gotev/uploadservice/UploadTask$onUserCancelledUpload$1;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$onUserCancelledUpload$1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 250
    new-instance v0, Lnet/gotev/uploadservice/exceptions/UserCancelledUploadException;

    invoke-direct {v0}, Lnet/gotev/uploadservice/exceptions/UserCancelledUploadException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lnet/gotev/uploadservice/UploadTask;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final resetAttempts()V
    .locals 2

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lnet/gotev/uploadservice/UploadTask;->attempts:I

    .line 124
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getRetryPolicy()Lnet/gotev/uploadservice/data/RetryPolicyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->getInitialWaitTimeSeconds()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/UploadTask;->errorDelay:J

    return-void
.end method

.method public static synthetic setAllFilesHaveBeenSuccessfullyUploaded$default(Lnet/gotev/uploadservice/UploadTask;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 274
    :cond_0
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/UploadTask;->setAllFilesHaveBeenSuccessfullyUploaded(Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setAllFilesHaveBeenSuccessfullyUploaded"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final shouldThrottle(JJ)Z
    .locals 3

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, p1, p3

    if-gez v2, :cond_0

    .line 296
    iget-wide p1, p0, Lnet/gotev/uploadservice/UploadTask;->lastProgressNotificationTime:J

    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getUploadProgressNotificationIntervalMillis()J

    move-result-wide p3

    add-long/2addr p1, p3

    cmp-long p3, v0, p1

    if-gez p3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 300
    :cond_0
    iput-wide v0, p0, Lnet/gotev/uploadservice/UploadTask;->lastProgressNotificationTime:J

    const/4 p1, 0x0

    return p1
.end method

.method private final sleepWhile(JLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 172
    :catch_0
    :goto_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic sleepWhile$default(Lnet/gotev/uploadservice/UploadTask;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    const-wide/16 p1, 0x3e8

    .line 329
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 331
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sleepWhile"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadTask;->shouldContinue:Z

    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTask;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getNotificationId()I
    .locals 1

    .line 27
    iget v0, p0, Lnet/gotev/uploadservice/UploadTask;->notificationId:I

    return v0
.end method

.method public final getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v0, :cond_0

    const-string v1, "params"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getShouldContinue()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadTask;->shouldContinue:Z

    return v0
.end method

.method protected final getSuccessfullyUploadedFiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/gotev/uploadservice/data/UploadFile;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 287
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v0, :cond_0

    const-string v1, "params"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getFiles()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 410
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 411
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lnet/gotev/uploadservice/data/UploadFile;

    .line 287
    invoke-virtual {v3}, Lnet/gotev/uploadservice/data/UploadFile;->getSuccessfullyUploaded()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getTotalBytes()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadTask;->totalBytes:J

    return-wide v0
.end method

.method public final varargs init(Landroid/content/Context;Lnet/gotev/uploadservice/data/UploadTaskParameters;I[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnet/gotev/uploadservice/data/UploadTaskParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskObservers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadTask;->context:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    .line 115
    iput p3, p0, Lnet/gotev/uploadservice/UploadTask;->notificationId:I

    .line 307
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p4, p2

    .line 116
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTask;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadTask;->performInitialization()V

    return-void
.end method

.method protected final onProgress(J)V
    .locals 4

    .line 191
    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadTask;->uploadedBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/gotev/uploadservice/UploadTask;->uploadedBytes:J

    .line 192
    iget-wide p1, p0, Lnet/gotev/uploadservice/UploadTask;->uploadedBytes:J

    iget-wide v0, p0, Lnet/gotev/uploadservice/UploadTask;->totalBytes:J

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/gotev/uploadservice/UploadTask;->shouldThrottle(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 193
    :cond_0
    sget-object p1, Lnet/gotev/uploadservice/UploadTask;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    const-string v0, "params"

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lnet/gotev/uploadservice/UploadTask$onProgress$1;

    invoke-direct {v1, p0}, Lnet/gotev/uploadservice/UploadTask$onProgress$1;-><init>(Lnet/gotev/uploadservice/UploadTask;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2, v1}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 336
    invoke-static {p0}, Lnet/gotev/uploadservice/UploadTask;->access$getObservers$p(Lnet/gotev/uploadservice/UploadTask;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 337
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    .line 194
    :try_start_0
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadTask;->getUploadInfo()Lnet/gotev/uploadservice/data/UploadInfo;

    move-result-object v1

    iget v2, p0, Lnet/gotev/uploadservice/UploadTask;->notificationId:I

    iget-object v3, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v3, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;->onProgress(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 341
    invoke-static {}, Lnet/gotev/uploadservice/UploadTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v2

    invoke-virtual {v2}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2, p2, v3}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected final onResponseReceived(Lnet/gotev/uploadservice/network/ServerResponse;)V
    .locals 12
    .param p1    # Lnet/gotev/uploadservice/network/ServerResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lnet/gotev/uploadservice/UploadTask;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    const-string v2, "params"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lnet/gotev/uploadservice/UploadTask$onResponseReceived$1;

    invoke-direct {v3, p1}, Lnet/gotev/uploadservice/UploadTask$onResponseReceived$1;-><init>(Lnet/gotev/uploadservice/network/ServerResponse;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v3}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 208
    invoke-virtual {p1}, Lnet/gotev/uploadservice/network/ServerResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getAutoDeleteSuccessfullyUploadedFiles()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 210
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadTask;->getSuccessfullyUploadedFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/data/UploadFile;

    .line 211
    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadFile;->getHandler()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;

    move-result-object v3

    iget-object v4, p0, Lnet/gotev/uploadservice/UploadTask;->context:Landroid/content/Context;

    if-nez v4, :cond_2

    const-string v5, "context"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v3, v4}, Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;->delete(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 212
    sget-object v3, Lnet/gotev/uploadservice/UploadTask;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lnet/gotev/uploadservice/UploadTask$onResponseReceived$2;

    invoke-direct {v5, v1}, Lnet/gotev/uploadservice/UploadTask$onResponseReceived$2;-><init>(Lnet/gotev/uploadservice/data/UploadFile;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4, v5}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->info(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 214
    :cond_4
    sget-object v6, Lnet/gotev/uploadservice/UploadTask;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v3, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v3}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v3, Lnet/gotev/uploadservice/UploadTask$onResponseReceived$3;

    invoke-direct {v3, v1}, Lnet/gotev/uploadservice/UploadTask$onResponseReceived$3;-><init>(Lnet/gotev/uploadservice/data/UploadFile;)V

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 348
    :cond_6
    invoke-static {p0}, Lnet/gotev/uploadservice/UploadTask;->access$getObservers$p(Lnet/gotev/uploadservice/UploadTask;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 349
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    .line 221
    :try_start_0
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadTask;->getUploadInfo()Lnet/gotev/uploadservice/data/UploadInfo;

    move-result-object v3

    .line 222
    iget v4, p0, Lnet/gotev/uploadservice/UploadTask;->notificationId:I

    .line 223
    iget-object v5, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v5, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v5}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    move-result-object v5

    .line 220
    invoke-interface {v1, v3, v4, v5, p1}, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;->onSuccess(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;Lnet/gotev/uploadservice/network/ServerResponse;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 353
    invoke-static {}, Lnet/gotev/uploadservice/UploadTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v4

    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4, v1, v5}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 360
    :cond_8
    invoke-static {p0}, Lnet/gotev/uploadservice/UploadTask;->access$getObservers$p(Lnet/gotev/uploadservice/UploadTask;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 361
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    .line 230
    :try_start_1
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadTask;->getUploadInfo()Lnet/gotev/uploadservice/data/UploadInfo;

    move-result-object v3

    .line 231
    iget v4, p0, Lnet/gotev/uploadservice/UploadTask;->notificationId:I

    .line 232
    iget-object v5, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v5, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v5}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    move-result-object v5

    .line 233
    new-instance v6, Lnet/gotev/uploadservice/exceptions/UploadError;

    invoke-direct {v6, p1}, Lnet/gotev/uploadservice/exceptions/UploadError;-><init>(Lnet/gotev/uploadservice/network/ServerResponse;)V

    check-cast v6, Ljava/lang/Throwable;

    .line 229
    invoke-interface {v1, v3, v4, v5, v6}, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;->onError(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 365
    invoke-static {}, Lnet/gotev/uploadservice/UploadTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v4

    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4, v1, v5}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 372
    :cond_a
    invoke-static {p0}, Lnet/gotev/uploadservice/UploadTask;->access$getObservers$p(Lnet/gotev/uploadservice/UploadTask;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 373
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    .line 238
    :try_start_2
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadTask;->getUploadInfo()Lnet/gotev/uploadservice/data/UploadInfo;

    move-result-object v1

    iget v3, p0, Lnet/gotev/uploadservice/UploadTask;->notificationId:I

    iget-object v4, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v4, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4}, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;->onCompleted(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 377
    invoke-static {}, Lnet/gotev/uploadservice/UploadTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v3

    invoke-virtual {v3}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3, v0, v4}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_c
    return-void
.end method

.method public performInitialization()V
    .locals 0

    return-void
.end method

.method protected final resetUploadedBytes()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 181
    iput-wide v0, p0, Lnet/gotev/uploadservice/UploadTask;->uploadedBytes:J

    return-void
.end method

.method public run()V
    .locals 18

    move-object/from16 v1, p0

    .line 309
    invoke-static/range {p0 .. p0}, Lnet/gotev/uploadservice/UploadTask;->access$getObservers$p(Lnet/gotev/uploadservice/UploadTask;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 310
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v3, "params"

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    .line 130
    :try_start_0
    new-instance v15, Lnet/gotev/uploadservice/data/UploadInfo;

    iget-object v4, v1, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v4, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v17, v2

    move-object v2, v15

    move-object/from16 v15, v16

    :try_start_1
    invoke-direct/range {v4 .. v15}, Lnet/gotev/uploadservice/data/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    iget v4, v1, Lnet/gotev/uploadservice/UploadTask;->notificationId:I

    .line 132
    iget-object v5, v1, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v5, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    move-result-object v3

    .line 129
    invoke-interface {v0, v2, v4, v3}, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;->onStart(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    .line 314
    :goto_1
    invoke-static {}, Lnet/gotev/uploadservice/UploadTask;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/gotev/uploadservice/UploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v3

    invoke-virtual {v3}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$doForEachObserver$1$1;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3, v0, v4}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_2
    move-object/from16 v2, v17

    goto :goto_0

    .line 135
    :cond_2
    invoke-direct/range {p0 .. p0}, Lnet/gotev/uploadservice/UploadTask;->resetAttempts()V

    .line 137
    :goto_3
    iget v0, v1, Lnet/gotev/uploadservice/UploadTask;->attempts:I

    iget-object v2, v1, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getMaxRetries()I

    move-result v2

    if-gt v0, v2, :cond_c

    iget-boolean v0, v1, Lnet/gotev/uploadservice/UploadTask;->shouldContinue:Z

    if-eqz v0, :cond_c

    .line 139
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lnet/gotev/uploadservice/UploadTask;->resetUploadedBytes()V

    .line 140
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getHttpStack()Lnet/gotev/uploadservice/network/HttpStack;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/gotev/uploadservice/UploadTask;->upload(Lnet/gotev/uploadservice/network/HttpStack;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception v0

    .line 143
    iget-boolean v2, v1, Lnet/gotev/uploadservice/UploadTask;->shouldContinue:Z

    if-nez v2, :cond_5

    .line 144
    sget-object v2, Lnet/gotev/uploadservice/UploadTask;->TAG:Ljava/lang/String;

    iget-object v4, v1, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v4, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/gotev/uploadservice/UploadTask$run$2;->INSTANCE:Lnet/gotev/uploadservice/UploadTask$run$2;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3, v0, v4}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_7

    .line 146
    :cond_5
    iget v2, v1, Lnet/gotev/uploadservice/UploadTask;->attempts:I

    iget-object v4, v1, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v4, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getMaxRetries()I

    move-result v4

    const/4 v5, 0x1

    if-lt v2, v4, :cond_7

    .line 147
    invoke-direct {v1, v0}, Lnet/gotev/uploadservice/UploadTask;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 149
    :cond_7
    sget-object v2, Lnet/gotev/uploadservice/UploadTask;->TAG:Ljava/lang/String;

    iget-object v4, v1, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v4, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v4}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lnet/gotev/uploadservice/UploadTask$run$3;

    invoke-direct {v6, v1}, Lnet/gotev/uploadservice/UploadTask$run$3;-><init>(Lnet/gotev/uploadservice/UploadTask;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v4, v0, v6}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lnet/gotev/uploadservice/UploadTask;->errorDelay:J

    const/16 v0, 0x3e8

    int-to-long v10, v0

    mul-long v8, v8, v10

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    .line 153
    :catch_3
    :goto_4
    iget-boolean v0, v1, Lnet/gotev/uploadservice/UploadTask;->shouldContinue:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-gez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_a

    .line 324
    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 155
    :cond_a
    iget-wide v6, v1, Lnet/gotev/uploadservice/UploadTask;->errorDelay:J

    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getRetryPolicy()Lnet/gotev/uploadservice/data/RetryPolicyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->getMultiplier()I

    move-result v0

    int-to-long v8, v0

    mul-long v6, v6, v8

    iput-wide v6, v1, Lnet/gotev/uploadservice/UploadTask;->errorDelay:J

    .line 157
    iget-wide v6, v1, Lnet/gotev/uploadservice/UploadTask;->errorDelay:J

    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getRetryPolicy()Lnet/gotev/uploadservice/data/RetryPolicyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->getMaxWaitTimeSeconds()I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-lez v0, :cond_b

    .line 158
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getRetryPolicy()Lnet/gotev/uploadservice/data/RetryPolicyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->getMaxWaitTimeSeconds()I

    move-result v0

    int-to-long v6, v0

    iput-wide v6, v1, Lnet/gotev/uploadservice/UploadTask;->errorDelay:J

    .line 163
    :cond_b
    :goto_6
    iget v0, v1, Lnet/gotev/uploadservice/UploadTask;->attempts:I

    add-int/2addr v0, v5

    iput v0, v1, Lnet/gotev/uploadservice/UploadTask;->attempts:I

    goto/16 :goto_3

    .line 166
    :cond_c
    :goto_7
    iget-boolean v0, v1, Lnet/gotev/uploadservice/UploadTask;->shouldContinue:Z

    if-nez v0, :cond_d

    .line 167
    invoke-direct/range {p0 .. p0}, Lnet/gotev/uploadservice/UploadTask;->onUserCancelledUpload()V

    :cond_d
    return-void
.end method

.method protected final setAllFilesHaveBeenSuccessfullyUploaded(Z)V
    .locals 2

    .line 275
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-nez v0, :cond_0

    const-string v1, "params"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getFiles()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 408
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/data/UploadFile;

    .line 275
    invoke-virtual {v1, p1}, Lnet/gotev/uploadservice/data/UploadFile;->setSuccessfullyUploaded(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadTask;->context:Landroid/content/Context;

    return-void
.end method

.method public final setNotificationId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lnet/gotev/uploadservice/UploadTask;->notificationId:I

    return-void
.end method

.method public final setParams(Lnet/gotev/uploadservice/data/UploadTaskParameters;)V
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/data/UploadTaskParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadTask;->params:Lnet/gotev/uploadservice/data/UploadTaskParameters;

    return-void
.end method

.method public final setShouldContinue(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lnet/gotev/uploadservice/UploadTask;->shouldContinue:Z

    return-void
.end method

.method public final setTotalBytes(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lnet/gotev/uploadservice/UploadTask;->totalBytes:J

    return-void
.end method

.method protected abstract upload(Lnet/gotev/uploadservice/network/HttpStack;)V
    .param p1    # Lnet/gotev/uploadservice/network/HttpStack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
