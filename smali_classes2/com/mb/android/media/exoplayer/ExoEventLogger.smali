.class public Lcom/mb/android/media/exoplayer/ExoEventLogger;
.super Lcom/google/android/exoplayer2/util/EventLogger;
.source "ExoEventLogger.java"


# instance fields
.field private final logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    .line 15
    iput-object p2, p0, Lcom/mb/android/media/exoplayer/ExoEventLogger;->logger:Lcom/mb/android/model/logging/ILogger;

    return-void
.end method


# virtual methods
.method public onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 2

    .line 20
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 22
    iget-object p2, p0, Lcom/mb/android/media/exoplayer/ExoEventLogger;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "AudioSinkError caused by: %s"

    invoke-interface {p2, p1, v0}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
