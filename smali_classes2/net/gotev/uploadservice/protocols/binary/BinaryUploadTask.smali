.class public final Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;
.super Lnet/gotev/uploadservice/HttpUploadTask;
.source "BinaryUploadTask.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinaryUploadTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinaryUploadTask.kt\nnet/gotev/uploadservice/protocols/binary/BinaryUploadTask\n*L\n1#1,19:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;",
        "Lnet/gotev/uploadservice/HttpUploadTask;",
        "()V",
        "bodyLength",
        "",
        "getBodyLength",
        "()J",
        "file",
        "Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;",
        "getFile",
        "()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;",
        "file$delegate",
        "Lkotlin/Lazy;",
        "onWriteRequestBody",
        "",
        "bodyWriter",
        "Lnet/gotev/uploadservice/network/BodyWriter;",
        "uploadservice_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final file$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "file"

    const-string v4, "getFile()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lnet/gotev/uploadservice/HttpUploadTask;-><init>()V

    .line 10
    new-instance v0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask$file$2;

    invoke-direct {v0, p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask$file$2;-><init>(Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;->file$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getFile()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;
    .locals 3

    iget-object v0, p0, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;->file$delegate:Lkotlin/Lazy;

    sget-object v1, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;

    return-object v0
.end method


# virtual methods
.method public getBodyLength()J
    .locals 2

    .line 13
    invoke-direct {p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;->getFile()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;

    move-result-object v0

    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;->size(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onWriteRequestBody(Lnet/gotev/uploadservice/network/BodyWriter;)V
    .locals 2
    .param p1    # Lnet/gotev/uploadservice/network/BodyWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bodyWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;->getFile()Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;

    move-result-object v0

    invoke-virtual {p0}, Lnet/gotev/uploadservice/protocols/binary/BinaryUploadTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/gotev/uploadservice/schemehandlers/SchemeHandler;->stream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/gotev/uploadservice/network/BodyWriter;->writeStream(Ljava/io/InputStream;)V

    return-void
.end method
