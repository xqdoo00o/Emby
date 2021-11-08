.class public Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationActionsObserver.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationActionsObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationActionsObserver.kt\nnet/gotev/uploadservice/observer/request/NotificationActionsObserver\n*L\n1#1,44:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u001c\u0010\t\u001a\u00020\u00062\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0006\u0010\n\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;",
        "Landroid/content/BroadcastReceiver;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "onActionIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "onReceive",
        "register",
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onActionIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt;->getUploadIdToCancel(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    const-class v0, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationActionsObserver::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver$onActionIntent$1$1;->INSTANCE:Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver$onActionIntent$1$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p1, v1}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->info(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 26
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {v0, p1}, Lnet/gotev/uploadservice/UploadService$Companion;->stopUpload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getBroadcastNotificationAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    return-void

    .line 18
    :cond_1
    invoke-virtual {p0, p2}, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;->onActionIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final register()V
    .locals 3

    .line 31
    iget-object v0, p0, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;->context:Landroid/content/Context;

    move-object v1, p0

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getBroadcastNotificationActionIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    const-class v0, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationActionsObserver::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver$register$1;->INSTANCE:Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver$register$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string v2, "N/A"

    invoke-static {v0, v2, v1}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final unregister()V
    .locals 3

    .line 38
    iget-object v0, p0, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;->context:Landroid/content/Context;

    move-object v1, p0

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 39
    const-class v0, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationActionsObserver::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver$unregister$1;->INSTANCE:Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver$unregister$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string v2, "N/A"

    invoke-static {v0, v2, v1}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
