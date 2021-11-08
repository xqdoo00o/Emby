.class public final synthetic Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider$-CC;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# direct methods
.method public static $default$getAdOverlayInfos(Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;)Ljava/util/List;
    .locals 7
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 112
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;->getAdOverlayViews()[Landroid/view/View;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 113
    new-instance v6, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;

    invoke-direct {v6, v5, v3}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getAdOverlayViews(Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;)[Landroid/view/View;
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 95
    new-array v0, v0, [Landroid/view/View;

    return-object v0
.end method
