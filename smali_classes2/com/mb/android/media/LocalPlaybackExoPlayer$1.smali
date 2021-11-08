.class Lcom/mb/android/media/LocalPlaybackExoPlayer$1;
.super Ljava/lang/Object;
.source "LocalPlaybackExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/LocalPlaybackExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastFormat:Lcom/google/android/exoplayer2/Format;

.field final synthetic this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;


# direct methods
.method constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V
    .locals 0

    .line 1969
    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isExternalFormat(Lcom/google/android/exoplayer2/Format;)Z
    .locals 3

    .line 2103
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$3300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    .line 2104
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private tryGetFormatFromTrackSelection()Lcom/google/android/exoplayer2/Format;
    .locals 6

    .line 2124
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2125
    :goto_0
    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v2, v3, :cond_3

    .line 2126
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 2130
    :cond_0
    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 2131
    iget-object v4, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    .line 2134
    :cond_1
    iget-object v4, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private tryGetMimeType()Ljava/lang/String;
    .locals 2

    .line 2112
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->lastFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    .line 2114
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->tryGetFormatFromTrackSelection()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2120
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onLoadCompleted$0$LocalPlaybackExoPlayer$1(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    move-object v0, p0

    .line 2052
    iget-object v1, v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$3400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/StreamRecord;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/mb/android/media/StreamRecord;->saveCachedStream(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2080
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onDownstreamFormatChanged"

    invoke-interface {p1, v0, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2081
    iget-object p1, p3, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->lastFormat:Lcom/google/android/exoplayer2/Format;

    .line 2084
    iget p1, p3, Lcom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget p1, p3, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    iget-object p1, p3, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_2

    iget-object p1, p3, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2091
    :cond_0
    iget-object p1, p3, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->isExternalFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2095
    :cond_1
    iget-wide p1, p3, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaStartTimeMs:J

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    .line 2096
    iget-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$3200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-eqz p3, :cond_2

    .line 2097
    iget-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p3, p1, p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$3202(Lcom/mb/android/media/LocalPlaybackExoPlayer;J)J

    .line 2098
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2000(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    move-result-object p1

    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$3200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onSubtitleOffsetChanged(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2062
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p4, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string p3, "ExoPlayer onLoadCanceled%s"

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 16
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v9, p0

    move/from16 v0, p1

    move-object/from16 v1, p4

    .line 1980
    iget-object v2, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "onLoadCompleted windowIndex: %d"

    invoke-interface {v2, v5, v4}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1982
    iget v2, v1, Lcom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    if-ne v2, v3, :cond_10

    iget v2, v1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    if-eq v2, v3, :cond_0

    goto/16 :goto_6

    .line 1986
    :cond_0
    iget-object v2, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v4

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaEndTimeMs:J

    sub-long/2addr v4, v1

    const-wide/16 v1, 0x12c

    cmp-long v7, v4, v1

    if-lez v7, :cond_1

    iget-object v1, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v1, v4

    if-eqz v7, :cond_1

    return-void

    .line 1990
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 1991
    iget-object v2, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    return-void

    .line 1994
    :cond_2
    iget-object v2, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1995
    iget-object v0, v1, Lcom/google/android/exoplayer2/Timeline$Window;->tag:Ljava/lang/Object;

    .line 1996
    instance-of v2, v0, Landroid/support/v4/media/MediaMetadataCompat;

    if-nez v2, :cond_3

    .line 1997
    iget-object v0, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Unable to get server id and item id for cached audio stream."

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2000
    :cond_3
    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 2001
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v7

    const-string v1, "serverId"

    .line 2002
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "itemId"

    .line 2003
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2004
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "Media"

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    .line 2005
    iget-object v1, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2900(Lcom/mb/android/media/LocalPlaybackExoPlayer;Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    move-object/from16 v0, p3

    .line 2009
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/LoadEventInfo;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-nez v0, :cond_6

    return-void

    .line 2014
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->tryGetMimeType()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    .line 2016
    iget-object v0, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Failed to determine mime type for cached stream."

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2021
    :cond_7
    iget-object v1, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$3000(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v0

    .line 2022
    iget-object v1, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$3100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v12, 0x0

    .line 2026
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v14, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-object/from16 p1, v4

    .line 2027
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    cmp-long v15, v3, v12

    if-nez v15, :cond_a

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    if-nez v14, :cond_9

    .line 2033
    iget-object v14, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    .line 2035
    :cond_9
    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v12, v3

    move-object/from16 v4, p1

    const/4 v3, 0x1

    goto :goto_1

    .line 2028
    :cond_a
    :goto_2
    iget-object v1, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Discontinuity detected in cached stream."

    invoke-interface {v1, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 p1, v4

    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_d

    if-nez v14, :cond_c

    goto :goto_4

    .line 2051
    :cond_c
    new-instance v12, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v11

    move-object/from16 v4, p1

    move-object v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$1$QLpm519me0kyIJ-wq9d1wGEMsX4;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer$1;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v12}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 2038
    :cond_d
    :goto_4
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 2039
    iget-object v2, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$3100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_5

    :cond_e
    if-eqz v14, :cond_f

    .line 2042
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto :goto_6

    .line 2045
    :cond_f
    iget-object v0, v9, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Unable to retrieve cached content file for audio stream."

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_6
    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2074
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 p5, 0x0

    aput-object p3, p2, p5

    iget-object p3, p4, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ": "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    const/4 p4, 0x1

    aput-object p3, p2, p4

    const-string p3, "ExoPlayer onLoadError, wasCanceled %s%s"

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1975
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "onLoadStarted windowIndex: %d"

    invoke-interface {p2, p1, p3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method
