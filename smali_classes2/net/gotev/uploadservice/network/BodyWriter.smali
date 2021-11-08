.class public abstract Lnet/gotev/uploadservice/network/BodyWriter;
.super Ljava/lang/Object;
.source "BodyWriter.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBodyWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BodyWriter.kt\nnet/gotev/uploadservice/network/BodyWriter\n*L\n1#1,85:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH&J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u000e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lnet/gotev/uploadservice/network/BodyWriter;",
        "Ljava/io/Closeable;",
        "listener",
        "Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;",
        "(Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;)V",
        "flush",
        "",
        "internalWrite",
        "bytes",
        "",
        "lengthToWriteFromStart",
        "",
        "write",
        "writeStream",
        "stream",
        "Ljava/io/InputStream;",
        "OnStreamWriteListener",
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
.field private final listener:Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;


# direct methods
.method public constructor <init>(Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;)V
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/network/BodyWriter;->listener:Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;

    return-void
.end method


# virtual methods
.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract internalWrite([B)V
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract internalWrite([BI)V
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final write([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/network/BodyWriter;->internalWrite([B)V

    .line 54
    invoke-virtual {p0}, Lnet/gotev/uploadservice/network/BodyWriter;->flush()V

    .line 55
    iget-object v0, p0, Lnet/gotev/uploadservice/network/BodyWriter;->listener:Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;

    array-length p1, p1

    invoke-interface {v0, p1}, Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;->onBytesWritten(I)V

    return-void
.end method

.method public final write([BI)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/network/BodyWriter;->internalWrite([BI)V

    .line 67
    invoke-virtual {p0}, Lnet/gotev/uploadservice/network/BodyWriter;->flush()V

    .line 68
    iget-object p1, p0, Lnet/gotev/uploadservice/network/BodyWriter;->listener:Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;

    invoke-interface {p1, p2}, Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;->onBytesWritten(I)V

    return-void
.end method

.method public final writeStream(Ljava/io/InputStream;)V
    .locals 5
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getBufferSizeBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 37
    check-cast p1, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p1

    check-cast v2, Ljava/io/InputStream;

    .line 38
    :goto_0
    iget-object v3, p0, Lnet/gotev/uploadservice/network/BodyWriter;->listener:Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;

    invoke-interface {v3}, Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;->shouldContinueWriting()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 39
    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p0, v0, v3}, Lnet/gotev/uploadservice/network/BodyWriter;->write([BI)V

    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
