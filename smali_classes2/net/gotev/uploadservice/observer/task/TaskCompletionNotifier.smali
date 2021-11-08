.class public final Lnet/gotev/uploadservice/observer/task/TaskCompletionNotifier;
.super Ljava/lang/Object;
.source "TaskCompletionNotifier.kt"

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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J*\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\"\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\"\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J*\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lnet/gotev/uploadservice/observer/task/TaskCompletionNotifier;",
        "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
        "service",
        "Lnet/gotev/uploadservice/UploadService;",
        "(Lnet/gotev/uploadservice/UploadService;)V",
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
.field private final service:Lnet/gotev/uploadservice/UploadService;


# direct methods
.method public constructor <init>(Lnet/gotev/uploadservice/UploadService;)V
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/UploadService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/observer/task/TaskCompletionNotifier;->service:Lnet/gotev/uploadservice/UploadService;

    return-void
.end method


# virtual methods
.method public onCompleted(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
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

    .line 22
    iget-object p2, p0, Lnet/gotev/uploadservice/observer/task/TaskCompletionNotifier;->service:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/gotev/uploadservice/UploadService;->taskCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/lang/Throwable;)V
    .locals 0
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

    const-string p1, "exception"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
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
    .locals 0
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

    const-string p1, "response"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
