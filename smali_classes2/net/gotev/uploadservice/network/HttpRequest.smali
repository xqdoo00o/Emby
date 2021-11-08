.class public interface abstract Lnet/gotev/uploadservice/network/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\u0011J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0016\u0010\u0008\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH&J\u0018\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lnet/gotev/uploadservice/network/HttpRequest;",
        "Ljava/io/Closeable;",
        "getResponse",
        "Lnet/gotev/uploadservice/network/ServerResponse;",
        "delegate",
        "Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;",
        "listener",
        "Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;",
        "setHeaders",
        "requestHeaders",
        "",
        "Lnet/gotev/uploadservice/data/NameValue;",
        "setTotalBodyBytes",
        "totalBodyBytes",
        "",
        "isFixedLengthStreamingMode",
        "",
        "RequestBodyDelegate",
        "uploadservice_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract getResponse(Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;)Lnet/gotev/uploadservice/network/ServerResponse;
    .param p1    # Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setHeaders(Ljava/util/List;)Lnet/gotev/uploadservice/network/HttpRequest;
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/gotev/uploadservice/data/NameValue;",
            ">;)",
            "Lnet/gotev/uploadservice/network/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setTotalBodyBytes(JZ)Lnet/gotev/uploadservice/network/HttpRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
