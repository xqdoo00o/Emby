.class public final Lnet/gotev/uploadservice/data/UploadRate;
.super Ljava/lang/Object;
.source "UploadRate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0014B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lnet/gotev/uploadservice/data/UploadRate;",
        "",
        "value",
        "",
        "unit",
        "Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;",
        "(ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;)V",
        "getUnit",
        "()Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;",
        "getValue",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "UploadRateUnit",
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
.field private final unit:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2, v0}, Lnet/gotev/uploadservice/data/UploadRate;-><init>(ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;)V
    .locals 1
    .param p2    # Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/gotev/uploadservice/data/UploadRate;->value:I

    iput-object p2, p0, Lnet/gotev/uploadservice/data/UploadRate;->unit:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    return-void
.end method

.method public synthetic constructor <init>(ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 3
    sget-object p2, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;->BitPerSecond:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    :cond_1
    invoke-direct {p0, p1, p2}, Lnet/gotev/uploadservice/data/UploadRate;-><init>(ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;)V

    return-void
.end method

.method public static synthetic copy$default(Lnet/gotev/uploadservice/data/UploadRate;ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;ILjava/lang/Object;)Lnet/gotev/uploadservice/data/UploadRate;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lnet/gotev/uploadservice/data/UploadRate;->value:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lnet/gotev/uploadservice/data/UploadRate;->unit:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/data/UploadRate;->copy(ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;)Lnet/gotev/uploadservice/data/UploadRate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lnet/gotev/uploadservice/data/UploadRate;->value:I

    return v0
.end method

.method public final component2()Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadRate;->unit:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    return-object v0
.end method

.method public final copy(ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;)Lnet/gotev/uploadservice/data/UploadRate;
    .locals 1
    .param p2    # Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/gotev/uploadservice/data/UploadRate;

    invoke-direct {v0, p1, p2}, Lnet/gotev/uploadservice/data/UploadRate;-><init>(ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lnet/gotev/uploadservice/data/UploadRate;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lnet/gotev/uploadservice/data/UploadRate;

    iget v1, p0, Lnet/gotev/uploadservice/data/UploadRate;->value:I

    iget v3, p1, Lnet/gotev/uploadservice/data/UploadRate;->value:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadRate;->unit:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    iget-object p1, p1, Lnet/gotev/uploadservice/data/UploadRate;->unit:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getUnit()Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadRate;->unit:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 3
    iget v0, p0, Lnet/gotev/uploadservice/data/UploadRate;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lnet/gotev/uploadservice/data/UploadRate;->value:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadRate;->unit:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadRate(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/gotev/uploadservice/data/UploadRate;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadRate;->unit:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
