.class public final Lcom/google/android/exoplayer2/Format$AttachmentData;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentData"
.end annotation


# instance fields
.field public final data:[B

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 1692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1693
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$AttachmentData;->name:Ljava/lang/String;

    .line 1694
    iput-object p2, p0, Lcom/google/android/exoplayer2/Format$AttachmentData;->data:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1702
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1705
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Format$AttachmentData;

    .line 1706
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format$AttachmentData;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format$AttachmentData;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format$AttachmentData;->data:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format$AttachmentData;->data:[B

    .line 1707
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1713
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$AttachmentData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 1714
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format$AttachmentData;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method