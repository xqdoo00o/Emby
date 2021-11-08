.class public Lnet/gotev/uploadservice/placeholders/DefaultPlaceholdersProcessor;
.super Ljava/lang/Object;
.source "DefaultPlaceholdersProcessor.kt"

# interfaces
.implements Lnet/gotev/uploadservice/placeholders/PlaceholdersProcessor;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\tH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lnet/gotev/uploadservice/placeholders/DefaultPlaceholdersProcessor;",
        "Lnet/gotev/uploadservice/placeholders/PlaceholdersProcessor;",
        "()V",
        "processPlaceholders",
        "",
        "message",
        "uploadInfo",
        "Lnet/gotev/uploadservice/data/UploadInfo;",
        "remainingFiles",
        "",
        "totalFiles",
        "uploadElapsedTime",
        "Lnet/gotev/uploadservice/data/UploadElapsedTime;",
        "uploadProgress",
        "percent",
        "uploadRate",
        "Lnet/gotev/uploadservice/data/UploadRate;",
        "uploadedFiles",
        "uploadservice_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPlaceholders(Ljava/lang/String;Lnet/gotev/uploadservice/data/UploadInfo;)Ljava/lang/String;
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "uploadInfo"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual/range {p2 .. p2}, Lnet/gotev/uploadservice/data/UploadInfo;->getSuccessfullyUploadedFiles()I

    move-result v1

    .line 35
    invoke-virtual/range {p2 .. p2}, Lnet/gotev/uploadservice/data/UploadInfo;->getFiles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v10, v9, v1

    .line 39
    sget-object v3, Lnet/gotev/uploadservice/placeholders/Placeholder;->ElapsedTime:Lnet/gotev/uploadservice/placeholders/Placeholder;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/placeholders/Placeholder;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lnet/gotev/uploadservice/data/UploadInfo;->getElapsedTime()Lnet/gotev/uploadservice/data/UploadElapsedTime;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/gotev/uploadservice/placeholders/DefaultPlaceholdersProcessor;->uploadElapsedTime(Lnet/gotev/uploadservice/data/UploadElapsedTime;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 40
    sget-object v3, Lnet/gotev/uploadservice/placeholders/Placeholder;->UploadRate:Lnet/gotev/uploadservice/placeholders/Placeholder;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/placeholders/Placeholder;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lnet/gotev/uploadservice/data/UploadInfo;->getUploadRate()Lnet/gotev/uploadservice/data/UploadRate;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/gotev/uploadservice/placeholders/DefaultPlaceholdersProcessor;->uploadRate(Lnet/gotev/uploadservice/data/UploadRate;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 41
    sget-object v4, Lnet/gotev/uploadservice/placeholders/Placeholder;->Progress:Lnet/gotev/uploadservice/placeholders/Placeholder;

    invoke-virtual {v4}, Lnet/gotev/uploadservice/placeholders/Placeholder;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lnet/gotev/uploadservice/data/UploadInfo;->getProgressPercent()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/gotev/uploadservice/placeholders/DefaultPlaceholdersProcessor;->uploadProgress(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 42
    sget-object v2, Lnet/gotev/uploadservice/placeholders/Placeholder;->UploadedFiles:Lnet/gotev/uploadservice/placeholders/Placeholder;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/placeholders/Placeholder;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/placeholders/DefaultPlaceholdersProcessor;->uploadedFiles(I)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    sget-object v2, Lnet/gotev/uploadservice/placeholders/Placeholder;->RemainingFiles:Lnet/gotev/uploadservice/placeholders/Placeholder;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/placeholders/Placeholder;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10}, Lnet/gotev/uploadservice/placeholders/DefaultPlaceholdersProcessor;->remainingFiles(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 44
    sget-object v1, Lnet/gotev/uploadservice/placeholders/Placeholder;->TotalFiles:Lnet/gotev/uploadservice/placeholders/Placeholder;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/placeholders/Placeholder;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9}, Lnet/gotev/uploadservice/placeholders/DefaultPlaceholdersProcessor;->totalFiles(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public remainingFiles(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public totalFiles(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public uploadElapsedTime(Lnet/gotev/uploadservice/data/UploadElapsedTime;)Ljava/lang/String;
    .locals 3
    .param p1    # Lnet/gotev/uploadservice/data/UploadElapsedTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uploadElapsedTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadElapsedTime;->getMinutes()I

    move-result v0

    const-string v1, " sec"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadElapsedTime;->getSeconds()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadElapsedTime;->getMinutes()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " min "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadElapsedTime;->getSeconds()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public uploadProgress(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public uploadRate(Lnet/gotev/uploadservice/data/UploadRate;)Ljava/lang/String;
    .locals 2
    .param p1    # Lnet/gotev/uploadservice/data/UploadRate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uploadRate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadRate;->getUnit()Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    move-result-object v0

    sget-object v1, Lnet/gotev/uploadservice/placeholders/DefaultPlaceholdersProcessor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "Mb/s"

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const-string v0, "kb/s"

    goto :goto_0

    :cond_2
    const-string v0, "b/s"

    .line 20
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/gotev/uploadservice/data/UploadRate;->getValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public uploadedFiles(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
