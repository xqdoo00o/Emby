.class public final Lnet/gotev/uploadservice/data/RetryPolicyConfig;
.super Ljava/lang/Object;
.source "RetryPolicyConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lnet/gotev/uploadservice/data/RetryPolicyConfig;",
        "",
        "initialWaitTimeSeconds",
        "",
        "maxWaitTimeSeconds",
        "multiplier",
        "defaultMaxRetries",
        "(IIII)V",
        "getDefaultMaxRetries",
        "()I",
        "getInitialWaitTimeSeconds",
        "getMaxWaitTimeSeconds",
        "getMultiplier",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final defaultMaxRetries:I

.field private final initialWaitTimeSeconds:I

.field private final maxWaitTimeSeconds:I

.field private final multiplier:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnet/gotev/uploadservice/data/RetryPolicyConfig;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->initialWaitTimeSeconds:I

    iput p2, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->maxWaitTimeSeconds:I

    iput p3, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->multiplier:I

    iput p4, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->defaultMaxRetries:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/16 p2, 0x64

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x2

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x3

    .line 30
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/gotev/uploadservice/data/RetryPolicyConfig;-><init>(IIII)V

    return-void
.end method

.method public static synthetic copy$default(Lnet/gotev/uploadservice/data/RetryPolicyConfig;IIIIILjava/lang/Object;)Lnet/gotev/uploadservice/data/RetryPolicyConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->initialWaitTimeSeconds:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->maxWaitTimeSeconds:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->multiplier:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->defaultMaxRetries:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->copy(IIII)Lnet/gotev/uploadservice/data/RetryPolicyConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->initialWaitTimeSeconds:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->maxWaitTimeSeconds:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->multiplier:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->defaultMaxRetries:I

    return v0
.end method

.method public final copy(IIII)Lnet/gotev/uploadservice/data/RetryPolicyConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lnet/gotev/uploadservice/data/RetryPolicyConfig;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lnet/gotev/uploadservice/data/RetryPolicyConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lnet/gotev/uploadservice/data/RetryPolicyConfig;

    iget v1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->initialWaitTimeSeconds:I

    iget v3, p1, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->initialWaitTimeSeconds:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->maxWaitTimeSeconds:I

    iget v3, p1, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->maxWaitTimeSeconds:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget v1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->multiplier:I

    iget v3, p1, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->multiplier:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->defaultMaxRetries:I

    iget p1, p1, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->defaultMaxRetries:I

    if-ne v1, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getDefaultMaxRetries()I
    .locals 1

    .line 30
    iget v0, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->defaultMaxRetries:I

    return v0
.end method

.method public final getInitialWaitTimeSeconds()I
    .locals 1

    .line 9
    iget v0, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->initialWaitTimeSeconds:I

    return v0
.end method

.method public final getMaxWaitTimeSeconds()I
    .locals 1

    .line 17
    iget v0, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->maxWaitTimeSeconds:I

    return v0
.end method

.method public final getMultiplier()I
    .locals 1

    .line 25
    iget v0, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->multiplier:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->initialWaitTimeSeconds:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->maxWaitTimeSeconds:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->multiplier:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->defaultMaxRetries:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"initialWaitTimeSeconds\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->initialWaitTimeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"maxWaitTimeSeconds\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->maxWaitTimeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"multiplier\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->multiplier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"defaultMaxRetries\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/gotev/uploadservice/data/RetryPolicyConfig;->defaultMaxRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
