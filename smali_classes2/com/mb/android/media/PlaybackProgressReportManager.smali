.class public Lcom/mb/android/media/PlaybackProgressReportManager;
.super Ljava/lang/Object;
.source "PlaybackProgressReportManager.java"


# instance fields
.field private final connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/mb/android/MainApp;

    invoke-virtual {p1}, Lcom/mb/android/MainApp;->getConnectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/PlaybackProgressReportManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    return-void
.end method

.method private getApiClient(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/mb/android/apiinteraction/ApiClient;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 195
    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackProgressReportManager;->getServerAndItemId(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/PlaybackProgressReportManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    return-object p1
.end method

.method private getPlayQueue(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaMetadataCompat;

    .line 157
    new-instance v2, Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;

    invoke-direct {v2}, Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;-><init>()V

    .line 158
    invoke-direct {p0, v1}, Lcom/mb/android/media/PlaybackProgressReportManager;->getServerAndItemId(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;->Id:Ljava/lang/String;

    const/4 v1, 0x1

    .line 159
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "playlistItem%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;->PlaylistItemId:Ljava/lang/String;

    .line 160
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getPlaySessionId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "PlaySessionId"

    .line 151
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getProgressInfo(Landroid/support/v4/media/MediaMetadataCompat;IIJLcom/mb/android/model/dto/MediaSourceInfo;)Lcom/mb/android/model/session/PlaybackProgressInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 172
    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackProgressReportManager;->getServerAndItemId(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackProgressReportManager;->getPlaySessionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 180
    :cond_1
    new-instance v1, Lcom/mb/android/model/session/PlaybackProgressInfo;

    invoke-direct {v1}, Lcom/mb/android/model/session/PlaybackProgressInfo;-><init>()V

    .line 181
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/mb/android/model/session/PlaybackProgressInfo;->ItemId:Ljava/lang/String;

    .line 182
    iput-object p1, v1, Lcom/mb/android/model/session/PlaybackProgressInfo;->PlaySessionId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, v1, Lcom/mb/android/model/session/PlaybackProgressInfo;->CanSeek:Z

    if-eqz p6, :cond_2

    .line 184
    invoke-virtual {p6}, Lcom/mb/android/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, v1, Lcom/mb/android/model/session/PlaybackProgressInfo;->ItemId:Ljava/lang/String;

    :goto_0
    iput-object p1, v1, Lcom/mb/android/model/session/PlaybackProgressInfo;->MediaSourceId:Ljava/lang/String;

    .line 185
    iput p3, v1, Lcom/mb/android/model/session/PlaybackProgressInfo;->PlaylistIndex:I

    .line 186
    iput p2, v1, Lcom/mb/android/model/session/PlaybackProgressInfo;->PlaylistLength:I

    const/4 p1, 0x0

    .line 187
    iput-boolean p1, v1, Lcom/mb/android/model/session/PlaybackProgressInfo;->IsMuted:Z

    .line 188
    sget-object p1, Lcom/mb/android/model/session/RepeatMode;->RepeatNone:Lcom/mb/android/model/session/RepeatMode;

    iput-object p1, v1, Lcom/mb/android/model/session/PlaybackProgressInfo;->RepeatMode:Lcom/mb/android/model/session/RepeatMode;

    const-wide/16 p1, 0x2710

    mul-long p4, p4, p1

    .line 189
    iput-wide p4, v1, Lcom/mb/android/model/session/PlaybackProgressInfo;->PositionTicks:J

    return-object v1
.end method

.method private getRepeatMode(I)Lcom/mb/android/model/session/RepeatMode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 126
    sget-object p1, Lcom/mb/android/model/session/RepeatMode;->RepeatNone:Lcom/mb/android/model/session/RepeatMode;

    return-object p1

    .line 120
    :cond_0
    sget-object p1, Lcom/mb/android/model/session/RepeatMode;->RepeatAll:Lcom/mb/android/model/session/RepeatMode;

    return-object p1

    .line 122
    :cond_1
    sget-object p1, Lcom/mb/android/model/session/RepeatMode;->RepeatOne:Lcom/mb/android/model/session/RepeatMode;

    return-object p1
.end method

.method private getServerAndItemId(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/util/Pair;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 132
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "/"

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 140
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    return-object v0

    .line 143
    :cond_2
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public reportPlaybackProgress(Lcom/mb/android/model/session/ProgressEvent;Landroid/support/v4/media/MediaMetadataCompat;IIJZIFILcom/mb/android/model/dto/MediaSourceInfo;)V
    .locals 8

    move-object v7, p0

    if-eqz p11, :cond_0

    .line 100
    invoke-virtual/range {p11 .. p11}, Lcom/mb/android/model/dto/MediaSourceInfo;->getVideoStream()Lcom/mb/android/model/entities/MediaStream;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move-object/from16 v6, p11

    .line 103
    invoke-direct/range {v0 .. v6}, Lcom/mb/android/media/PlaybackProgressReportManager;->getProgressInfo(Landroid/support/v4/media/MediaMetadataCompat;IIJLcom/mb/android/model/dto/MediaSourceInfo;)Lcom/mb/android/model/session/PlaybackProgressInfo;

    move-result-object v0

    .line 104
    invoke-direct {p0, p2}, Lcom/mb/android/media/PlaybackProgressReportManager;->getApiClient(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 108
    iput-object v2, v0, Lcom/mb/android/model/session/PlaybackProgressInfo;->EventName:Lcom/mb/android/model/session/ProgressEvent;

    move v2, p7

    .line 109
    iput-boolean v2, v0, Lcom/mb/android/model/session/PlaybackProgressInfo;->IsPaused:Z

    move/from16 v2, p8

    .line 110
    iput v2, v0, Lcom/mb/android/model/session/PlaybackProgressInfo;->VolumeLevel:I

    move/from16 v2, p9

    float-to-double v2, v2

    .line 111
    iput-wide v2, v0, Lcom/mb/android/model/session/PlaybackProgressInfo;->PlaybackRate:D

    move/from16 v2, p10

    .line 112
    invoke-direct {p0, v2}, Lcom/mb/android/media/PlaybackProgressReportManager;->getRepeatMode(I)Lcom/mb/android/model/session/RepeatMode;

    move-result-object v2

    iput-object v2, v0, Lcom/mb/android/model/session/PlaybackProgressInfo;->RepeatMode:Lcom/mb/android/model/session/RepeatMode;

    .line 113
    invoke-virtual {v1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->reportPlaybackProgress(Lcom/mb/android/model/session/PlaybackProgressInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reportPlaybackStart(Landroid/support/v4/media/MediaMetadataCompat;IIJLcom/mb/android/model/dto/MediaSourceInfo;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            "IIJ",
            "Lcom/mb/android/model/dto/MediaSourceInfo;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p6, :cond_0

    .line 40
    invoke-virtual {p6}, Lcom/mb/android/model/dto/MediaSourceInfo;->getVideoStream()Lcom/mb/android/model/entities/MediaStream;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/mb/android/media/PlaybackProgressReportManager;->getProgressInfo(Landroid/support/v4/media/MediaMetadataCompat;IIJLcom/mb/android/model/dto/MediaSourceInfo;)Lcom/mb/android/model/session/PlaybackProgressInfo;

    move-result-object p2

    .line 44
    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackProgressReportManager;->getApiClient(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    .line 49
    invoke-direct {p0, p7}, Lcom/mb/android/media/PlaybackProgressReportManager;->getPlayQueue(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    const/4 p4, 0x0

    .line 50
    new-array p4, p4, [Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;

    invoke-interface {p3, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;

    iput-object p3, p2, Lcom/mb/android/model/session/PlaybackProgressInfo;->NowPlayingQueue:[Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;

    .line 52
    :cond_2
    invoke-virtual {p1, p2}, Lcom/mb/android/apiinteraction/ApiClient;->reportPlaybackStart(Lcom/mb/android/model/session/PlaybackProgressInfo;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reportPlaybackStop(Landroid/support/v4/media/MediaMetadataCompat;IIJLcom/mb/android/model/dto/MediaSourceInfo;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            "IIJ",
            "Lcom/mb/android/model/dto/MediaSourceInfo;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p6, :cond_0

    .line 63
    invoke-virtual {p6}, Lcom/mb/android/model/dto/MediaSourceInfo;->getVideoStream()Lcom/mb/android/model/entities/MediaStream;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackProgressReportManager;->getServerAndItemId(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/util/Pair;

    move-result-object v0

    .line 67
    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackProgressReportManager;->getApiClient(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackProgressReportManager;->getPlaySessionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 75
    :cond_2
    new-instance v2, Lcom/mb/android/model/session/PlaybackStopInfo;

    invoke-direct {v2}, Lcom/mb/android/model/session/PlaybackStopInfo;-><init>()V

    .line 76
    iput p3, v2, Lcom/mb/android/model/session/PlaybackStopInfo;->PlaylistIndex:I

    .line 77
    iput p2, v2, Lcom/mb/android/model/session/PlaybackStopInfo;->PlaylistLength:I

    .line 78
    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iput-object p2, v2, Lcom/mb/android/model/session/PlaybackStopInfo;->ItemId:Ljava/lang/String;

    const-wide/16 p2, 0x2710

    mul-long p4, p4, p2

    .line 79
    iput-wide p4, v2, Lcom/mb/android/model/session/PlaybackStopInfo;->PositionTicks:J

    if-eqz p6, :cond_3

    .line 80
    invoke-virtual {p6}, Lcom/mb/android/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-object p2, v2, Lcom/mb/android/model/session/PlaybackStopInfo;->ItemId:Ljava/lang/String;

    :goto_0
    iput-object p2, v2, Lcom/mb/android/model/session/PlaybackStopInfo;->MediaSourceId:Ljava/lang/String;

    .line 81
    iput-object p1, v2, Lcom/mb/android/model/session/PlaybackStopInfo;->PlaySessionId:Ljava/lang/String;

    if-eqz p8, :cond_4

    .line 83
    invoke-direct {p0, p7}, Lcom/mb/android/media/PlaybackProgressReportManager;->getPlayQueue(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 84
    new-array p2, p2, [Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;

    iput-object p1, v2, Lcom/mb/android/model/session/PlaybackStopInfo;->NowPlayingQueue:[Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;

    .line 86
    :cond_4
    invoke-virtual {v1, v2}, Lcom/mb/android/apiinteraction/ApiClient;->reportPlaybackStop(Lcom/mb/android/model/session/PlaybackStopInfo;)V

    :cond_5
    :goto_1
    return-void
.end method
