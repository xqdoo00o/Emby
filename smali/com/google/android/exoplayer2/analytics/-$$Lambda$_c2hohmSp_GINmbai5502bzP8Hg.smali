.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$_c2hohmSp_GINmbai5502bzP8Hg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/analytics/-$$Lambda$_c2hohmSp_GINmbai5502bzP8Hg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$_c2hohmSp_GINmbai5502bzP8Hg;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/-$$Lambda$_c2hohmSp_GINmbai5502bzP8Hg;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$_c2hohmSp_GINmbai5502bzP8Hg;->INSTANCE:Lcom/google/android/exoplayer2/analytics/-$$Lambda$_c2hohmSp_GINmbai5502bzP8Hg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;-><init>()V

    return-object v0
.end method
