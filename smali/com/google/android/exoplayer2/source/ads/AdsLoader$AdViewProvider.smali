.class public interface abstract Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdViewProvider"
.end annotation


# virtual methods
.method public abstract getAdOverlayInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdOverlayViews()[Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAdViewGroup()Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
