.class public final Lnet/gotev/uploadservice/extensions/ContextExtensionsKt;
.super Ljava/lang/Object;
.source "ContextExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContextExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextExtensions.kt\nnet/gotev/uploadservice/extensions/ContextExtensionsKt\n*L\n1#1,132:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a\u0012\u0010\n\u001a\u00020\u000b*\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0001\u001a\u001a\u0010\u000e\u001a\u00020\u000b*\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001\u001aM\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u00020\u000c2\u001e\u0010\u0012\u001a\u001a\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00110\u0014\u0012\u0004\u0012\u00020\u00150\u0013j\u0002`\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u0019\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001b0\u001a\"\u00020\u001b\u00a2\u0006\u0002\u0010\u001c\u001a(\u0010\u001d\u001a\u001e\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00110\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0013j\u0004\u0018\u0001`\u0016*\u0004\u0018\u00010\u0007\u001a\"\u0010\u001e\u001a\u00020\u0001*\u00020\u000c2\u000e\u0010\u001f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00110\u00142\u0006\u0010 \u001a\u00020\u0015\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t*2\u0010!\"\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00110\u0014\u0012\u0004\u0012\u00020\u00150\u00132\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00110\u0014\u0012\u0004\u0012\u00020\u00150\u0013\u00a8\u0006\""
    }
    d2 = {
        "actionKey",
        "",
        "cancelUploadAction",
        "taskClassKey",
        "taskParametersKey",
        "uploadIdKey",
        "uploadIdToCancel",
        "Landroid/content/Intent;",
        "getUploadIdToCancel",
        "(Landroid/content/Intent;)Ljava/lang/String;",
        "getCancelUploadIntent",
        "Landroid/app/PendingIntent;",
        "Landroid/content/Context;",
        "uploadId",
        "getNotificationActionIntent",
        "action",
        "getUploadTask",
        "Lnet/gotev/uploadservice/UploadTask;",
        "creationParameters",
        "Lkotlin/Pair;",
        "Ljava/lang/Class;",
        "Lnet/gotev/uploadservice/data/UploadTaskParameters;",
        "Lnet/gotev/uploadservice/extensions/UploadTaskCreationParameters;",
        "notificationId",
        "",
        "observers",
        "",
        "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
        "(Landroid/content/Context;Lkotlin/Pair;I[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;)Lnet/gotev/uploadservice/UploadTask;",
        "getUploadTaskCreationParameters",
        "startNewUpload",
        "taskClass",
        "params",
        "UploadTaskCreationParameters",
        "uploadservice_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final actionKey:Ljava/lang/String; = "action"

.field private static final cancelUploadAction:Ljava/lang/String; = "cancelUpload"

.field private static final taskClassKey:Ljava/lang/String; = "taskClass"

.field private static final taskParametersKey:Ljava/lang/String; = "taskParameters"

.field private static final uploadIdKey:Ljava/lang/String; = "uploadId"


# direct methods
.method public static final getCancelUploadIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$getCancelUploadIntent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelUpload"

    .line 125
    invoke-static {p0, p1, v0}, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt;->getNotificationActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static final getNotificationActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "$this$getNotificationActionIntent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getBroadcastNotificationAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 114
    invoke-static {p0, p1, v2, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "PendingIntent.getBroadca\u2026ntent.FLAG_ONE_SHOT\n    )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getUploadIdToCancel(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$uploadIdToCancel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelUpload"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "uploadId"

    .line 130
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs getUploadTask(Landroid/content/Context;Lkotlin/Pair;I[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;)Lnet/gotev/uploadservice/UploadTask;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/Pair<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Lnet/gotev/uploadservice/UploadTask;",
            ">;",
            "Lnet/gotev/uploadservice/data/UploadTaskParameters;",
            ">;I[",
            "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
            ")",
            "Lnet/gotev/uploadservice/UploadTask;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "N/A"

    const-string v1, "$this$getUploadTask"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "creationParameters"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "observers"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnet/gotev/uploadservice/UploadTask;

    .line 90
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/gotev/uploadservice/data/UploadTaskParameters;

    .line 92
    array-length v4, p3

    invoke-static {p3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    .line 88
    invoke-virtual {v2, p0, v3, p2, p3}, Lnet/gotev/uploadservice/UploadTask;->init(Landroid/content/Context;Lnet/gotev/uploadservice/data/UploadTaskParameters;I[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;)V

    .line 87
    check-cast v1, Lnet/gotev/uploadservice/UploadTask;

    .line 96
    sget-object p0, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadService$Companion;->getTAG$uploadservice_release()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTask$1;

    invoke-direct {p2, p1}, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTask$1;-><init>(Lkotlin/Pair;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0, p2}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    sget-object p1, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/UploadService$Companion;->getTAG$uploadservice_release()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTask$2;->INSTANCE:Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTask$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0, p0, p2}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static final getUploadTaskCreationParameters(Landroid/content/Intent;)Lkotlin/Pair;
    .locals 8
    .param p0    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Class<",
            "+",
            "Lnet/gotev/uploadservice/UploadTask;",
            ">;",
            "Lnet/gotev/uploadservice/data/UploadTaskParameters;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 46
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getUploadAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "taskClass"

    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 57
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 59
    sget-object v3, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/UploadService$Companion;->getTAG$uploadservice_release()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTaskCreationParameters$taskClass$1;

    invoke-direct {v4, v1}, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTaskCreationParameters$taskClass$1;-><init>(Ljava/lang/String;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const-string v5, "N/A"

    invoke-static {v3, v5, v2, v4}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_4

    const-string v3, "try {\n        Class.forN\u2026null\n    } ?: return null"

    .line 61
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-class v3, Lnet/gotev/uploadservice/UploadTask;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    sget-object p0, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadService$Companion;->getTAG$uploadservice_release()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-instance p0, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTaskCreationParameters$2;

    invoke-direct {p0, v1}, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTaskCreationParameters$2;-><init>(Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "N/A"

    invoke-static/range {v2 .. v7}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v0

    :cond_1
    const-string v1, "taskParameters"

    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;

    if-eqz p0, :cond_3

    .line 73
    new-instance v0, Lkotlin/Pair;

    if-eqz v2, :cond_2

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.Class<out net.gotev.uploadservice.UploadTask>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_3
    sget-object p0, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadService$Companion;->getTAG$uploadservice_release()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget-object p0, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTaskCreationParameters$params$1$1;->INSTANCE:Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTaskCreationParameters$params$1$1;

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "N/A"

    invoke-static/range {v1 .. v6}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_4
    return-object v0

    .line 52
    :cond_5
    sget-object p0, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadService$Companion;->getTAG$uploadservice_release()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget-object p0, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTaskCreationParameters$taskClassString$1$1;->INSTANCE:Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTaskCreationParameters$taskClassString$1$1;

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "N/A"

    invoke-static/range {v1 .. v6}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v0

    .line 47
    :cond_6
    :goto_1
    sget-object p0, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadService$Companion;->getTAG$uploadservice_release()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget-object p0, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTaskCreationParameters$1;->INSTANCE:Lnet/gotev/uploadservice/extensions/ContextExtensionsKt$getUploadTaskCreationParameters$1;

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "N/A"

    invoke-static/range {v1 .. v6}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v0
.end method

.method public static final startNewUpload(Landroid/content/Context;Ljava/lang/Class;Lnet/gotev/uploadservice/data/UploadTaskParameters;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnet/gotev/uploadservice/data/UploadTaskParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/gotev/uploadservice/UploadTask;",
            ">;",
            "Lnet/gotev/uploadservice/data/UploadTaskParameters;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$startNewUpload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "params"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/gotev/uploadservice/UploadService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getUploadAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    move-object p1, p2

    check-cast p1, Landroid/os/Parcelable;

    const-string v0, "taskParameters"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    .line 31
    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Android Oreo and newer (API 26+) requires a notification configuration for the upload service to run. https://developer.android.com/reference/android/content/Context.html#startForegroundService(android.content.Intent)"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 36
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 39
    :goto_1
    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
