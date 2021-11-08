.class public interface abstract Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;
.super Ljava/lang/Object;
.source "UploadTaskObserver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&J*\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u000cH&J\"\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&J\"\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&J*\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u0011H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
        "",
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


# virtual methods
.method public abstract onCompleted(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onError(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/lang/Throwable;)V
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
.end method

.method public abstract onProgress(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onStart(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;Lnet/gotev/uploadservice/network/ServerResponse;)V
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
.end method
