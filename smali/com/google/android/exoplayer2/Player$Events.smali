.class public final Lcom/google/android/exoplayer2/Player$Events;
.super Lcom/google/android/exoplayer2/util/MutableFlags;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 703
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/MutableFlags;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 0

    .line 713
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/util/MutableFlags;->contains(I)Z

    move-result p1

    return p1
.end method

.method public varargs containsAny([I)Z
    .locals 0

    .line 725
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/util/MutableFlags;->containsAny([I)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .locals 0

    .line 741
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/util/MutableFlags;->get(I)I

    move-result p1

    return p1
.end method
