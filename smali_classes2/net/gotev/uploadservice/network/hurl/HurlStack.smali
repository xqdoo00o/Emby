.class public final Lnet/gotev/uploadservice/network/hurl/HurlStack;
.super Ljava/lang/Object;
.source "HurlStack.kt"

# interfaces
.implements Lnet/gotev/uploadservice/network/HttpStack;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B9\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lnet/gotev/uploadservice/network/hurl/HurlStack;",
        "Lnet/gotev/uploadservice/network/HttpStack;",
        "userAgent",
        "",
        "followRedirects",
        "",
        "useCaches",
        "connectTimeoutMillis",
        "",
        "readTimeoutMillis",
        "(Ljava/lang/String;ZZII)V",
        "newRequest",
        "Lnet/gotev/uploadservice/network/HttpRequest;",
        "uploadId",
        "method",
        "url",
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
.field private final connectTimeoutMillis:I

.field private final followRedirects:Z

.field private final readTimeoutMillis:I

.field private final useCaches:Z

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lnet/gotev/uploadservice/network/hurl/HurlStack;-><init>(Ljava/lang/String;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lnet/gotev/uploadservice/network/hurl/HurlStack;-><init>(Ljava/lang/String;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lnet/gotev/uploadservice/network/hurl/HurlStack;-><init>(Ljava/lang/String;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lnet/gotev/uploadservice/network/hurl/HurlStack;-><init>(Ljava/lang/String;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lnet/gotev/uploadservice/network/hurl/HurlStack;-><init>(Ljava/lang/String;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZII)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/network/hurl/HurlStack;->userAgent:Ljava/lang/String;

    iput-boolean p2, p0, Lnet/gotev/uploadservice/network/hurl/HurlStack;->followRedirects:Z

    iput-boolean p3, p0, Lnet/gotev/uploadservice/network/hurl/HurlStack;->useCaches:Z

    iput p4, p0, Lnet/gotev/uploadservice/network/hurl/HurlStack;->connectTimeoutMillis:I

    iput p5, p0, Lnet/gotev/uploadservice/network/hurl/HurlStack;->readTimeoutMillis:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-string p1, "AndroidUploadService/4.0.0-beta02"

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const/4 p2, 0x1

    const/4 p7, 0x1

    goto :goto_0

    :cond_1
    move p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    const/16 p4, 0x3a98

    const/16 v1, 0x3a98

    goto :goto_2

    :cond_3
    move v1, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    const/16 p5, 0x7530

    const/16 v2, 0x7530

    goto :goto_3

    :cond_4
    move v2, p5

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    .line 13
    invoke-direct/range {p2 .. p7}, Lnet/gotev/uploadservice/network/hurl/HurlStack;-><init>(Ljava/lang/String;ZZII)V

    return-void
.end method


# virtual methods
.method public newRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/network/HttpRequest;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
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

    const-string v0, "uploadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lnet/gotev/uploadservice/network/hurl/HurlStackRequest;

    .line 19
    iget-object v2, p0, Lnet/gotev/uploadservice/network/hurl/HurlStack;->userAgent:Ljava/lang/String;

    iget-boolean v6, p0, Lnet/gotev/uploadservice/network/hurl/HurlStack;->followRedirects:Z

    iget-boolean v7, p0, Lnet/gotev/uploadservice/network/hurl/HurlStack;->useCaches:Z

    .line 20
    iget v8, p0, Lnet/gotev/uploadservice/network/hurl/HurlStack;->connectTimeoutMillis:I

    iget v9, p0, Lnet/gotev/uploadservice/network/hurl/HurlStack;->readTimeoutMillis:I

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 18
    invoke-direct/range {v1 .. v9}, Lnet/gotev/uploadservice/network/hurl/HurlStackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZII)V

    check-cast v0, Lnet/gotev/uploadservice/network/HttpRequest;

    return-object v0
.end method
