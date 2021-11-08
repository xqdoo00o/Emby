.class final Lnet/gotev/uploadservice/UploadServiceConfig$notificationHandlerFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UploadServiceConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/UploadServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lnet/gotev/uploadservice/UploadService;",
        "Lnet/gotev/uploadservice/observer/task/NotificationHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lnet/gotev/uploadservice/observer/task/NotificationHandler;",
        "uploadService",
        "Lnet/gotev/uploadservice/UploadService;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lnet/gotev/uploadservice/UploadServiceConfig$notificationHandlerFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/gotev/uploadservice/UploadServiceConfig$notificationHandlerFactory$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/UploadServiceConfig$notificationHandlerFactory$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadServiceConfig$notificationHandlerFactory$1;->INSTANCE:Lnet/gotev/uploadservice/UploadServiceConfig$notificationHandlerFactory$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/UploadServiceConfig$notificationHandlerFactory$1;->invoke(Lnet/gotev/uploadservice/UploadService;)Lnet/gotev/uploadservice/observer/task/NotificationHandler;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lnet/gotev/uploadservice/UploadService;)Lnet/gotev/uploadservice/observer/task/NotificationHandler;
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/UploadService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uploadService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lnet/gotev/uploadservice/observer/task/NotificationHandler;

    invoke-direct {v0, p1}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;-><init>(Lnet/gotev/uploadservice/UploadService;)V

    return-object v0
.end method
