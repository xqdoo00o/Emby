.class public final Lnet/gotev/uploadservice/observer/task/NotificationHandler;
.super Ljava/lang/Object;
.source "NotificationHandler.kt"

# interfaces
.implements Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationHandler.kt\nnet/gotev/uploadservice/observer/task/NotificationHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,178:1\n1587#2,2:179\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationHandler.kt\nnet/gotev/uploadservice/observer/task/NotificationHandler\n*L\n26#1,2:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J*\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\"\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\"\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J*\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J \u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%H\u0002J0\u0010&\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020#2\u0006\u0010\'\u001a\u00020(2\u0006\u0010$\u001a\u00020%H\u0002J\u0014\u0010)\u001a\u00020!*\u00020!2\u0006\u0010*\u001a\u00020%H\u0002J\u001c\u0010+\u001a\u00020\u0011*\u00020!2\u0006\u0010,\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u001c\u0010-\u001a\u00020!*\u00020!2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0014\u0010.\u001a\u00020!*\u00020!2\u0006\u0010\'\u001a\u00020(H\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lnet/gotev/uploadservice/observer/task/NotificationHandler;",
        "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
        "service",
        "Lnet/gotev/uploadservice/UploadService;",
        "(Lnet/gotev/uploadservice/UploadService;)V",
        "notificationCreationTimeMillis",
        "",
        "getNotificationCreationTimeMillis",
        "()J",
        "notificationCreationTimeMillis$delegate",
        "Lkotlin/Lazy;",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "getNotificationManager",
        "()Landroid/app/NotificationManager;",
        "notificationManager$delegate",
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
        "ongoingNotification",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "notificationChannelId",
        "",
        "statusConfig",
        "Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;",
        "updateNotification",
        "isRingToneEnabled",
        "",
        "addActions",
        "config",
        "notify",
        "uploadId",
        "setCommonParameters",
        "setRingtoneCompat",
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


# instance fields
.field private final notificationCreationTimeMillis$delegate:Lkotlin/Lazy;

.field private final notificationManager$delegate:Lkotlin/Lazy;

.field private final service:Lnet/gotev/uploadservice/UploadService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lnet/gotev/uploadservice/observer/task/NotificationHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "notificationCreationTimeMillis"

    const-string v4, "getNotificationCreationTimeMillis()J"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lnet/gotev/uploadservice/observer/task/NotificationHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "notificationManager"

    const-string v4, "getNotificationManager()Landroid/app/NotificationManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lnet/gotev/uploadservice/UploadService;)V
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/UploadService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->service:Lnet/gotev/uploadservice/UploadService;

    .line 19
    sget-object p1, Lnet/gotev/uploadservice/observer/task/NotificationHandler$notificationCreationTimeMillis$2;->INSTANCE:Lnet/gotev/uploadservice/observer/task/NotificationHandler$notificationCreationTimeMillis$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->notificationCreationTimeMillis$delegate:Lkotlin/Lazy;

    .line 21
    new-instance p1, Lnet/gotev/uploadservice/observer/task/NotificationHandler$notificationManager$2;

    invoke-direct {p1, p0}, Lnet/gotev/uploadservice/observer/task/NotificationHandler$notificationManager$2;-><init>(Lnet/gotev/uploadservice/observer/task/NotificationHandler;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->notificationManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getService$p(Lnet/gotev/uploadservice/observer/task/NotificationHandler;)Lnet/gotev/uploadservice/UploadService;
    .locals 0

    .line 17
    iget-object p0, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->service:Lnet/gotev/uploadservice/UploadService;

    return-object p0
.end method

.method private final addActions(Landroidx/core/app/NotificationCompat$Builder;Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .param p1    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 26
    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;->getActions()Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 179
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/data/UploadNotificationAction;

    .line 26
    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadNotificationAction;->asAction()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private final getNotificationCreationTimeMillis()J
    .locals 3

    iget-object v0, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->notificationCreationTimeMillis$delegate:Lkotlin/Lazy;

    sget-object v1, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getNotificationManager()Landroid/app/NotificationManager;
    .locals 3

    iget-object v0, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->notificationManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private final notify(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 44
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->service:Lnet/gotev/uploadservice/UploadService;

    const-string v1, "this"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1}, Lnet/gotev/uploadservice/UploadService;->holdForegroundNotification(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 46
    invoke-direct {p0}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method

.method private final ongoingNotification(Ljava/lang/String;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3

    .line 72
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->service:Lnet/gotev/uploadservice/UploadService;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->getNotificationCreationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v0, "NotificationCompat.Build\u2026cationCreationTimeMillis)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1, p3, p2}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->setCommonParameters(Landroidx/core/app/NotificationCompat$Builder;Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;Lnet/gotev/uploadservice/data/UploadInfo;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 75
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "NotificationCompat.Build\u2026        .setOngoing(true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final setCommonParameters(Landroidx/core/app/NotificationCompat$Builder;Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;Lnet/gotev/uploadservice/data/UploadInfo;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2
    .param p1    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 57
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 58
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getPlaceholdersProcessor()Lnet/gotev/uploadservice/placeholders/PlaceholdersProcessor;

    move-result-object v0

    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lnet/gotev/uploadservice/placeholders/PlaceholdersProcessor;->processPlaceholders(Ljava/lang/String;Lnet/gotev/uploadservice/data/UploadInfo;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 59
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getPlaceholdersProcessor()Lnet/gotev/uploadservice/placeholders/PlaceholdersProcessor;

    move-result-object v0

    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lnet/gotev/uploadservice/placeholders/PlaceholdersProcessor;->processPlaceholders(Ljava/lang/String;Lnet/gotev/uploadservice/data/UploadInfo;)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 60
    iget-object p3, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->service:Lnet/gotev/uploadservice/UploadService;

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p2, p3}, Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;->getClickIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;->getIconResourceID()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p2}, Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;->getIconColorResourceID()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p3, "setGroup(namespace)\n    \u2026nfig.iconColorResourceID)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1, p2}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->addActions(Landroidx/core/app/NotificationCompat$Builder;Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method private final setRingtoneCompat(Landroidx/core/app/NotificationCompat$Builder;Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .param p1    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 31
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p2, v0, :cond_0

    .line 34
    iget-object p2, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->service:Lnet/gotev/uploadservice/UploadService;

    check-cast p2, Landroid/content/Context;

    const/4 v0, 0x2

    .line 33
    invoke-static {p2, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-object p1
.end method

.method private final updateNotification(ILnet/gotev/uploadservice/data/UploadInfo;Ljava/lang/String;ZLnet/gotev/uploadservice/data/UploadNotificationStatusConfig;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 87
    invoke-virtual {p5}, Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;->getAutoClear()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->service:Lnet/gotev/uploadservice/UploadService;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, v0, p5, p2}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->setCommonParameters(Landroidx/core/app/NotificationCompat$Builder;Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;Lnet/gotev/uploadservice/data/UploadInfo;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 91
    invoke-virtual {p2, p3, p3, p3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 92
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 93
    invoke-virtual {p5}, Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;->getClearOnAction()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const-string p3, "NotificationCompat.Build\u2026atusConfig.clearOnAction)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p2, p4}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->setRingtoneCompat(Landroidx/core/app/NotificationCompat$Builder;Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 95
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 99
    invoke-direct {p0}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

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

    return-void
.end method

.method public onError(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/lang/Throwable;)V
    .locals 6
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

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 156
    instance-of p4, p4, Lnet/gotev/uploadservice/exceptions/UserCancelledUploadException;

    if-eqz p4, :cond_0

    .line 157
    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getCancelled()Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;

    move-result-object p4

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getError()Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;

    move-result-object p4

    :goto_0
    move-object v5, p4

    .line 165
    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->isRingToneEnabled()Z

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    .line 162
    invoke-direct/range {v0 .. v5}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->updateNotification(ILnet/gotev/uploadservice/data/UploadInfo;Ljava/lang/String;ZLnet/gotev/uploadservice/data/UploadNotificationStatusConfig;)V

    :cond_1
    return-void
.end method

.method public onProgress(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .locals 3
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 126
    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getProgress()Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;

    move-result-object p3

    invoke-direct {p0, v0, p1, p3}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->ongoingNotification(Ljava/lang/String;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const/16 v0, 0x64

    .line 127
    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadInfo;->getProgressPercent()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const-string v0, "ongoingNotification(conf\u2026o.progressPercent, false)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1, p2}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->notify(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStart(Lnet/gotev/uploadservice/data/UploadInfo;ILnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .locals 3
    .param p1    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 110
    invoke-direct {p0}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The provided notification channel ID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getNotificationChannelId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " does not exist! You must create it at app startup and before Upload Service!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getProgress()Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;

    move-result-object p3

    invoke-direct {p0, v0, p1, p3}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->ongoingNotification(Ljava/lang/String;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 115
    invoke-virtual {p3, v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const-string v0, "ongoingNotification(conf\u2026setProgress(100, 0, true)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1, p2}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->notify(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;I)V

    :cond_2
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

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 142
    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->isRingToneEnabled()Z

    move-result v5

    .line 144
    invoke-virtual {p3}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getSuccess()Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;

    move-result-object v6

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    .line 139
    invoke-direct/range {v1 .. v6}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->updateNotification(ILnet/gotev/uploadservice/data/UploadInfo;Ljava/lang/String;ZLnet/gotev/uploadservice/data/UploadNotificationStatusConfig;)V

    :cond_0
    return-void
.end method
