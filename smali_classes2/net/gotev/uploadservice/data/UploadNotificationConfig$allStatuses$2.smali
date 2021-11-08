.class final Lnet/gotev/uploadservice/data/UploadNotificationConfig$allStatuses$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UploadNotificationConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gotev/uploadservice/data/UploadNotificationConfig;-><init>(Ljava/lang/String;ZLnet/gotev/uploadservice/data/UploadNotificationStatusConfig;Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;)V
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
        "Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;",
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
        "Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;",
        "invoke",
        "()[Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gotev/uploadservice/data/UploadNotificationConfig;


# direct methods
.method constructor <init>(Lnet/gotev/uploadservice/data/UploadNotificationConfig;)V
    .locals 0

    iput-object p1, p0, Lnet/gotev/uploadservice/data/UploadNotificationConfig$allStatuses$2;->this$0:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lnet/gotev/uploadservice/data/UploadNotificationConfig$allStatuses$2;->invoke()[Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x4

    .line 35
    new-array v0, v0, [Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadNotificationConfig$allStatuses$2;->this$0:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getProgress()Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadNotificationConfig$allStatuses$2;->this$0:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getSuccess()Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadNotificationConfig$allStatuses$2;->this$0:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getError()Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadNotificationConfig$allStatuses$2;->this$0:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadNotificationConfig;->getCancelled()Lnet/gotev/uploadservice/data/UploadNotificationStatusConfig;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method
