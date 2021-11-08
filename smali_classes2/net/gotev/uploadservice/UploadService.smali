.class public final Lnet/gotev/uploadservice/UploadService;
.super Landroid/app/Service;
.source "UploadService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/UploadService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUploadService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadService.kt\nnet/gotev/uploadservice/UploadService\n*L\n1#1,252:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 (2\u00020\u0001:\u0001(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0015H\u0016J\u0008\u0010!\u001a\u00020\u0015H\u0016J\"\u0010\"\u001a\u00020#2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#H\u0016J\u0008\u0010&\u001a\u00020#H\u0002J\u000e\u0010\'\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R!\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\n\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u0008\u0018\u00010\u0012R\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lnet/gotev/uploadservice/UploadService;",
        "Landroid/app/Service;",
        "()V",
        "idleTimer",
        "Ljava/util/Timer;",
        "notificationActionsObserver",
        "Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;",
        "getNotificationActionsObserver",
        "()Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;",
        "notificationActionsObserver$delegate",
        "Lkotlin/Lazy;",
        "taskObservers",
        "",
        "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
        "getTaskObservers",
        "()[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
        "taskObservers$delegate",
        "wakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "clearIdleTimer",
        "",
        "holdForegroundNotification",
        "",
        "uploadId",
        "",
        "notification",
        "Landroid/app/Notification;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "shutdownIfThereArentAnyActiveTasks",
        "taskCompleted",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lnet/gotev/uploadservice/UploadService$Companion;

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UPLOAD_NOTIFICATION_BASE_ID:I = 0x4d2

.field private static volatile foregroundUploadId:Ljava/lang/String;

.field private static notificationIncrementalId:I

.field private static final uploadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lnet/gotev/uploadservice/UploadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private idleTimer:Ljava/util/Timer;

.field private final notificationActionsObserver$delegate:Lkotlin/Lazy;

.field private final taskObservers$delegate:Lkotlin/Lazy;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lnet/gotev/uploadservice/UploadService;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "taskObservers"

    const-string v4, "getTaskObservers()[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lnet/gotev/uploadservice/UploadService;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "notificationActionsObserver"

    const-string v4, "getNotificationActionsObserver()Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lnet/gotev/uploadservice/UploadService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/UploadService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    .line 25
    const-class v0, Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadService::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    new-instance v0, Lnet/gotev/uploadservice/UploadService$taskObservers$2;

    invoke-direct {v0, p0}, Lnet/gotev/uploadservice/UploadService$taskObservers$2;-><init>(Lnet/gotev/uploadservice/UploadService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadService;->taskObservers$delegate:Lkotlin/Lazy;

    .line 104
    new-instance v0, Lnet/gotev/uploadservice/UploadService$notificationActionsObserver$2;

    invoke-direct {v0, p0}, Lnet/gotev/uploadservice/UploadService$notificationActionsObserver$2;-><init>(Lnet/gotev/uploadservice/UploadService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadService;->notificationActionsObserver$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUploadTasksMap$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 22
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private final declared-synchronized clearIdleTimer()V
    .locals 4

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->idleTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 111
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    const-string v2, "N/A"

    sget-object v3, Lnet/gotev/uploadservice/UploadService$clearIdleTimer$1$1;->INSTANCE:Lnet/gotev/uploadservice/UploadService$clearIdleTimer$1$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2, v3}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->info(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 112
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 114
    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadService;->idleTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final getNotificationActionsObserver()Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;
    .locals 3

    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->notificationActionsObserver$delegate:Lkotlin/Lazy;

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;

    return-object v0
.end method

.method public static final declared-synchronized getTaskList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lnet/gotev/uploadservice/UploadService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadService$Companion;->getTaskList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final getTaskObservers()[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;
    .locals 3

    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->taskObservers$delegate:Lkotlin/Lazy;

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    return-object v0
.end method

.method private final declared-synchronized shutdownIfThereArentAnyActiveTasks()I
    .locals 4

    monitor-enter p0

    .line 119
    :try_start_0
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->clearIdleTimer()V

    .line 122
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    const-string v1, "N/A"

    sget-object v2, Lnet/gotev/uploadservice/UploadService$shutdownIfThereArentAnyActiveTasks$1;->INSTANCE:Lnet/gotev/uploadservice/UploadService$shutdownIfThereArentAnyActiveTasks$1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->info(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 127
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IdleTimer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v1, Lnet/gotev/uploadservice/UploadService$shutdownIfThereArentAnyActiveTasks$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lnet/gotev/uploadservice/UploadService$shutdownIfThereArentAnyActiveTasks$$inlined$apply$lambda$1;-><init>(Lnet/gotev/uploadservice/UploadService;)V

    check-cast v1, Ljava/util/TimerTask;

    .line 136
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getIdleTimeoutSeconds()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 128
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 127
    iput-object v0, p0, Lnet/gotev/uploadservice/UploadService;->idleTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    .line 139
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 142
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final stop(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lnet/gotev/uploadservice/UploadService$Companion;->stop$default(Lnet/gotev/uploadservice/UploadService$Companion;Landroid/content/Context;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final declared-synchronized stop(Landroid/content/Context;Z)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lnet/gotev/uploadservice/UploadService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {v1, p0, p1}, Lnet/gotev/uploadservice/UploadService$Companion;->stop(Landroid/content/Context;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized stopAllUploads()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lnet/gotev/uploadservice/UploadService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadService$Companion;->stopAllUploads()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized stopUpload(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lnet/gotev/uploadservice/UploadService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {v1, p0}, Lnet/gotev/uploadservice/UploadService$Companion;->stopUpload(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized holdForegroundNotification(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Notification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "uploadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->isForegroundService()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 154
    :cond_0
    :try_start_1
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->foregroundUploadId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 155
    sput-object p1, Lnet/gotev/uploadservice/UploadService;->foregroundUploadId:Ljava/lang/String;

    .line 156
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    sget-object v2, Lnet/gotev/uploadservice/UploadService$holdForegroundNotification$1;->INSTANCE:Lnet/gotev/uploadservice/UploadService$holdForegroundNotification$1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p1, v2}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 159
    :cond_1
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->foregroundUploadId:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x4d2

    .line 160
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/UploadService;->startForeground(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 161
    monitor-exit p0

    return p1

    .line 164
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 190
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 192
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lnet/gotev/uploadservice/extensions/WakeLockExtensionsKt;->acquirePartialWakeLock(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->getNotificationActionsObserver()Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;->register()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 235
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 237
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->getNotificationActionsObserver()Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/observer/request/NotificationActionsObserver;->unregister()V

    .line 238
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadService$Companion;->stopAllUploads()V

    .line 240
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->isForegroundService()Z

    move-result v0

    const-string v1, "N/A"

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    sget-object v2, Lnet/gotev/uploadservice/UploadService$onDestroy$1;->INSTANCE:Lnet/gotev/uploadservice/UploadService$onDestroy$1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/UploadService;->stopForeground(Z)V

    .line 245
    :cond_0
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lnet/gotev/uploadservice/extensions/WakeLockExtensionsKt;->safeRelease(Landroid/os/PowerManager$WakeLock;)V

    .line 247
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 249
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    sget-object v2, Lnet/gotev/uploadservice/UploadService$onDestroy$2;->INSTANCE:Lnet/gotev/uploadservice/UploadService$onDestroy$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v2}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 201
    sget-object p2, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    sget-object p3, Lnet/gotev/uploadservice/UploadService$onStartCommand$1;->INSTANCE:Lnet/gotev/uploadservice/UploadService$onStartCommand$1;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    const-string v0, "N/A"

    invoke-static {p2, v0, p3}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 205
    invoke-static {p1}, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt;->getUploadTaskCreationParameters(Landroid/content/Intent;)Lkotlin/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 208
    sget-object p2, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/gotev/uploadservice/data/UploadTaskParameters;

    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 209
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/gotev/uploadservice/data/UploadTaskParameters;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object p1, Lnet/gotev/uploadservice/UploadService$onStartCommand$2;->INSTANCE:Lnet/gotev/uploadservice/UploadService$onStartCommand$2;

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 213
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->shutdownIfThereArentAnyActiveTasks()I

    move-result p1

    return p1

    .line 218
    :cond_0
    sget p2, Lnet/gotev/uploadservice/UploadService;->notificationIncrementalId:I

    add-int/lit8 p2, p2, 0x2

    sput p2, Lnet/gotev/uploadservice/UploadService;->notificationIncrementalId:I

    .line 222
    sget p2, Lnet/gotev/uploadservice/UploadService;->notificationIncrementalId:I

    add-int/lit16 p2, p2, 0x4d2

    .line 223
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->getTaskObservers()[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    move-result-object p3

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    .line 220
    invoke-static {p0, p1, p2, p3}, Lnet/gotev/uploadservice/extensions/ContextExtensionsKt;->getUploadTask(Landroid/content/Context;Lkotlin/Pair;I[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;)Lnet/gotev/uploadservice/UploadTask;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 226
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->clearIdleTimer()V

    .line 228
    sget-object p2, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/UploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object p3

    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getThreadPool()Ljava/util/concurrent/AbstractExecutorService;

    move-result-object p2

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 224
    :cond_1
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->shutdownIfThereArentAnyActiveTasks()I

    move-result p1

    return p1

    .line 206
    :cond_2
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->shutdownIfThereArentAnyActiveTasks()I

    move-result p1

    return p1
.end method

.method public final declared-synchronized taskCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "uploadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadTask;

    .line 177
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->isForegroundService()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->foregroundUploadId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    sget-object v1, Lnet/gotev/uploadservice/UploadService$taskCompleted$1;->INSTANCE:Lnet/gotev/uploadservice/UploadService$taskCompleted$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p1, v1}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    .line 179
    check-cast p1, Ljava/lang/String;

    sput-object p1, Lnet/gotev/uploadservice/UploadService;->foregroundUploadId:Ljava/lang/String;

    .line 182
    :cond_0
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->isForegroundService()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    sget-object p1, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    const-string v0, "N/A"

    sget-object v1, Lnet/gotev/uploadservice/UploadService$taskCompleted$2;->INSTANCE:Lnet/gotev/uploadservice/UploadService$taskCompleted$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0, v1}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x1

    .line 184
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/UploadService;->stopForeground(Z)V

    .line 185
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->shutdownIfThereArentAnyActiveTasks()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
