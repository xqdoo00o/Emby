.class final Lnet/gotev/uploadservice/observer/task/NotificationHandler$notificationManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gotev/uploadservice/observer/task/NotificationHandler;-><init>(Lnet/gotev/uploadservice/UploadService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/app/NotificationManager;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/app/NotificationManager;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gotev/uploadservice/observer/task/NotificationHandler;


# direct methods
.method constructor <init>(Lnet/gotev/uploadservice/observer/task/NotificationHandler;)V
    .locals 0

    iput-object p1, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler$notificationManager$2;->this$0:Lnet/gotev/uploadservice/observer/task/NotificationHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/app/NotificationManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget-object v0, p0, Lnet/gotev/uploadservice/observer/task/NotificationHandler$notificationManager$2;->this$0:Lnet/gotev/uploadservice/observer/task/NotificationHandler;

    invoke-static {v0}, Lnet/gotev/uploadservice/observer/task/NotificationHandler;->access$getService$p(Lnet/gotev/uploadservice/observer/task/NotificationHandler;)Lnet/gotev/uploadservice/UploadService;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lnet/gotev/uploadservice/observer/task/NotificationHandler$notificationManager$2;->invoke()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method
