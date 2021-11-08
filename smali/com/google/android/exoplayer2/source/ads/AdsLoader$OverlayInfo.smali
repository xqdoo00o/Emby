.class public final Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverlayInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo$Purpose;
    }
.end annotation


# static fields
.field public static final PURPOSE_CLOSE_AD:I = 0x1

.field public static final PURPOSE_CONTROLS:I = 0x0

.field public static final PURPOSE_NOT_VISIBLE:I = 0x3

.field public static final PURPOSE_OTHER:I = 0x2


# instance fields
.field public final purpose:I

.field public final reasonDetail:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;-><init>(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;->view:Landroid/view/View;

    .line 163
    iput p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;->purpose:I

    .line 164
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;->reasonDetail:Ljava/lang/String;

    return-void
.end method
