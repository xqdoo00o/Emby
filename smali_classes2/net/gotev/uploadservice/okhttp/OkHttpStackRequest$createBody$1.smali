.class public final Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1;
.super Lokhttp3/RequestBody;
.source "OkHttpStackRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->createBody(Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpStackRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpStackRequest.kt\nnet/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1\n*L\n1#1,106:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "net/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1",
        "Lokhttp3/RequestBody;",
        "contentLength",
        "",
        "contentType",
        "Lokhttp3/MediaType;",
        "writeTo",
        "",
        "sink",
        "Lokio/BufferedSink;",
        "uploadservice-okhttp_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $delegate:Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;

.field final synthetic $listener:Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;

.field final synthetic this$0:Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;


# direct methods
.method constructor <init>(Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;",
            "Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;",
            ")V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1;->this$0:Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;

    iput-object p2, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1;->$listener:Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;

    iput-object p3, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1;->$delegate:Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 70
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1;->this$0:Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;

    invoke-static {v0}, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->access$getBodyLength$p(Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 72
    iget-object v0, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1;->this$0:Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;

    invoke-static {v0}, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;->access$getContentType$p(Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 3
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lnet/gotev/uploadservice/okhttp/OkHttpBodyWriter;

    iget-object v1, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1;->$listener:Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;

    invoke-direct {v0, p1, v1}, Lnet/gotev/uploadservice/okhttp/OkHttpBodyWriter;-><init>(Lokio/BufferedSink;Lnet/gotev/uploadservice/network/BodyWriter$OnStreamWriteListener;)V

    check-cast v0, Ljava/io/Closeable;

    const/4 p1, 0x0

    check-cast p1, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lnet/gotev/uploadservice/okhttp/OkHttpBodyWriter;

    .line 76
    iget-object v2, p0, Lnet/gotev/uploadservice/okhttp/OkHttpStackRequest$createBody$1;->$delegate:Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;

    check-cast v1, Lnet/gotev/uploadservice/network/BodyWriter;

    invoke-interface {v2, v1}, Lnet/gotev/uploadservice/network/HttpRequest$RequestBodyDelegate;->onWriteRequestBody(Lnet/gotev/uploadservice/network/BodyWriter;)V

    .line 77
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
