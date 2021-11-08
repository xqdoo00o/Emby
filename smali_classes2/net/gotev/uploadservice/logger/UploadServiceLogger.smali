.class public final Lnet/gotev/uploadservice/logger/UploadServiceLogger;
.super Ljava/lang/Object;
.source "UploadServiceLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;,
        Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010H\u0007J2\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010H\u0007J&\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010H\u0007J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J\u0012\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0010\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lnet/gotev/uploadservice/logger/UploadServiceLogger;",
        "",
        "()V",
        "NA",
        "",
        "defaultLogger",
        "Lnet/gotev/uploadservice/logger/DefaultLoggerDelegate;",
        "logLevel",
        "Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;",
        "loggerDelegate",
        "Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;",
        "debug",
        "",
        "component",
        "uploadId",
        "message",
        "Lkotlin/Function0;",
        "error",
        "exception",
        "",
        "info",
        "loggerWithLevel",
        "minLevel",
        "setDelegate",
        "delegate",
        "setDevelopmentMode",
        "devModeOn",
        "",
        "setLogLevel",
        "level",
        "Delegate",
        "LogLevel",
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
.field public static final INSTANCE:Lnet/gotev/uploadservice/logger/UploadServiceLogger;

.field public static final NA:Ljava/lang/String; = "N/A"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultLogger:Lnet/gotev/uploadservice/logger/DefaultLoggerDelegate;

.field private static logLevel:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;

.field private static loggerDelegate:Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;

    invoke-direct {v0}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->INSTANCE:Lnet/gotev/uploadservice/logger/UploadServiceLogger;

    .line 4
    sget-object v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;->Off:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;

    sput-object v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->logLevel:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;

    .line 5
    new-instance v0, Lnet/gotev/uploadservice/logger/DefaultLoggerDelegate;

    invoke-direct {v0}, Lnet/gotev/uploadservice/logger/DefaultLoggerDelegate;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->defaultLogger:Lnet/gotev/uploadservice/logger/DefaultLoggerDelegate;

    .line 6
    sget-object v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->defaultLogger:Lnet/gotev/uploadservice/logger/DefaultLoggerDelegate;

    check-cast v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;

    sput-object v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->loggerDelegate:Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final debug(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "component"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->INSTANCE:Lnet/gotev/uploadservice/logger/UploadServiceLogger;

    sget-object v1, Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;->Debug:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->loggerWithLevel(Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;)Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "component"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->INSTANCE:Lnet/gotev/uploadservice/logger/UploadServiceLogger;

    sget-object v1, Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;->Error:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->loggerWithLevel(Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;)Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {v0, p0, p1, p3, p2}, Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static final error(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic error$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 46
    check-cast p2, Ljava/lang/Throwable;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final info(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "component"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->INSTANCE:Lnet/gotev/uploadservice/logger/UploadServiceLogger;

    sget-object v1, Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;->Info:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->loggerWithLevel(Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;)Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final loggerWithLevel(Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;)Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;
    .locals 1

    .line 42
    sget-object v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->logLevel:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_1

    sget-object p1, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->logLevel:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;

    sget-object v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;->Off:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->loggerDelegate:Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public static final declared-synchronized setDelegate(Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;)V
    .locals 1
    .param p0    # Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;

    monitor-enter v0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    :try_start_0
    sget-object p0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->defaultLogger:Lnet/gotev/uploadservice/logger/DefaultLoggerDelegate;

    check-cast p0, Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;

    :goto_0
    sput-object p0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->loggerDelegate:Lnet/gotev/uploadservice/logger/UploadServiceLogger$Delegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized setDevelopmentMode(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 38
    :try_start_0
    sget-object p0, Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;->Debug:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;->Off:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;

    :goto_0
    sput-object p0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->logLevel:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized setLogLevel(Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;)V
    .locals 2
    .param p0    # Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;

    monitor-enter v0

    :try_start_0
    const-string v1, "level"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sput-object p0, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->logLevel:Lnet/gotev/uploadservice/logger/UploadServiceLogger$LogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
