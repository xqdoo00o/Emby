.class public final Lnet/gotev/uploadservice/observer/request/RequestObserver;
.super Landroid/content/BroadcastReceiver;
.source "RequestObserver.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRequestObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestObserver.kt\nnet/gotev/uploadservice/observer/request/RequestObserver\n*L\n1#1,92:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0007J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0012\u0010\u0013\u001a\u00020\u000b2\n\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\u0015J\u0008\u0010\u0016\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lnet/gotev/uploadservice/observer/request/RequestObserver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "context",
        "Landroid/content/Context;",
        "delegate",
        "Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;",
        "(Landroid/content/Context;Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;)V",
        "subscribedUploadID",
        "",
        "onReceive",
        "",
        "intent",
        "Landroid/content/Intent;",
        "register",
        "shouldAcceptEventFrom",
        "",
        "uploadInfo",
        "Lnet/gotev/uploadservice/data/UploadInfo;",
        "subscribe",
        "request",
        "Lnet/gotev/uploadservice/UploadRequest;",
        "unregister",
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
.field private final context:Landroid/content/Context;

.field private final delegate:Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;

.field private subscribedUploadID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->context:Landroid/content/Context;

    iput-object p2, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->delegate:Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;

    .line 26
    iget-object p1, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->context:Landroid/content/Context;

    instance-of p2, p1, Landroidx/lifecycle/LifecycleOwner;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method private final shouldAcceptEventFrom(Lnet/gotev/uploadservice/data/UploadInfo;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->subscribedUploadID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getBroadcastStatusAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object v0, Lnet/gotev/uploadservice/data/BroadcastData;->Companion:Lnet/gotev/uploadservice/data/BroadcastData$Companion;

    invoke-virtual {v0, p2}, Lnet/gotev/uploadservice/data/BroadcastData$Companion;->fromIntent(Landroid/content/Intent;)Lnet/gotev/uploadservice/data/BroadcastData;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 34
    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/BroadcastData;->getUploadInfo()Lnet/gotev/uploadservice/data/UploadInfo;

    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lnet/gotev/uploadservice/observer/request/RequestObserver;->shouldAcceptEventFrom(Lnet/gotev/uploadservice/data/UploadInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 40
    :cond_1
    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/BroadcastData;->getStatus()Lnet/gotev/uploadservice/data/UploadStatus;

    move-result-object v2

    sget-object v3, Lnet/gotev/uploadservice/observer/request/RequestObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lnet/gotev/uploadservice/data/UploadStatus;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v1, :cond_7

    const/4 v1, 0x2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    const/4 p2, 0x4

    if-eq v2, p2, :cond_2

    goto :goto_0

    .line 44
    :cond_2
    iget-object p2, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->delegate:Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;

    invoke-interface {p2, p1, v0}, Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;->onCompleted(Landroid/content/Context;Lnet/gotev/uploadservice/data/UploadInfo;)V

    goto :goto_0

    .line 43
    :cond_3
    iget-object v1, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->delegate:Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;

    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/BroadcastData;->getServerResponse()Lnet/gotev/uploadservice/network/ServerResponse;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v1, p1, v0, p2}, Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;->onSuccess(Landroid/content/Context;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;)V

    goto :goto_0

    .line 42
    :cond_5
    iget-object v1, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->delegate:Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;

    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/BroadcastData;->getException()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-interface {v1, p1, v0, p2}, Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;->onError(Landroid/content/Context;Lnet/gotev/uploadservice/data/UploadInfo;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 41
    :cond_7
    iget-object p2, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->delegate:Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;

    invoke-interface {p2, p1, v0}, Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;->onProgress(Landroid/content/Context;Lnet/gotev/uploadservice/data/UploadInfo;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final register()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 66
    iget-object v0, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 67
    move-object v1, p0

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getBroadcastStatusIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 69
    iget-object v0, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->subscribedUploadID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadService$Companion;->getTaskList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->delegate:Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;

    invoke-interface {v0}, Lnet/gotev/uploadservice/observer/request/RequestObserverDelegate;->onCompletedWhileNotObserving()V

    :cond_0
    return-void
.end method

.method public final subscribe(Lnet/gotev/uploadservice/UploadRequest;)V
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/UploadRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/gotev/uploadservice/UploadRequest<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lnet/gotev/uploadservice/UploadRequest;->startUpload()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->subscribedUploadID:Ljava/lang/String;

    return-void
.end method

.method public final unregister()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 81
    iget-object v0, p0, Lnet/gotev/uploadservice/observer/request/RequestObserver;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
