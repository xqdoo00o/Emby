.class public final Lnet/gotev/uploadservice/UploadService$shutdownIfThereArentAnyActiveTasks$$inlined$apply$lambda$1;
.super Ljava/util/TimerTask;
.source "UploadService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gotev/uploadservice/UploadService;->shutdownIfThereArentAnyActiveTasks()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "net/gotev/uploadservice/UploadService$shutdownIfThereArentAnyActiveTasks$2$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
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
.field final synthetic this$0:Lnet/gotev/uploadservice/UploadService;


# direct methods
.method constructor <init>(Lnet/gotev/uploadservice/UploadService;)V
    .locals 0

    iput-object p1, p0, Lnet/gotev/uploadservice/UploadService$shutdownIfThereArentAnyActiveTasks$$inlined$apply$lambda$1;->this$0:Lnet/gotev/uploadservice/UploadService;

    .line 128
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 130
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->Companion:Lnet/gotev/uploadservice/UploadService$Companion;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadService$Companion;->getTAG$uploadservice_release()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/gotev/uploadservice/UploadService$shutdownIfThereArentAnyActiveTasks$2$1$run$1;->INSTANCE:Lnet/gotev/uploadservice/UploadService$shutdownIfThereArentAnyActiveTasks$2$1$run$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string v2, "N/A"

    invoke-static {v0, v2, v1}, Lnet/gotev/uploadservice/logger/UploadServiceLogger;->info(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 134
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService$shutdownIfThereArentAnyActiveTasks$$inlined$apply$lambda$1;->this$0:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadService;->stopSelf()V

    return-void
.end method
