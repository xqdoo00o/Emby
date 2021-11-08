.class public final Lnet/gotev/uploadservice/protocols/multipart/UploadFileExtensionsKt;
.super Ljava/lang/Object;
.source "UploadFileExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\",\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u00062\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00018@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\",\u0010\u000b\u001a\u0004\u0018\u00010\u0001*\u00020\u00062\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00018@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\n\",\u0010\u000e\u001a\u0004\u0018\u00010\u0001*\u00020\u00062\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00018@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "PROPERTY_CONTENT_TYPE",
        "",
        "PROPERTY_PARAM_NAME",
        "PROPERTY_REMOTE_FILE_NAME",
        "value",
        "contentType",
        "Lnet/gotev/uploadservice/data/UploadFile;",
        "getContentType",
        "(Lnet/gotev/uploadservice/data/UploadFile;)Ljava/lang/String;",
        "setContentType",
        "(Lnet/gotev/uploadservice/data/UploadFile;Ljava/lang/String;)V",
        "parameterName",
        "getParameterName",
        "setParameterName",
        "remoteFileName",
        "getRemoteFileName",
        "setRemoteFileName",
        "uploadservice_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final PROPERTY_CONTENT_TYPE:Ljava/lang/String; = "multipartContentType"

.field private static final PROPERTY_PARAM_NAME:Ljava/lang/String; = "multipartParamName"

.field private static final PROPERTY_REMOTE_FILE_NAME:Ljava/lang/String; = "multipartRemoteFileName"


# direct methods
.method public static final getContentType(Lnet/gotev/uploadservice/data/UploadFile;)Ljava/lang/String;
    .locals 1
    .param p0    # Lnet/gotev/uploadservice/data/UploadFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$contentType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lnet/gotev/uploadservice/data/UploadFile;->getProperties()Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v0, "multipartContentType"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final getParameterName(Lnet/gotev/uploadservice/data/UploadFile;)Ljava/lang/String;
    .locals 1
    .param p0    # Lnet/gotev/uploadservice/data/UploadFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$parameterName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lnet/gotev/uploadservice/data/UploadFile;->getProperties()Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v0, "multipartParamName"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final getRemoteFileName(Lnet/gotev/uploadservice/data/UploadFile;)Ljava/lang/String;
    .locals 1
    .param p0    # Lnet/gotev/uploadservice/data/UploadFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$remoteFileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lnet/gotev/uploadservice/data/UploadFile;->getProperties()Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v0, "multipartRemoteFileName"

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final setContentType(Lnet/gotev/uploadservice/data/UploadFile;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lnet/gotev/uploadservice/data/UploadFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "$this$contentType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lnet/gotev/uploadservice/data/UploadFile;->getProperties()Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v0, "multipartContentType"

    invoke-static {p0, v0, p1}, Lnet/gotev/uploadservice/extensions/CollectionsExtensionsKt;->setOrRemove(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setParameterName(Lnet/gotev/uploadservice/data/UploadFile;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lnet/gotev/uploadservice/data/UploadFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "$this$parameterName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lnet/gotev/uploadservice/data/UploadFile;->getProperties()Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v0, "multipartParamName"

    invoke-static {p0, v0, p1}, Lnet/gotev/uploadservice/extensions/CollectionsExtensionsKt;->setOrRemove(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setRemoteFileName(Lnet/gotev/uploadservice/data/UploadFile;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lnet/gotev/uploadservice/data/UploadFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "$this$remoteFileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lnet/gotev/uploadservice/data/UploadFile;->getProperties()Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v0, "multipartRemoteFileName"

    invoke-static {p0, v0, p1}, Lnet/gotev/uploadservice/extensions/CollectionsExtensionsKt;->setOrRemove(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
