.class Lcom/google/crypto/tink/subtle/AesUtil;
.super Ljava/lang/Object;
.source "AesUtil.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cmacPad([B)[B
    .locals 2

    .line 61
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 64
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 65
    array-length p0, p0

    const/16 v1, -0x80

    aput-byte v1, v0, p0

    return-object v0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "x must be smaller than a block."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static dbl([B)[B
    .locals 5

    .line 41
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 42
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 43
    aget-byte v3, p0, v2

    shl-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xfe

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 44
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 45
    aget-byte v3, v0, v2

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0xf

    .line 48
    aget-byte v3, v0, v2

    aget-byte p0, p0, v1

    shr-int/lit8 p0, p0, 0x7

    and-int/lit16 p0, p0, 0x87

    int-to-byte p0, p0

    xor-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-object v0
.end method
