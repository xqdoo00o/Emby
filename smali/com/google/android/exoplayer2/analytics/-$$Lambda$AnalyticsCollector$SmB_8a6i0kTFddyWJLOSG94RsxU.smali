.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$SmB_8a6i0kTFddyWJLOSG94RsxU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field private final synthetic f$1:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$SmB_8a6i0kTFddyWJLOSG94RsxU;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$SmB_8a6i0kTFddyWJLOSG94RsxU;->f$1:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$SmB_8a6i0kTFddyWJLOSG94RsxU;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$SmB_8a6i0kTFddyWJLOSG94RsxU;->f$1:Landroid/view/Surface;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onRenderedFirstFrame$24(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Landroid/view/Surface;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method
