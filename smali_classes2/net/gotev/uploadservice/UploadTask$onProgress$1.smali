.class final Lnet/gotev/uploadservice/UploadTask$onProgress$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UploadTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gotev/uploadservice/UploadTask;->onProgress(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lnet/gotev/uploadservice/UploadTask;


# direct methods
.method constructor <init>(Lnet/gotev/uploadservice/UploadTask;)V
    .locals 0

    iput-object p1, p0, Lnet/gotev/uploadservice/UploadTask$onProgress$1;->this$0:Lnet/gotev/uploadservice/UploadTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadTask$onProgress$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/UploadTask$onProgress$1;->this$0:Lnet/gotev/uploadservice/UploadTask;

    invoke-static {v1}, Lnet/gotev/uploadservice/UploadTask;->access$getUploadedBytes$p(Lnet/gotev/uploadservice/UploadTask;)J

    move-result-wide v1

    const/16 v3, 0x64

    int-to-long v3, v3

    mul-long v1, v1, v3

    iget-object v3, p0, Lnet/gotev/uploadservice/UploadTask$onProgress$1;->this$0:Lnet/gotev/uploadservice/UploadTask;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/UploadTask;->getTotalBytes()J

    move-result-wide v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "%, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/UploadTask$onProgress$1;->this$0:Lnet/gotev/uploadservice/UploadTask;

    invoke-static {v1}, Lnet/gotev/uploadservice/UploadTask;->access$getUploadedBytes$p(Lnet/gotev/uploadservice/UploadTask;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/UploadTask$onProgress$1;->this$0:Lnet/gotev/uploadservice/UploadTask;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTask;->getTotalBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
