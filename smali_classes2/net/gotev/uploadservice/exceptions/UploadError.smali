.class public final Lnet/gotev/uploadservice/exceptions/UploadError;
.super Ljava/lang/Throwable;
.source "Exceptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lnet/gotev/uploadservice/exceptions/UploadError;",
        "",
        "serverResponse",
        "Lnet/gotev/uploadservice/network/ServerResponse;",
        "(Lnet/gotev/uploadservice/network/ServerResponse;)V",
        "getServerResponse",
        "()Lnet/gotev/uploadservice/network/ServerResponse;",
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
.field private final serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/gotev/uploadservice/network/ServerResponse;)V
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/network/ServerResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "serverResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Upload error"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/gotev/uploadservice/exceptions/UploadError;->serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;

    return-void
.end method


# virtual methods
.method public final getServerResponse()Lnet/gotev/uploadservice/network/ServerResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    iget-object v0, p0, Lnet/gotev/uploadservice/exceptions/UploadError;->serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;

    return-object v0
.end method
