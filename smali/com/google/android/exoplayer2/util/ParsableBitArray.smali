.class public final Lcom/google/android/exoplayer2/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 47
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    .line 58
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .line 349
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-void
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public byteAlign()V
    .locals 1

    .line 248
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 252
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 253
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public getBytePosition()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    return v0
.end method

.method public getPosition()I
    .locals 2

    .line 105
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public putInt(II)V
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ge p2, v1, :cond_0

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    .line 324
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 325
    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v1

    const v5, 0xff00

    shr-int v3, v5, v3

    shl-int v5, v0, v4

    sub-int/2addr v5, v0

    or-int/2addr v3, v5

    .line 327
    iget-object v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v7, v5, v6

    and-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    sub-int v1, p2, v1

    ushr-int v3, p1, v1

    .line 329
    aget-byte v7, v5, v6

    shl-int/2addr v3, v4

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    add-int/2addr v6, v0

    :goto_0
    if-le v1, v2, :cond_1

    .line 334
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v1, -0x8

    ushr-int v5, p1, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    add-int/lit8 v1, v1, -0x8

    move v6, v4

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v1

    .line 338
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    aget-byte v4, v3, v6

    shl-int v5, v0, v2

    sub-int/2addr v5, v0

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    .line 341
    aget-byte v0, v3, v6

    shl-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v3, v6

    .line 343
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 344
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public readBit()Z
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    return v0
.end method

.method public readBits(I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 178
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/4 v1, 0x0

    .line 179
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x8

    .line 180
    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 181
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    goto :goto_0

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    const/4 v4, -0x1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_2

    .line 186
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v5, v5, 0x1

    .line 187
    iput v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 189
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return p1
.end method

.method public readBits([BII)V
    .locals 7

    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    :goto_0
    const/16 v1, 0xff

    const/16 v2, 0x8

    if-ge p2, v0, :cond_0

    .line 219
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v3, v4

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 220
    aget-byte v4, p1, p2

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v3, v3, v6

    and-int/2addr v1, v3

    sub-int/2addr v2, v5

    shr-int/2addr v1, v2

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p3, 0x7

    if-nez p2, :cond_1

    return-void

    .line 228
    :cond_1
    aget-byte p3, p1, v0

    shr-int v3, v1, p2

    and-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    .line 229
    iget p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int v3, p3, p2

    if-le v3, v2, :cond_2

    .line 231
    aget-byte v3, p1, v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/2addr v4, v1

    shl-int/2addr v4, p3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    sub-int/2addr p3, v2

    .line 232
    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 234
    :cond_2
    iget p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 235
    iget-object p3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte p3, p3, v3

    and-int/2addr p3, v1

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v4, v1, 0x8

    shr-int/2addr p3, v4

    .line 236
    aget-byte v4, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, p3, p2

    int-to-byte p2, p2

    or-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne v1, v2, :cond_3

    const/4 p1, 0x0

    .line 238
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v3, v3, 0x1

    .line 239
    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public readBitsToLong(I)J
    .locals 2

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sub-int/2addr p1, v0

    .line 203
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->toLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public readBytes([BII)V
    .locals 2

    .line 267
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 270
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public readBytesAsString(I)Ljava/lang/String;
    .locals 1

    .line 293
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 305
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 306
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    .line 307
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public reset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 2

    .line 77
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 78
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    return-void
.end method

.method public reset([B)V
    .locals 1

    .line 67
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    return-void
.end method

.method public reset([BI)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 90
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 91
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 124
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 125
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 126
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public skipBit()V
    .locals 2

    .line 133
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public skipBits(I)V
    .locals 2

    .line 146
    div-int/lit8 v0, p1, 0x8

    .line 147
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 148
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 149
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    .line 150
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 p1, p1, -0x8

    .line 151
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public skipBytes(I)V
    .locals 1

    .line 280
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 281
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteOffset:I

    .line 282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method
