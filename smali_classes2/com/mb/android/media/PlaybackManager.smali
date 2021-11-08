.class public Lcom/mb/android/media/PlaybackManager;
.super Ljava/lang/Object;
.source "PlaybackManager.java"

# interfaces
.implements Lcom/mb/android/media/Playback$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;,
        Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;
    }
.end annotation


# static fields
.field public static final ACTION_FAVORITES_CHANGED:Ljava/lang/String; = "com.mb.android.ACTION_FAVORITES_CHANGED"

.field private static final CUSTOM_ACTION_FAVORITE:Ljava/lang/String; = "com.mb.android.FAVORITE"


# instance fields
.field private final connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

.field private currentRepeatMode:I

.field private isCarPlay:Z

.field private final jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private lastState:I

.field private final localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

.field private final localPlayback:Lcom/mb/android/media/Playback;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private final mMediaSessionCallback:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

.field private mPlayback:Lcom/mb/android/media/Playback;

.field private final mQueueManager:Lcom/mb/android/media/QueueManager;

.field private final mResources:Landroid/content/res/Resources;

.field private final mServiceCallback:Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

.field private final mediaSource:Lcom/mb/android/media/MediaSource;

.field private final messenger:Lcom/mb/android/media/MediaService$UIMessenger;

.field private final remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

.field private shuffleOn:Z


# direct methods
.method public constructor <init>(Lcom/mb/android/media/MediaService;Landroid/content/res/Resources;Lcom/mb/android/media/QueueManager;Lcom/mb/android/media/MediaSource;Lcom/mb/android/media/Playback;Lcom/mb/android/media/MediaService$UIMessenger;Lcom/mb/android/model/logging/ILogger;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/mb/android/media/PlaybackManager;->currentRepeatMode:I

    const/4 v0, -0x1

    .line 257
    iput v0, p0, Lcom/mb/android/media/PlaybackManager;->lastState:I

    .line 83
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager;->mServiceCallback:Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    .line 84
    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager;->mResources:Landroid/content/res/Resources;

    .line 85
    iput-object p3, p0, Lcom/mb/android/media/PlaybackManager;->mQueueManager:Lcom/mb/android/media/QueueManager;

    .line 86
    iput-object p4, p0, Lcom/mb/android/media/PlaybackManager;->mediaSource:Lcom/mb/android/media/MediaSource;

    .line 87
    iput-object p7, p0, Lcom/mb/android/media/PlaybackManager;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 88
    iput-object p6, p0, Lcom/mb/android/media/PlaybackManager;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    .line 89
    new-instance p2, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p7, p3}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;-><init>(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/PlaybackManager$1;)V

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager;->mMediaSessionCallback:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    .line 90
    iput-object p5, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    .line 91
    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {p2, p0}, Lcom/mb/android/media/Playback;->setCallback(Lcom/mb/android/media/Playback$Callback;)V

    .line 93
    invoke-virtual {p1}, Lcom/mb/android/media/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/mb/android/MainApp;

    invoke-virtual {p2}, Lcom/mb/android/MainApp;->getConnectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    .line 94
    new-instance p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-direct {p2, p1, p7}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    .line 95
    new-instance p2, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {p2}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    .line 97
    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager;->localPlayback:Lcom/mb/android/media/Playback;

    .line 98
    new-instance p2, Lcom/mb/android/media/ForwardingRemotePlayback;

    invoke-virtual {p1}, Lcom/mb/android/media/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/mb/android/media/PlaybackManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-direct {p2, p1, p7, p6, p3}, Lcom/mb/android/media/ForwardingRemotePlayback;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaService$UIMessenger;Lcom/mb/android/apiinteraction/android/ConnectionManager;)V

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager;->remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

    return-void
.end method

.method static synthetic access$100(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/mb/android/media/PlaybackManager;->onAfterGetItem(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mb/android/media/PlaybackManager;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackManager;->onLocalPlaybackFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/ForwardingRemotePlayback;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mb/android/media/PlaybackManager;->remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/model/serialization/IJsonSerializer;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mb/android/media/PlaybackManager;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/apiinteraction/android/ConnectionManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mb/android/media/PlaybackManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/mb/android/media/PlaybackManager;->playItems(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/MediaSource;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mb/android/media/PlaybackManager;->mediaSource:Lcom/mb/android/media/MediaSource;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mb/android/media/PlaybackManager;->localPlayback:Lcom/mb/android/media/Playback;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/MediaService$UIMessenger;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mb/android/media/PlaybackManager;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;J)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/mb/android/media/PlaybackManager;->onAfterBitrateDetect(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;)Lcom/mb/android/media/Playback;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackManager;->getPlaybackForId(Ljava/lang/String;)Lcom/mb/android/media/Playback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/mb/android/media/PlaybackManager;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/mb/android/media/PlaybackManager;->getIsCurrentItemFavorite()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/mb/android/media/PlaybackManager;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/mb/android/media/PlaybackManager;->currentRepeatMode:I

    return p0
.end method

.method static synthetic access$2202(Lcom/mb/android/media/PlaybackManager;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/mb/android/media/PlaybackManager;->currentRepeatMode:I

    return p1
.end method

.method static synthetic access$2300(Lcom/mb/android/media/PlaybackManager;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/mb/android/media/PlaybackManager;->lastState:I

    return p0
.end method

.method static synthetic access$2400(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p9}, Lcom/mb/android/media/PlaybackManager;->handleQuery(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/mb/android/media/PlaybackManager;->playItemsFromParent(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/mb/android/media/PlaybackManager;->playArtist(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/util/List;J)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/mb/android/media/PlaybackManager;->playFirstAndQueue(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/util/List;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/mb/android/media/PlaybackManager;->onLocalPlaybackFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;J)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mb/android/media/PlaybackManager;->getStreamUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/os/Bundle;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackManager;->getPlaybackExtras(Lcom/mb/android/model/dto/BaseItemDto;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mb/android/media/PlaybackManager;->mServiceCallback:Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/QueueManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mb/android/media/PlaybackManager;->mQueueManager:Lcom/mb/android/media/QueueManager;

    return-object p0
.end method

.method private clearPlayerCallbacks()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mb/android/media/ForwardingRemotePlayback;->setCallback(Lcom/mb/android/media/Playback$Callback;)V

    .line 123
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->localPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, v1}, Lcom/mb/android/media/Playback;->setCallback(Lcom/mb/android/media/Playback$Callback;)V

    return-void
.end method

.method private getAvailableActions()J
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xf32

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xf34

    :goto_0
    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private getIsCurrentItemFavorite()Z
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mQueueManager:Lcom/mb/android/media/QueueManager;

    invoke-virtual {v0}, Lcom/mb/android/media/QueueManager;->getCurrentMusic()Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 356
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 360
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/RatingCompat;

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private getPlaybackExtras(Lcom/mb/android/model/dto/BaseItemDto;)Landroid/os/Bundle;
    .locals 4

    .line 581
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 584
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mb/android/model/dto/MediaSourceInfo;

    goto :goto_0

    .line 588
    :cond_0
    new-instance v1, Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-direct {v1}, Lcom/mb/android/model/dto/MediaSourceInfo;-><init>()V

    .line 589
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mb/android/model/dto/MediaSourceInfo;->setId(Ljava/lang/String;)V

    .line 590
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Lcom/mb/android/model/dto/MediaSourceInfo;->setMediaStreams(Ljava/util/ArrayList;)V

    .line 591
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mb/android/model/dto/MediaSourceInfo;->setRunTimeTicks(Ljava/lang/Long;)V

    move-object p1, v1

    .line 593
    :goto_0
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v1, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mediaSource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "startIndex"

    .line 594
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide/16 v1, 0x0

    const-string p1, "startPositionMs"

    .line 595
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "mediaType"

    const-string v1, "Audio"

    .line 596
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPlaybackForId(Ljava/lang/String;)Lcom/mb/android/media/Playback;
    .locals 1

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    return-object p1

    :cond_0
    const-string v0, "exoaudioplayer"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "exovideoplayer"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/ForwardingRemotePlayback;->getPlayback(Ljava/lang/String;)Lcom/mb/android/media/Playback;

    move-result-object p1

    return-object p1

    .line 132
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->localPlayback:Lcom/mb/android/media/Playback;

    return-object p1
.end method

.method private getStreamUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;J)Ljava/lang/String;
    .locals 13

    move-object v0, p0

    .line 603
    iget-object v1, v0, Lcom/mb/android/media/PlaybackManager;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalPathForLibraryItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 625
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x0

    const-string v4, "ts"

    const-string v6, "aac"

    const-string v5, "hls"

    move-object v2, p1

    move-object v3, p2

    .line 620
    invoke-virtual/range {v2 .. v12}, Lcom/mb/android/apiinteraction/ApiClient;->getAudioStreamUrl(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleQuery(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/mb/android/apiinteraction/Response;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "android.intent.extra.focus"

    move-object/from16 v1, p8

    .line 1079
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/artist"

    .line 1080
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v1, "vnd.android.cursor.item/album"

    .line 1081
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v1, "vnd.android.cursor.item/audio"

    .line 1082
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v1, "vnd.android.cursor.item/playlist"

    .line 1083
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v0, p0

    .line 1084
    iget-object v10, v0, Lcom/mb/android/media/PlaybackManager;->mediaSource:Lcom/mb/android/media/MediaSource;

    new-instance v18, Lcom/mb/android/media/PlaybackManager$7;

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/mb/android/media/PlaybackManager$7;-><init>(Lcom/mb/android/media/PlaybackManager;ZLcom/mb/android/apiinteraction/ApiClient;ZZLcom/mb/android/apiinteraction/Response;Z)V

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    invoke-virtual/range {v10 .. v18}, Lcom/mb/android/media/MediaSource;->getAllSearchResults(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/media/MediaSource$SearchResultCallback;)Z

    return-void
.end method

.method private onAfterBitrateDetect(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;J)V
    .locals 10

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ParentIndexNumber,IndexNumber"

    const-string v2, "Fields"

    .line 455
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SortBy"

    .line 456
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MediaTypes"

    const-string v3, "Audio"

    .line 457
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance v1, Lcom/mb/android/media/PlaybackManager$3;

    move-object v4, v1

    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    move-wide v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/mb/android/media/PlaybackManager$3;-><init>(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/model/dto/BaseItemDto;Lcom/mb/android/apiinteraction/ApiClient;J)V

    .line 471
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getIsFolderItem()Z

    move-result v3

    const-string v4, "__SHUFFLE__"

    const-string v5, "ParentId"

    if-eqz v3, :cond_1

    .line 472
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Recursive"

    const-string p4, "true"

    .line 473
    invoke-virtual {v0, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Filters"

    const-string p4, "IsNotFolder"

    .line 474
    invoke-virtual {v0, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Random"

    .line 476
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->getItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getIsArtist()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 480
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/mb/android/media/PlaybackManager;->playArtist(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;ZLcom/mb/android/apiinteraction/Response;)V

    goto :goto_0

    .line 482
    :cond_2
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getParentId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 484
    invoke-virtual {v0, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p3

    new-instance v7, Lcom/mb/android/media/PlaybackManager$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/mb/android/media/PlaybackManager$4;-><init>(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/model/dto/BaseItemDto;Lcom/mb/android/apiinteraction/ApiClient;J)V

    invoke-virtual {p1, p3, v0, v7}, Lcom/mb/android/apiinteraction/ApiClient;->getItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    goto :goto_0

    .line 531
    :cond_3
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Object;

    const/4 p5, 0x0

    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, p5

    const-string p2, "Failed to play smart playlist. Item %s has no parent ID."

    invoke-interface {p1, p2, p4}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x7

    const-string p2, "Error getting items"

    .line 532
    invoke-virtual {p0, p1, p3, p2}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onAfterGetItem(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V
    .locals 1

    .line 444
    new-instance v0, Lcom/mb/android/media/PlaybackManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mb/android/media/PlaybackManager$2;-><init>(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->detectBitrate(Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private onLocalPlaybackFailed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1181
    invoke-direct {p0, p1, v0}, Lcom/mb/android/media/PlaybackManager;->onLocalPlaybackFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private onLocalPlaybackFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Local Playback Failed"

    invoke-interface {v0, v2, p2, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1188
    :cond_0
    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    new-instance v0, Lcom/mb/android/media/-$$Lambda$PlaybackManager$NFgMynKyS1kW4mPFmwyONzSdho0;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/media/-$$Lambda$PlaybackManager$NFgMynKyS1kW4mPFmwyONzSdho0;-><init>(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/mb/android/media/Playback;->destroyPlayer(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onPlayerDestroy()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mServiceCallback:Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    invoke-interface {v0}, Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;->onPlaybackStop()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, v0, v1}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    return-void
.end method

.method private playArtist(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1163
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mb/android/media/PlaybackManager;->playArtist(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;ZLcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private playArtist(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;ZLcom/mb/android/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;",
            ">;)V"
        }
    .end annotation

    .line 1167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "MediaTypes"

    const-string v2, "Audio"

    .line 1168
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Recursive"

    const-string v2, "true"

    .line 1169
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SortBy"

    if-eqz p3, :cond_0

    const-string p3, "Random"

    .line 1171
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p3, "ParentIndexNumber,IndexNumber"

    .line 1174
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p3, "ArtistIds"

    .line 1176
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p4}, Lcom/mb/android/apiinteraction/ApiClient;->getItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private playFirstAndQueue(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;J)V"
        }
    .end annotation

    .line 540
    invoke-static {p3}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 541
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v1, [Ljava/lang/Object;

    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string p4, "libraryItems is null or empty"

    invoke-direct {p3, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    aput-object p3, p2, v2

    const-string p3, "playFirstAndQueue called with empty list."

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x7

    const-string p2, "No Items Found"

    .line 543
    invoke-virtual {p0, p1, p2}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    return-void

    .line 547
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 549
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mb/android/model/dto/BaseItemDto;

    .line 550
    invoke-virtual {v4}, Lcom/mb/android/model/dto/BaseItemDto;->getIsFolderItem()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "video"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 552
    invoke-direct {p0, p1, v4, p4, p5}, Lcom/mb/android/media/PlaybackManager;->getStreamUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;J)Ljava/lang/String;

    move-result-object v5

    .line 553
    invoke-static {p1, v4}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, ""

    .line 554
    :goto_1
    invoke-static {v4, v5, v6}, Lcom/mb/android/media/QueueManager;->buildMetadata(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v5

    if-nez v3, :cond_4

    .line 557
    invoke-direct {p0, v4}, Lcom/mb/android/media/PlaybackManager;->getPlaybackExtras(Lcom/mb/android/model/dto/BaseItemDto;)Landroid/os/Bundle;

    move-result-object v3

    .line 558
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 559
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v7, p0, Lcom/mb/android/media/PlaybackManager;->mServiceCallback:Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    invoke-interface {v7}, Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;->onPlaybackStart()V

    .line 562
    iget-object v7, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v7, v6, v2, v3}, Lcom/mb/android/media/Playback;->play(Ljava/util/List;ILandroid/os/Bundle;)V

    const/4 v3, 0x6

    const/4 v6, 0x0

    .line 563
    invoke-virtual {p0, v3, v6}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    .line 565
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 566
    invoke-virtual {v4}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_3
    const/4 v3, 0x1

    .line 571
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 574
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 575
    :goto_2
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {v0, v1, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/mb/android/media/Playback;->queueItems(Ljava/util/List;)V

    .line 576
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->mQueueManager:Lcom/mb/android/media/QueueManager;

    invoke-virtual {p1, p2, v0}, Lcom/mb/android/media/QueueManager;->setQueue(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private playItems(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1128
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1134
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/mb/android/model/dto/BaseItemDto;

    .line 1136
    new-instance v0, Lcom/mb/android/media/PlaybackManager$8;

    move-object v1, v0

    move-object v2, p0

    move v3, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mb/android/media/PlaybackManager$8;-><init>(Lcom/mb/android/media/PlaybackManager;ZLcom/mb/android/model/dto/BaseItemDto;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->detectBitrate(Lcom/mb/android/apiinteraction/Response;)V

    return-void

    .line 1129
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v1, "Items is null or empty"

    invoke-direct {p3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    aput-object p3, p2, v0

    const-string p3, "playItems called with empty list."

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "No results found"

    .line 1131
    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackManager;->onLocalPlaybackFailed(Ljava/lang/String;)V

    return-void
.end method

.method private playItemsFromParent(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1153
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1159
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lcom/mb/android/media/PlaybackManager;->onAfterGetItem(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V

    return-void

    .line 1154
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "parentItems is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    aput-object v1, p2, v0

    const-string v0, "playItemsFromParent called with empty list."

    invoke-interface {p1, v0, p2}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "No results found"

    .line 1156
    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackManager;->onLocalPlaybackFailed(Ljava/lang/String;)V

    return-void
.end method

.method private setCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;)V
    .locals 6

    .line 315
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 316
    invoke-static {v0, v1}, Lcom/mb/android/media/WearHelper;->setShowCustomActionOnWear(Landroid/os/Bundle;Z)V

    .line 318
    invoke-direct {p0}, Lcom/mb/android/media/PlaybackManager;->getIsCurrentItemFavorite()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0800fd

    goto :goto_0

    :cond_0
    const v2, 0x7f0800fe

    .line 320
    :goto_0
    new-instance v3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    iget-object v4, p0, Lcom/mb/android/media/PlaybackManager;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f120093

    .line 321
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.mb.android.FAVORITE"

    invoke-direct {v3, v5, v4, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 322
    invoke-virtual {v3, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    move-result-object v2

    .line 323
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v2

    .line 320
    invoke-virtual {p1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 325
    iget-boolean v2, p0, Lcom/mb/android/media/PlaybackManager;->shuffleOn:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0801b4

    goto :goto_1

    :cond_1
    const v2, 0x7f0801b3

    .line 326
    :goto_1
    new-instance v3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    iget-object v4, p0, Lcom/mb/android/media/PlaybackManager;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f1200e2

    .line 327
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.emby.shuffle"

    invoke-direct {v3, v5, v4, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 328
    invoke-virtual {v3, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    move-result-object v2

    .line 329
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v2

    .line 326
    invoke-virtual {p1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 332
    iget v2, p0, Lcom/mb/android/media/PlaybackManager;->currentRepeatMode:I

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    const v1, 0x7f0801b0

    goto :goto_2

    :cond_2
    const v1, 0x7f0801b1

    goto :goto_2

    :cond_3
    const v1, 0x7f0801b2

    .line 345
    :goto_2
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    iget-object v3, p0, Lcom/mb/android/media/PlaybackManager;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f1200df

    .line 346
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.emby.setrepeat"

    invoke-direct {v2, v4, v3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 347
    invoke-virtual {v2, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v0

    .line 345
    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    return-void
.end method


# virtual methods
.method public attachSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->attachSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public destroyPlayer(Ljava/lang/String;)V
    .locals 0

    .line 1211
    invoke-direct {p0, p1}, Lcom/mb/android/media/PlaybackManager;->getPlaybackForId(Ljava/lang/String;)Lcom/mb/android/media/Playback;

    move-result-object p1

    invoke-interface {p1}, Lcom/mb/android/media/Playback;->destroyPlayer()V

    .line 1212
    invoke-direct {p0}, Lcom/mb/android/media/PlaybackManager;->onPlayerDestroy()V

    return-void
.end method

.method public detachSurface()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->detachSurface()V

    return-void
.end method

.method public displayModeChanged()V
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->displayModeChanged()V

    return-void
.end method

.method public getMediaSessionCallback()Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mMediaSessionCallback:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    return-object v0
.end method

.method public getPlayback()Lcom/mb/android/media/Playback;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    return-object v0
.end method

.method public handleAppPause(Z)V
    .locals 1

    const-string v0, "Video"

    .line 1194
    invoke-virtual {p0, v0}, Lcom/mb/android/media/PlaybackManager;->hasMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1195
    invoke-virtual {p0, v0}, Lcom/mb/android/media/PlaybackManager;->setVideoOutputEnabled(Z)V

    if-nez p1, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/mb/android/media/PlaybackManager;->handlePauseRequest()V

    :cond_0
    return-void
.end method

.method public handlePauseRequest()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->pause()V

    return-void
.end method

.method public handlePlayPauseRequest()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-virtual {p0, v0}, Lcom/mb/android/media/PlaybackManager;->handlePlayPauseRequest(Lcom/mb/android/media/Playback;)V

    return-void
.end method

.method public handlePlayPauseRequest(Lcom/mb/android/media/Playback;)V
    .locals 0

    .line 215
    invoke-interface {p1}, Lcom/mb/android/media/Playback;->playPause()V

    return-void
.end method

.method public handleStopRequest(Lcom/mb/android/media/Playback;ZZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 228
    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager;->remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

    if-eq p1, p2, :cond_1

    .line 229
    :cond_0
    invoke-interface {p1, p3}, Lcom/mb/android/media/Playback;->stop(Z)V

    :cond_1
    if-eqz p3, :cond_2

    .line 234
    invoke-direct {p0}, Lcom/mb/android/media/PlaybackManager;->onPlayerDestroy()V

    :cond_2
    return-void
.end method

.method public handleStopRequest(ZZ)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-virtual {p0, v0, p1, p2}, Lcom/mb/android/media/PlaybackManager;->handleStopRequest(Lcom/mb/android/media/Playback;ZZ)V

    return-void
.end method

.method public hasMedia(Ljava/lang/String;)Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->hasMedia(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public incrementSubtitleOffset(J)V
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/Playback;->incrementSubtitleOffset(J)V

    return-void
.end method

.method public synthetic lambda$onLocalPlaybackFailed$0$PlaybackManager(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    .line 1189
    invoke-virtual {p0, v0, p1}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    return-void
.end method

.method public movePlaylistItem(II)V
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/Playback;->movePlaylistItem(II)V

    return-void
.end method

.method public onCompletion(Landroid/support/v4/media/MediaMetadataCompat;Lcom/mb/android/media/PlayQueueState;)V
    .locals 3
    .param p1    # Landroid/support/v4/media/MediaMetadataCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mb.android.ACTION_PLAYBACK_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "itemType"

    .line 396
    invoke-virtual {p1, v1}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {p1, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Audio"

    .line 399
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 400
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {p1, p2}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 401
    new-instance p2, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager;->mServiceCallback:Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    invoke-interface {v1}, Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-virtual {p2, p1}, Lcom/mb/android/sync/AppSettings;->setLastPlayedQueue(Ljava/lang/String;)V

    .line 405
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->mServiceCallback:Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    invoke-interface {p1}, Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 1207
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->onConfigurationChanged()V

    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager;->remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

    if-eq v0, v1, :cond_1

    .line 744
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.metadata.USER_RATING"

    .line 745
    invoke-virtual {p1, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 746
    invoke-static {p1, v0}, Lcom/mb/android/media/MediaSource;->descriptionFromMetadata(Landroid/support/v4/media/MediaMetadataCompat;Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 747
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 749
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mQueueManager:Lcom/mb/android/media/QueueManager;

    invoke-virtual {v0, v1}, Lcom/mb/android/media/QueueManager;->setCurrentMedia(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)V

    .line 750
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mQueueManager:Lcom/mb/android/media/QueueManager;

    invoke-virtual {v0, v1, p1}, Lcom/mb/android/media/QueueManager;->updateMetadata(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_1
    return-void
.end method

.method public onPlaybackStatusChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 727
    invoke-virtual {p0, p1, v0}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    return-void
.end method

.method public onPlaybackStatusChanged(ILjava/lang/String;)V
    .locals 0

    .line 732
    invoke-virtual {p0, p1, p2}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    return-void
.end method

.method public playFromExtrasBundle(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0, v0}, Lcom/mb/android/media/PlaybackManager;->setIsCarPlay(Z)V

    const-string v0, "startPositionMs"

    .line 638
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 640
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager;->mQueueManager:Lcom/mb/android/media/QueueManager;

    invoke-virtual {v2, p1}, Lcom/mb/android/media/QueueManager;->setSingleItemQueue(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    .line 642
    iget-object v3, p0, Lcom/mb/android/media/PlaybackManager;->mServiceCallback:Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    invoke-interface {v3}, Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;->onPlaybackStart()V

    .line 644
    iget-object v3, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v3, v2, v0, v1, p1}, Lcom/mb/android/media/Playback;->play(Landroid/support/v4/media/MediaMetadataCompat;JLandroid/os/Bundle;)V

    const/4 p1, 0x6

    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, p1, v0}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 410
    invoke-virtual {p0, v0}, Lcom/mb/android/media/PlaybackManager;->setIsCarPlay(Z)V

    .line 412
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mb/android/media/Playback;->stop(Z)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 413
    invoke-virtual {p0, v1, v3}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    const-string v1, "/"

    .line 415
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 416
    array-length v3, v1

    if-le v3, v0, :cond_0

    .line 418
    aget-object v2, v1, v2

    .line 419
    array-length v3, v1

    sub-int/2addr v3, v0

    aget-object v0, v1, v3

    .line 420
    iget-object v3, p0, Lcom/mb/android/media/PlaybackManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {v3, v2}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v2

    .line 422
    invoke-virtual {v2}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mb/android/media/PlaybackManager$1;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/mb/android/media/PlaybackManager$1;-><init>(Lcom/mb/android/media/PlaybackManager;[Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/mb/android/apiinteraction/ApiClient;->getItem(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    const-string v1, ""

    .line 438
    invoke-virtual {p0, p1, v0, v1}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public playMediaPlaylist(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 710
    invoke-virtual {p0, v0}, Lcom/mb/android/media/PlaybackManager;->setIsCarPlay(Z)V

    .line 712
    new-instance v0, Lcom/mb/android/media/PlaybackManager$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mb/android/media/PlaybackManager$6;-><init>(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playMediaPlaylist(Ljava/lang/String;Ljava/util/List;IJ)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    goto :goto_0

    .line 655
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getLastUsedApiClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 660
    :cond_1
    new-instance v7, Lcom/mb/android/media/PlaybackManager$5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mb/android/media/PlaybackManager$5;-><init>(Lcom/mb/android/media/PlaybackManager;Ljava/util/List;Lcom/mb/android/apiinteraction/ApiClient;JI)V

    invoke-virtual {p1, v7}, Lcom/mb/android/apiinteraction/ApiClient;->determineServerUrl(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    return-void
.end method

.method public queueItems(Ljava/lang/String;Z)V
    .locals 1

    .line 1240
    new-instance v0, Lcom/mb/android/media/PlaybackManager$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/mb/android/media/PlaybackManager$9;-><init>(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removePlaylistItem(I)V
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->removePlaylistItem(I)V

    return-void
.end method

.method public reportRemotePlayback(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "itemId"

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager;->mQueueManager:Lcom/mb/android/media/QueueManager;

    invoke-virtual {v1}, Lcom/mb/android/media/QueueManager;->getCurrentMusic()Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "-1"

    :goto_0
    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    const-string v1, "artist"

    .line 150
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "title"

    .line 152
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "imageUrl"

    .line 153
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "isPaused"

    .line 154
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string v6, "canSeek"

    .line 155
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string v6, "position"

    .line 157
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v6, "duration"

    .line 158
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    .line 160
    new-instance v7, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-direct {v7}, Lcom/mb/android/model/dto/BaseItemDto;-><init>()V

    .line 161
    invoke-virtual {v7, v0}, Lcom/mb/android/model/dto/BaseItemDto;->setId(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v7, v3}, Lcom/mb/android/model/dto/BaseItemDto;->setName(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v7, v1}, Lcom/mb/android/model/dto/BaseItemDto;->setAlbum(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v1, Lcom/mb/android/model/dto/NameIdPair;

    invoke-direct {v1}, Lcom/mb/android/model/dto/NameIdPair;-><init>()V

    .line 169
    invoke-virtual {v1, v2}, Lcom/mb/android/model/dto/NameIdPair;->setName(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v7, v0}, Lcom/mb/android/model/dto/BaseItemDto;->setArtistItems(Ljava/util/ArrayList;)V

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-lez v2, :cond_3

    const-wide/16 v0, 0x2710

    mul-long v5, v5, v0

    .line 176
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/mb/android/model/dto/BaseItemDto;->setRunTimeTicks(Ljava/lang/Long;)V

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mQueueManager:Lcom/mb/android/media/QueueManager;

    invoke-virtual {v0, v7, v4}, Lcom/mb/android/media/QueueManager;->setCurrentMedia(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/ForwardingRemotePlayback;->reportPlayback(Landroid/content/Intent;)V

    return-void
.end method

.method public reportRemotePlaybackStopped()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

    invoke-virtual {v0}, Lcom/mb/android/media/ForwardingRemotePlayback;->reportPlaybackStopped()V

    .line 187
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mQueueManager:Lcom/mb/android/media/QueueManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mb/android/media/QueueManager;->setCurrentMedia(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)V

    return-void
.end method

.method public seekRelative(J)V
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/Playback;->seekRelative(J)V

    return-void
.end method

.method public setAudioStreamIndex(I)V
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setAudioStreamIndex(I)V

    return-void
.end method

.method public setIsCarPlay(Z)V
    .locals 1

    .line 138
    iput-boolean p1, p0, Lcom/mb/android/media/PlaybackManager;->isCarPlay:Z

    .line 139
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setShouldReportEvents(Z)V

    return-void
.end method

.method public setPlayback(ZLjava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 4

    .line 103
    invoke-direct {p0}, Lcom/mb/android/media/PlaybackManager;->clearPlayerCallbacks()V

    .line 105
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "Setting playback to %s"

    invoke-interface {v0, v3, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

    invoke-virtual {p1, p2}, Lcom/mb/android/media/ForwardingRemotePlayback;->setPlayback(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

    invoke-virtual {p1}, Lcom/mb/android/media/ForwardingRemotePlayback;->getVolumeProvider()Landroidx/media/VolumeProviderCompat;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToRemote(Landroidx/media/VolumeProviderCompat;)V

    .line 110
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->remotePlayback:Lcom/mb/android/media/ForwardingRemotePlayback;

    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->localPlayback:Lcom/mb/android/media/Playback;

    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    const/4 p1, 0x3

    .line 114
    invoke-virtual {p3, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    .line 116
    :goto_0
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {p1, p0}, Lcom/mb/android/media/Playback;->setCallback(Lcom/mb/android/media/Playback$Callback;)V

    .line 118
    invoke-virtual {p0, v2}, Lcom/mb/android/media/PlaybackManager;->onPlaybackStatusChanged(I)V

    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 1

    .line 1267
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setPlaybackRate(F)V

    return-void
.end method

.method public setRepeatMode(Ljava/lang/String;)V
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setRepeatMode(Ljava/lang/String;)V

    return-void
.end method

.method public setSubtitleOffset(J)V
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/Playback;->setSubtitleOffset(J)V

    return-void
.end method

.method public setSubtitleStreamIndex(I)V
    .locals 1

    .line 1224
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setSubtitleStreamIndex(I)V

    return-void
.end method

.method public setVideoAspectRatio(Ljava/lang/String;)V
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setVideoAspectRatio(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoOutputEnabled(Z)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setVideoOutputEnabled(Z)V

    return-void
.end method

.method public skipToIndex(I)V
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->skipToIndex(I)V

    return-void
.end method

.method public skipToNext()V
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->nextTrack()V

    return-void
.end method

.method public skipToPrevious()V
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->prevTrack()V

    return-void
.end method

.method public surfaceChanged(III)V
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v0, p1, p2, p3}, Lcom/mb/android/media/Playback;->surfaceChanged(III)V

    return-void
.end method

.method public toggleShuffle()V
    .locals 3

    .line 1260
    iget-boolean v0, p0, Lcom/mb/android/media/PlaybackManager;->shuffleOn:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/mb/android/media/PlaybackManager;->shuffleOn:Z

    .line 1261
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    iget-boolean v1, p0, Lcom/mb/android/media/PlaybackManager;->shuffleOn:Z

    invoke-interface {v0, v1}, Lcom/mb/android/media/Playback;->setShuffleOn(Z)V

    .line 1262
    iget-boolean v0, p0, Lcom/mb/android/media/PlaybackManager;->isCarPlay:Z

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mQueueManager:Lcom/mb/android/media/QueueManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    invoke-interface {v2}, Lcom/mb/android/media/Playback;->getPlaylist()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/media/QueueManager;->setQueue(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updatePlaybackState(IILjava/lang/String;)V
    .locals 11

    .line 266
    iget v0, p0, Lcom/mb/android/media/PlaybackManager;->lastState:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 267
    invoke-static {p1}, Lcom/mb/android/media/MediaUtils;->getPlaybackStateString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "PlaybackManager state: %s"

    invoke-interface {v2, v0, v3}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iput p1, p0, Lcom/mb/android/media/PlaybackManager;->lastState:I

    :cond_0
    const-wide/16 v2, -0x1

    .line 273
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager;->mPlayback:Lcom/mb/android/media/Playback;

    if-eqz v0, :cond_1

    .line 274
    invoke-interface {v0}, Lcom/mb/android/media/Playback;->getCurrentStreamPosition()J

    move-result-wide v2

    :cond_1
    move-wide v6, v2

    .line 281
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 282
    invoke-direct {p0}, Lcom/mb/android/media/PlaybackManager;->getAvailableActions()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    const/4 v2, 0x7

    if-eqz p3, :cond_2

    .line 288
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setErrorMessage(ILjava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    const/4 p1, 0x7

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    const/4 v8, 0x0

    .line 293
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move-object v4, v0

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_4

    const-wide/16 v1, 0x0

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActiveQueueItemId(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 301
    invoke-direct {p0, v0}, Lcom/mb/android/media/PlaybackManager;->setCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$Builder;)V

    .line 304
    :cond_4
    iget-object p3, p0, Lcom/mb/android/media/PlaybackManager;->mServiceCallback:Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;->onPlaybackStateUpdated(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/4 p2, 0x6

    if-ne p1, p2, :cond_6

    .line 309
    :cond_5
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager;->mServiceCallback:Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    invoke-interface {p1}, Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;->onNotificationRequired()V

    :cond_6
    return-void
.end method

.method public updatePlaybackState(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, p1, v0, p2}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(IILjava/lang/String;)V

    return-void
.end method
