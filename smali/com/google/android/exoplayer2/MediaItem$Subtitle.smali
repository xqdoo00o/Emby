.class public final Lcom/google/android/exoplayer2/MediaItem$Subtitle;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subtitle"
.end annotation


# instance fields
.field public final label:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mimeType:Ljava/lang/String;

.field public final roleFlags:I

.field public final selectionFlags:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 959
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/MediaItem$Subtitle;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 972
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/MediaItem$Subtitle;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->uri:Landroid/net/Uri;

    .line 993
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->mimeType:Ljava/lang/String;

    .line 994
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->language:Ljava/lang/String;

    .line 995
    iput p4, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->selectionFlags:I

    .line 996
    iput p5, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->roleFlags:I

    .line 997
    iput-object p6, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->label:Ljava/lang/String;

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

    .line 1005
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$Subtitle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1009
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$Subtitle;

    .line 1011
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->mimeType:Ljava/lang/String;

    .line 1012
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->language:Ljava/lang/String;

    .line 1013
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->selectionFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->selectionFlags:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->roleFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->roleFlags:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->label:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->label:Ljava/lang/String;

    .line 1016
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1021
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1022
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1023
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->language:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1024
    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->selectionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1025
    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->roleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1026
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;->label:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method
