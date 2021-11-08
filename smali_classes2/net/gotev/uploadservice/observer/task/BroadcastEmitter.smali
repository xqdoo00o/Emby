.class public final Lnet/gotev/uploadservice/observer/task/BroadcastEmitter;
.super Ljava/lang/Object;
.source "BroadcastEmitter.kt"

# interfaces
.implements Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J*\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\"\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\"\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J*\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lnet/gotev/uploadservice/observer/task/BroadcastEmitter;",
        "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "onCompleted",
        "",
        "info",
        "Lnet/gotev/uploadservice/data/UploadInfo;",
        "notificationId",
        "",
        "notificationConfig",
        "Lnet/gotev/uploadservice/data/UploadNotificationConfig;",
        "onError",
        "exception",
        "",
        "onProgress",
        "onStart",
        "onSuccess",
        "response",
        "Lnet/gotev/uploadservice/network/ServerResponse;",
        "send",
        "data",
        "Lnet/gotev/uploadservice/data/BroadcastData;",
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/observer/task/BroadcastEmitter;->context:Landroid/content/Context;

    return-void
.end method

.method private final send(Lnet/gotev/uploadservice/data/BroadcastData;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lnet/gotev/uploadservice/observer/task/BroadcastEmitter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/BroadcastData;->toIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onCompleted(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .locals 7
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "info"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p2, Lnet/gotev/uploadservice/data/BroadcastData;

    sget-object v1, Lnet/gotev/uploadservice/data/UploadStatus;->Completed:Lnet/gotev/uploadservice/data/UploadStatus;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lnet/gotev/uploadservice/data/BroadcastData;-><init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, p2}, Lnet/gotev/uploadservice/observer/task/BroadcastEmitter;->send(Lnet/gotev/uploadservice/data/BroadcastData;)V

    return-void
.end method

.method public onError(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "info"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "exception"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance p2, Lnet/gotev/uploadservice/data/BroadcastData;

    sget-object p3, Lnet/gotev/uploadservice/data/UploadStatus;->Error:Lnet/gotev/uploadservice/data/UploadStatus;

    const/4 v0, 0x0

    invoke-direct {p2, p3, p1, v0, p4}, Lnet/gotev/uploadservice/data/BroadcastData;-><init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;)V

    invoke-direct {p0, p2}, Lnet/gotev/uploadservice/observer/task/BroadcastEmitter;->send(Lnet/gotev/uploadservice/data/BroadcastData;)V

    return-void
.end method

.method public onProgress(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .locals 7
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "info"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p2, Lnet/gotev/uploadservice/data/BroadcastData;

    sget-object v1, Lnet/gotev/uploadservice/data/UploadStatus;->InProgress:Lnet/gotev/uploadservice/data/UploadStatus;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lnet/gotev/uploadservice/data/BroadcastData;-><init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, p2}, Lnet/gotev/uploadservice/observer/task/BroadcastEmitter;->send(Lnet/gotev/uploadservice/data/BroadcastData;)V

    return-void
.end method

.method public onStart(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .locals 0
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "info"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;Lnet/gotev/uploadservice/network/ServerResponse;)V
    .locals 7
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lnet/gotev/uploadservice/network/ServerResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "info"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "response"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance p2, Lnet/gotev/uploadservice/data/BroadcastData;

    sget-object v1, Lnet/gotev/uploadservice/data/UploadStatus;->Success:Lnet/gotev/uploadservice/data/UploadStatus;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p2

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lnet/gotev/uploadservice/data/BroadcastData;-><init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, p2}, Lnet/gotev/uploadservice/observer/task/BroadcastEmitter;->send(Lnet/gotev/uploadservice/data/BroadcastData;)V

    return-void
.end method
