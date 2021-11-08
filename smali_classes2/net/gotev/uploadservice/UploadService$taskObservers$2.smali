.class final Lnet/gotev/uploadservice/UploadService$taskObservers$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UploadService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gotev/uploadservice/UploadService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;",
        "invoke",
        "()[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gotev/uploadservice/UploadService;


# direct methods
.method constructor <init>(Lnet/gotev/uploadservice/UploadService;)V
    .locals 0

    iput-object p1, p0, Lnet/gotev/uploadservice/UploadService$taskObservers$2;->this$0:Lnet/gotev/uploadservice/UploadService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadService$taskObservers$2;->invoke()[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    .line 97
    new-array v0, v0, [Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    .line 98
    new-instance v1, Lnet/gotev/uploadservice/observer/task/BroadcastEmitter;

    iget-object v2, p0, Lnet/gotev/uploadservice/UploadService$taskObservers$2;->this$0:Lnet/gotev/uploadservice/UploadService;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lnet/gotev/uploadservice/observer/task/BroadcastEmitter;-><init>(Landroid/content/Context;)V

    check-cast v1, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 99
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getNotificationHandlerFactory()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/UploadService$taskObservers$2;->this$0:Lnet/gotev/uploadservice/UploadService;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 100
    new-instance v1, Lnet/gotev/uploadservice/observer/task/TaskCompletionNotifier;

    iget-object v2, p0, Lnet/gotev/uploadservice/UploadService$taskObservers$2;->this$0:Lnet/gotev/uploadservice/UploadService;

    invoke-direct {v1, v2}, Lnet/gotev/uploadservice/observer/task/TaskCompletionNotifier;-><init>(Lnet/gotev/uploadservice/UploadService;)V

    check-cast v1, Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
