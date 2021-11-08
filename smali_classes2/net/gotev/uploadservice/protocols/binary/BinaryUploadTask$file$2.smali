.class final Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask$file$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BinaryUploadTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;",
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
        "Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;",
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
.field final synthetic this$0:Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;


# direct methods
.method constructor <init>(Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;)V
    .locals 0

    iput-object p1, p0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask$file$2;->this$0:Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask$file$2;->invoke()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    iget-object v0, p0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask$file$2;->this$0:Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;->getParams()Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->getFiles()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/data/UploadFile;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadFile;->getHandler()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;

    move-result-object v0

    return-object v0
.end method
