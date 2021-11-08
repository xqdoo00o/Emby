.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$a8exu2i0KCIGcjr_DKwuDytPpCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$a8exu2i0KCIGcjr_DKwuDytPpCA;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$a8exu2i0KCIGcjr_DKwuDytPpCA;->f$1:I

    iput p3, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$a8exu2i0KCIGcjr_DKwuDytPpCA;->f$2:I

    iput p4, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$a8exu2i0KCIGcjr_DKwuDytPpCA;->f$3:I

    iput p5, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$a8exu2i0KCIGcjr_DKwuDytPpCA;->f$4:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$a8exu2i0KCIGcjr_DKwuDytPpCA;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$a8exu2i0KCIGcjr_DKwuDytPpCA;->f$1:I

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$a8exu2i0KCIGcjr_DKwuDytPpCA;->f$2:I

    iget v3, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$a8exu2i0KCIGcjr_DKwuDytPpCA;->f$3:I

    iget v4, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$a8exu2i0KCIGcjr_DKwuDytPpCA;->f$4:F

    move-object v5, p1

    check-cast v5, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onVideoSizeChanged$23(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIFLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method
