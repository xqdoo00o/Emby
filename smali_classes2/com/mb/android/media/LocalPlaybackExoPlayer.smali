.class public Lcom/mb/android/media/LocalPlaybackExoPlayer;
.super Ljava/lang/Object;
.source "LocalPlaybackExoPlayer.java"

# interfaces
.implements Lcom/mb/android/media/Playback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;,
        Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;,
        Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;
    }
.end annotation


# static fields
.field private static final Codec_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static MIME_TYPE_FALLBACK:Ljava/lang/String;


# instance fields
.field private final audioCacheKeyFactory:Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;

.field private final audioListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

.field private final context:Landroid/content/Context;

.field private currentIndex:I

.field private currentLibraryItem:Lcom/mb/android/model/dto/BaseItemDto;

.field private currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

.field private currentPosMs:J

.field private currentSubtitleOffsetUs:J

.field private externalSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private initialAudioStreamIndex:I

.field private initialSubtitleStreamIndex:I

.field private isRetryingOnError:Z

.field private isTranscodedVideo:Z

.field private final jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private mCallback:Lcom/mb/android/media/Playback$Callback;

.field private mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

.field private mLastState:I

.field private mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

.field private final mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

.field private final mediaSourceEventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

.field private messenger:Lcom/mb/android/media/MediaService$UIMessenger;

.field private playbackStarted:Z

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private playerHandler:Landroid/os/Handler;

.field private preferredSoftwareRendererTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final reportManager:Lcom/mb/android/media/PlaybackProgressReportManager;

.field private retryCount:I

.field private shouldReportEventsToUI:Z

.field private final streamRecord:Lcom/mb/android/media/StreamRecord;

.field private final textOutputListener:Lcom/google/android/exoplayer2/text/TextOutput;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private final upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final wakeWifiLockManager:Lcom/mb/android/media/WakeWifiLockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->Codec_Map:Ljava/util/Map;

    const-string v0, "application/x-subrip"

    .line 2143
    sput-object v0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->MIME_TYPE_FALLBACK:Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "srt"

    .line 2146
    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->registerCustomMimeType(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "text/x-ssa"

    const-string v3, "ass"

    .line 2147
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->registerCustomMimeType(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "application/smil"

    const-string v4, "smi"

    .line 2148
    invoke-static {v3, v4, v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->registerCustomMimeType(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2150
    sget-object v1, Lcom/mb/android/media/LocalPlaybackExoPlayer;->Codec_Map:Ljava/util/Map;

    const-string v3, "subrip"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    sget-object v0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->Codec_Map:Ljava/util/Map;

    const-string v1, "ssa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaService$UIMessenger;)V
    .locals 3

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mLastState:I

    const/4 v1, 0x1

    .line 161
    iput-boolean v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->shouldReportEventsToUI:Z

    .line 1394
    sget-object v1, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$z4pIvz0WNetRKXDe_Jw6jC7i2bc;->INSTANCE:Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$z4pIvz0WNetRKXDe_Jw6jC7i2bc;

    iput-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->textOutputListener:Lcom/google/android/exoplayer2/text/TextOutput;

    .line 1955
    new-instance v1, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Lcom/mb/android/media/LocalPlaybackExoPlayer$1;)V

    iput-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->audioListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;

    .line 1969
    new-instance v1, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;

    invoke-direct {v1, p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$1;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    iput-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaSourceEventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 166
    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 168
    iput-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    .line 170
    new-instance p3, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-direct {p3, p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    iput-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    .line 171
    new-instance p3, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p3, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    iput-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 172
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->externalSources:Ljava/util/ArrayList;

    .line 173
    new-instance p3, Lcom/mb/android/media/WakeWifiLockManager;

    invoke-direct {p3, p1, p2}, Lcom/mb/android/media/WakeWifiLockManager;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->wakeWifiLockManager:Lcom/mb/android/media/WakeWifiLockManager;

    .line 174
    new-instance p3, Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;

    invoke-direct {p3, p0, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Lcom/mb/android/media/LocalPlaybackExoPlayer$1;)V

    iput-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->audioCacheKeyFactory:Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;

    .line 175
    new-instance p3, Lcom/mb/android/media/StreamRecord;

    invoke-direct {p3, p1, p2}, Lcom/mb/android/media/StreamRecord;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->streamRecord:Lcom/mb/android/media/StreamRecord;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/mb/android/MainApp;

    invoke-virtual {p2}, Lcom/mb/android/MainApp;->getExoDownloadHelper()Lcom/mb/android/download/exo/ExoDownloadHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mb/android/download/exo/ExoDownloadHelper;->getDownloadCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 177
    new-instance p2, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {p2}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iput-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/mb/android/MainApp;

    invoke-virtual {p2}, Lcom/mb/android/MainApp;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p2

    .line 180
    new-instance p3, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSourceFactory;

    const-string v0, "Emby"

    .line 181
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lcom/google/android/exoplayer2/ext/okhttp/OkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;)V

    .line 182
    new-instance p2, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 183
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;-><init>()V

    iget-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 184
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p2

    iget-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 185
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p2

    new-instance p3, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;-><init>()V

    .line 186
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCacheReadDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p2

    new-instance p3, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    const-wide/32 v1, 0x500000

    invoke-direct {p3, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    .line 187
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCacheWriteDataSinkFactory(Lcom/google/android/exoplayer2/upstream/DataSink$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p2

    const/4 p3, 0x2

    .line 188
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setFlags(I)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p2

    iget-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->audioCacheKeyFactory:Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;

    .line 189
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCacheKeyFactory(Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->cacheSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    .line 190
    new-instance p2, Lcom/mb/android/media/PlaybackProgressReportManager;

    invoke-direct {p2, p1}, Lcom/mb/android/media/PlaybackProgressReportManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->reportManager:Lcom/mb/android/media/PlaybackProgressReportManager;

    return-void
.end method

.method static synthetic access$100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/content/Context;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getRepeatMode(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/dto/MediaSourceInfo;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/PlaybackProgressReportManager;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->reportManager:Lcom/mb/android/media/PlaybackProgressReportManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mLastState:I

    return p0
.end method

.method static synthetic access$1402(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mLastState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isRetryingOnError:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/mb/android/media/LocalPlaybackExoPlayer;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isRetryingOnError:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/Playback$Callback;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mCallback:Lcom/mb/android/media/Playback$Callback;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->retryCount:I

    return p0
.end method

.method static synthetic access$1702(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->retryCount:I

    return p1
.end method

.method static synthetic access$1708(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I
    .locals 2

    .line 116
    iget v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->retryCount:I

    return v0
.end method

.method static synthetic access$1802(Lcom/mb/android/media/LocalPlaybackExoPlayer;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playbackStarted:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setInitialVideoState()V

    return-void
.end method

.method static synthetic access$200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->shouldReportEventsToUI:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Ljava/util/ArrayList;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->preferredSoftwareRendererTypes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/mb/android/media/LocalPlaybackExoPlayer;F)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->sendVideoAspectChangedBroadcast(F)V

    return-void
.end method

.method static synthetic access$2700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/MediaService$UIMessenger;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/mb/android/media/LocalPlaybackExoPlayer;Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getSaveStreamEnabled(Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->audioCacheKeyFactory:Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentSubtitleOffsetUs:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/mb/android/media/LocalPlaybackExoPlayer;J)J
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentSubtitleOffsetUs:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Ljava/util/ArrayList;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->externalSources:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/mb/android/media/StreamRecord;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->streamRecord:Lcom/mb/android/media/StreamRecord;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p0
.end method

.method static synthetic access$602(Lcom/mb/android/media/LocalPlaybackExoPlayer;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mb/android/media/LocalPlaybackExoPlayer;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentIndex:I

    return p0
.end method

.method static synthetic access$802(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/mb/android/media/LocalPlaybackExoPlayer;)J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentPosMs:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/mb/android/media/LocalPlaybackExoPlayer;J)J
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentPosMs:J

    return-wide p1
.end method

.method private enabledSubtitleTrack(Lcom/mb/android/model/dto/MediaSourceInfo;IZ)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move p3, p2

    goto :goto_1

    .line 726
    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/entities/MediaStream;

    .line 727
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getIsExternal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 728
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v1

    if-ne p2, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 735
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string p2, "enableEmbeddedSubtitleTrack. newIndex: %s, ExoPlayer track number: %s"

    invoke-interface {p1, p2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    .line 744
    :cond_4
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 747
    :goto_2
    iget v4, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v4, :cond_7

    .line 748
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne v3, p3, :cond_5

    .line 750
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p2

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-lt v3, p3, :cond_c

    if-nez p2, :cond_8

    goto :goto_6

    :cond_8
    const/4 p3, 0x3

    .line 763
    invoke-direct {p0, v2, p3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)I

    move-result v1

    move v3, v1

    :goto_4
    const/4 v1, -0x1

    if-eq v3, v1, :cond_a

    .line 765
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    .line 766
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v4

    if-eq v4, v1, :cond_9

    move-object v5, p1

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 772
    invoke-direct {p0, v2, p3, v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;II)I

    move-result v3

    goto :goto_4

    :cond_a
    move-object v5, p1

    const/4 v4, -0x1

    :goto_5
    if-ne v4, v1, :cond_b

    .line 777
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "Couldn\'t find available track group in mapped track info array"

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v6, 0x3

    move-object v1, p0

    .line 781
    invoke-direct/range {v1 .. v6}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->selectTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;IILcom/google/android/exoplayer2/source/TrackGroupArray;I)V

    return-void

    .line 757
    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "Cannot set subtitle stream index because the track doesn\'t exist in the track list"

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private getExternalSubtitleMediaSources(Lcom/mb/android/model/dto/MediaSourceInfo;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/model/dto/MediaSourceInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;",
            ">;"
        }
    .end annotation

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 805
    :cond_0
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Adding external subtitle streams"

    invoke-interface {v1, v4, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    invoke-virtual {p1}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/entities/MediaStream;

    .line 808
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v3

    sget-object v4, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryMethod()Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    move-result-object v3

    sget-object v4, Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;->External:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    if-ne v3, v4, :cond_1

    .line 810
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryUrl()Ljava/lang/String;

    move-result-object v3

    .line 811
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 812
    iget-object v5, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const-string v7, "Adding subtitles from %s"

    invoke-interface {v5, v7, v6}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 816
    sget-object v5, Lcom/mb/android/media/LocalPlaybackExoPlayer;->Codec_Map:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :cond_2
    if-nez v5, :cond_3

    .line 819
    invoke-static {v3}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-nez v5, :cond_4

    .line 822
    sget-object v5, Lcom/mb/android/media/LocalPlaybackExoPlayer;->MIME_TYPE_FALLBACK:Ljava/lang/String;

    .line 825
    :cond_4
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    .line 828
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 824
    invoke-static {v3, v5, v6, v1}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 829
    new-instance v3, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    iget-object v5, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    const-wide/16 v5, 0x0

    .line 831
    invoke-virtual {v3, v5, v6}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->setSampleTimeUs(J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    move-result-object v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 832
    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    move-result-object v1

    .line 833
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private getItem(I)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 2

    .line 1210
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    return-object v1

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 1214
    instance-of v0, p1, Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v0, :cond_1

    .line 1215
    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1

    :cond_1
    return-object v1
.end method

.method private getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)I
    .locals 1

    const/4 v0, 0x0

    .line 688
    invoke-direct {p0, p1, p2, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;II)I

    move-result p1

    return p1
.end method

.method private getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;II)I
    .locals 1

    .line 692
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 693
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    .line 694
    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getRepeatMode(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method private getSaveStreamEnabled(Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1352
    invoke-direct {p0, p1, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getSaveStreamEnabled(Landroid/support/v4/media/MediaMetadataCompat;Z)Z

    move-result p1

    return p1
.end method

.method private getSaveStreamEnabled(Landroid/support/v4/media/MediaMetadataCompat;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1356
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1360
    :cond_0
    invoke-virtual {v1}, Lcom/mb/android/model/dto/MediaSourceInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-virtual {v1}, Lcom/mb/android/model/dto/MediaSourceInfo;->getIsInfiniteStream()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1364
    :cond_1
    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isLocalItem(Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const-string v0, "serverId"

    .line 1368
    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1369
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->streamRecord:Lcom/mb/android/media/StreamRecord;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/media/StreamRecord;->getStreamRecordEnabled(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private getSubtitleStream(I)Lcom/mb/android/model/entities/MediaStream;
    .locals 5

    .line 785
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 789
    :cond_0
    invoke-virtual {v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/model/entities/MediaStream;

    .line 790
    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v3

    sget-object v4, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method public static getUserCaptionStyle(Landroid/content/Context;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;
    .locals 13

    const-string v0, "Failed to parse subtitle styles"

    const-string v1, "LocalPlaybackExoPlayer"

    .line 344
    sget-object v2, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 345
    iget v3, v2, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    .line 346
    iget v4, v2, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    .line 347
    iget v8, v2, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    .line 349
    iget v2, v2, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    .line 352
    new-instance v5, Lcom/mb/android/sync/AppSettings;

    invoke-direct {v5, p0}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v5}, Lcom/mb/android/sync/AppSettings;->getSubtitleStyles()Lcom/mb/android/model/media/SubtitleStyles;

    move-result-object v5

    .line 355
    :try_start_0
    invoke-virtual {v5}, Lcom/mb/android/model/media/SubtitleStyles;->getTextColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 358
    invoke-static {v1, v0, v6}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move v6, v3

    const/4 v3, 0x0

    .line 361
    :try_start_1
    invoke-virtual {v5}, Lcom/mb/android/model/media/SubtitleStyles;->getTextBackground()Ljava/lang/String;

    move-result-object v7

    const-string v9, "transparent"

    .line 362
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 366
    :cond_0
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v0

    goto :goto_1

    :catch_1
    move-exception v7

    .line 370
    invoke-static {v1, v0, v7}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move v7, v4

    .line 373
    sget-object v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$2;->$SwitchMap$com$mb$android$model$media$SubtitleDropShadow:[I

    invoke-virtual {v5}, Lcom/mb/android/model/media/SubtitleStyles;->getDropShadow()Lcom/mb/android/model/media/SubtitleDropShadow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mb/android/model/media/SubtitleDropShadow;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v9, 0x1

    if-eq v0, v9, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    move v9, v2

    goto :goto_2

    :cond_1
    const/4 v9, 0x2

    goto :goto_2

    :cond_2
    const/4 v9, 0x4

    goto :goto_2

    :cond_3
    const/4 v9, 0x3

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 391
    :cond_5
    :goto_2
    new-instance v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "subfont.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 398
    invoke-static {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getUserSubtitleTextSize(Landroid/content/Context;)I

    move-result v12

    const/high16 v10, -0x1000000

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;I)V

    return-object v0
.end method

.method public static getUserSubtitleTextSize(Landroid/content/Context;)I
    .locals 1

    .line 402
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    invoke-direct {v0, p0}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 403
    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getSubtitleStyles()Lcom/mb/android/model/media/SubtitleStyles;

    move-result-object p0

    .line 405
    sget-object v0, Lcom/mb/android/media/LocalPlaybackExoPlayer$2;->$SwitchMap$com$mb$android$model$media$SubtitleTextSize:[I

    invoke-virtual {p0}, Lcom/mb/android/model/media/SubtitleStyles;->getTextSize()Lcom/mb/android/model/media/SubtitleTextSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mb/android/model/media/SubtitleTextSize;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 p0, 0x37

    goto :goto_0

    :cond_0
    const/16 p0, 0x55

    goto :goto_0

    :cond_1
    const/16 p0, 0x4b

    goto :goto_0

    :cond_2
    const/16 p0, 0x41

    goto :goto_0

    :cond_3
    const/16 p0, 0x2d

    goto :goto_0

    :cond_4
    const/16 p0, 0x23

    :goto_0
    return p0
.end method

.method private declared-synchronized initPlayer(Landroid/os/Bundle;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "mediaType"

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Video"

    .line 196
    invoke-static {v0, v1}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->sendVideoDestroyBroadcast()V

    .line 201
    :cond_0
    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->sendVideoOnBroadcast(Landroid/os/Bundle;)V

    .line 202
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setSubtitleStyles()V

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-virtual {v1, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->setIsVideoPlayback(Z)V

    .line 206
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->resetPreferredExtensionRendererTypes()V

    const-string v1, "mediaSource"

    .line 208
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "item"

    .line 209
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v4, Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-interface {v3, v1, v4}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/dto/MediaSourceInfo;

    iput-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    .line 211
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v3, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-interface {v1, v2, v3}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/dto/BaseItemDto;

    iput-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentLibraryItem:Lcom/mb/android/model/dto/BaseItemDto;

    const-string v1, "isTranscoding"

    .line 212
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isTranscodedVideo:Z

    const-string v1, "audioStreamIndex"

    const/4 v2, -0x2

    .line 213
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->initialAudioStreamIndex:I

    const-string v1, "subtitleStreamIndex"

    .line 214
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->initialSubtitleStreamIndex:I

    .line 216
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-nez p1, :cond_6

    const/16 p1, 0x9c4

    .line 218
    new-instance v2, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    const/16 v3, 0x1388

    const v4, 0xc350

    .line 219
    invoke-virtual {v2, v4, v4, p1, v3}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->build()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object p1

    .line 225
    new-instance v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    if-nez v0, :cond_2

    .line 226
    invoke-direct {p0, p2, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getSaveStreamEnabled(Landroid/support/v4/media/MediaMetadataCompat;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 227
    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v3, "Save Stream enabled."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p2, v3, v4}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0x10

    .line 228
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    .line 230
    :cond_2
    iput-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 232
    new-instance p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 234
    invoke-static {}, Lcom/mb/android/AndroidAppHost;->isArc()Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_3

    .line 237
    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-static {v3, v4}, Lcom/mb/android/AndroidAppHost;->isTvDevice(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 239
    :goto_0
    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v4

    .line 240
    iget-object v5, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v6, "AudioCapabilities: %s"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-interface {v5, v6, v7}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v5, "ExoPlayer forceStereo: %s, audioOffload: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz p2, :cond_4

    const-string v7, "true"

    goto :goto_1

    :cond_4
    const-string v7, "false"

    :goto_1
    aput-object v7, v6, v1

    if-eqz v3, :cond_5

    const-string v7, "true"

    goto :goto_2

    :cond_5
    const-string v7, "false"

    :goto_2
    aput-object v7, v6, v2

    invoke-interface {v4, v5, v6}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "subfont.ttf"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 248
    new-instance v5, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    iget-object v6, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    new-instance v7, Lcom/mb/android/media/exoplayer/ExtendedRenderersFactory;

    iget-object v8, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/mb/android/media/exoplayer/ExtendedRenderersFactory;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x9

    .line 251
    invoke-virtual {v7, v8}, Lcom/mb/android/media/exoplayer/ExtendedRenderersFactory;->setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object v7

    .line 254
    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setEnableDecoderFallback(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object v7

    iget-object v8, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->preferredSoftwareRendererTypes:Ljava/util/ArrayList;

    .line 255
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setPreferredExtensionRendererMimeTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object v7

    .line 256
    invoke-virtual {v7, p2}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setForceStereoAudioOutput(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object p2

    .line 257
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setEnableAudioOffload(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object p2

    .line 258
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setEnableAudioFloatOutput(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object p2

    .line 259
    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setDefaultFontFilePath(Ljava/lang/String;)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object p2

    .line 260
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setEnableAudioTrackPlaybackParams(Z)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object p2

    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-direct {v5, v6, p2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    .line 262
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setHandleAudioBecomingNoisy(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 263
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object p2

    .line 264
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 266
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playerHandler:Landroid/os/Handler;

    .line 267
    new-instance p1, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$H3Lg4xcxkAXSAE4j8yQY_jNIcYU;

    invoke-direct {p1, p0, v0}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$H3Lg4xcxkAXSAE4j8yQY_jNIcYU;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Z)V

    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    .line 289
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->wakeWifiLockManager:Lcom/mb/android/media/WakeWifiLockManager;

    invoke-virtual {p1}, Lcom/mb/android/media/WakeWifiLockManager;->acquireWakeLock()V

    .line 290
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->wakeWifiLockManager:Lcom/mb/android/media/WakeWifiLockManager;

    invoke-virtual {p1}, Lcom/mb/android/media/WakeWifiLockManager;->acquireNetworkLock()V

    .line 292
    :cond_6
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->externalSources:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 294
    iput v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->retryCount:I

    .line 295
    iput-boolean v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isRetryingOnError:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 297
    invoke-virtual {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setPlaybackRate(F)V

    const-wide/16 p1, 0x0

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setSubtitleOffset(J)V

    .line 300
    sget-object p1, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$U731WICrRdp_4GvkZFidKVlvSkI;->INSTANCE:Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$U731WICrRdp_4GvkZFidKVlvSkI;

    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isLocalItem(Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "itemId"

    .line 1373
    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "local:"

    .line 1374
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private static isText(Ljava/lang/String;)Z
    .locals 1

    .line 2155
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/vobsub"

    .line 2156
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-subrip"

    .line 2157
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/dvbsubs"

    .line 2158
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-vtt"

    .line 2159
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    .line 2160
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/pgs"

    .line 2161
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/smil"

    .line 2162
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$destroyPlayer$3()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$initPlayer$1()V
    .locals 2

    .line 301
    sget-object v0, Lcom/mb/android/media/VideoManager;->mSubtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/mb/android/media/VideoManager;->mSubtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->onCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$23(Ljava/util/List;)V
    .locals 1

    .line 1395
    sget-object v0, Lcom/mb/android/media/VideoManager;->mSubtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_0

    .line 1396
    sget-object v0, Lcom/mb/android/media/VideoManager;->mSubtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->onCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private queueItems(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;Z)V"
        }
    .end annotation

    .line 1093
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1097
    :cond_0
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3OLiGER76tR56f5SM-UvdDRc1LQ;

    invoke-direct {v0, p0, p1, p2}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3OLiGER76tR56f5SM-UvdDRc1LQ;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Ljava/util/List;Z)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetPreferredExtensionRendererTypes()V
    .locals 1

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->preferredSoftwareRendererTypes:Ljava/util/ArrayList;

    return-void
.end method

.method private runOrPost(Ljava/lang/Runnable;)V
    .locals 2

    .line 1383
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 1386
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1387
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1390
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private selectTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;IILcom/google/android/exoplayer2/source/TrackGroupArray;I)V
    .locals 5

    .line 707
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    invoke-direct {v0, p3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 708
    iget-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p3

    const/4 v2, 0x0

    .line 710
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 711
    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v4

    if-ne v4, p5, :cond_1

    if-eq v2, p2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 712
    :goto_1
    invoke-virtual {p3, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 715
    :cond_2
    invoke-virtual {p3, p2, p4, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 716
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    return-void
.end method

.method private sendVideoAspectChangedBroadcast(F)V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LocalPlaybackExoPlayer.sendVideoAspectChangedBroadcast"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "aspectRatio"

    .line 459
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 460
    new-instance p1, Landroid/content/Intent;

    const-string v1, "videoAspectChanged"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 462
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    return-void
.end method

.method private sendVideoDestroyBroadcast()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LocalPlaybackExoPlayer.sendVideoDestroyBroadcast"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "videoDestroy"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .line 472
    invoke-virtual {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->detachSurface()V

    return-void
.end method

.method private sendVideoOnBroadcast(Landroid/os/Bundle;)V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LocalPlaybackExoPlayer.sendVideoOnBroadcast"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    new-instance v0, Landroid/content/Intent;

    const-string v1, "beforePlayVideo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 451
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    return-void
.end method

.method private setInitialVideoState()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LocalPlaybackExoPlayer.setInitialState"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    iget v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->initialAudioStreamIndex:I

    if-ltz v0, :cond_0

    .line 330
    iget-boolean v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isTranscodedVideo:Z

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setAudioStreamIndex(I)V

    .line 335
    :cond_0
    iget v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->initialSubtitleStreamIndex:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_1

    .line 336
    invoke-virtual {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setSubtitleStreamIndex(I)V

    .line 339
    :cond_1
    iput v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->initialAudioStreamIndex:I

    const/4 v0, -0x2

    .line 340
    iput v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->initialSubtitleStreamIndex:I

    return-void
.end method

.method private setOpticalAudioDevice()V
    .locals 6

    .line 314
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 315
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const/4 v1, 0x2

    .line 316
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 317
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 318
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 319
    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPreferredAudioDevice(Landroid/media/AudioDeviceInfo;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSubtitleOffsetUs(J)V
    .locals 7

    .line 841
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    .line 842
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->externalSources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 843
    invoke-direct {p0, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setSubtitleRendererEnabled(Z)V

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->externalSources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    .line 846
    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 847
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    const/16 v4, 0x2905

    .line 848
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    .line 849
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    .line 850
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    .line 852
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->blockUntilDelivered()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 854
    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Error sending MSG_SET_SAMPLE_TIME"

    invoke-interface {v4, v6, v3, v5}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 857
    :cond_1
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->externalSources:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 858
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    :cond_2
    return-void
.end method

.method private setSubtitleRendererEnabled(Z)V
    .locals 5

    .line 1324
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1331
    :cond_1
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1332
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1333
    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    xor-int/lit8 v3, p1, 0x1

    .line 1334
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v3

    .line 1335
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1338
    :cond_3
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    return-void
.end method

.method private setSubtitleStyles()V
    .locals 3

    .line 431
    sget-object v0, Lcom/mb/android/media/VideoManager;->mSubtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-nez v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getUserCaptionStyle(Landroid/content/Context;)Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    move-result-object v1

    .line 437
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getUserSubtitleTextSize(Landroid/content/Context;)I

    move-result v2

    .line 439
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/text/CaptionStyleCompat;)V

    if-lez v2, :cond_1

    const/4 v1, 0x0

    int-to-float v2, v2

    .line 441
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFixedTextSize(IF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public attachSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1295
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    .line 1296
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    .line 1297
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    sget-object v0, Lcom/mb/android/media/VideoManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1298
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->textOutputListener:Lcom/google/android/exoplayer2/text/TextOutput;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 1299
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    sget-object v0, Lcom/mb/android/media/VideoManager;->mSubtitleSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setSubtitleSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized destroyPlayer()V
    .locals 1

    monitor-enter p0

    .line 502
    :try_start_0
    sget-object v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$9FfsnJOei24k7KuvNxp_TvEG4dc;->INSTANCE:Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$9FfsnJOei24k7KuvNxp_TvEG4dc;

    invoke-virtual {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->destroyPlayer(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroyPlayer(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 508
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 510
    :cond_0
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$CMRUSRYigEDUQvhHldDVo-nT24k;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$CMRUSRYigEDUQvhHldDVo-nT24k;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    .line 521
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->clear()V

    .line 522
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->externalSources:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 523
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->wakeWifiLockManager:Lcom/mb/android/media/WakeWifiLockManager;

    invoke-virtual {p1}, Lcom/mb/android/media/WakeWifiLockManager;->releaseWakeLock()V

    .line 524
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->wakeWifiLockManager:Lcom/mb/android/media/WakeWifiLockManager;

    invoke-virtual {p1}, Lcom/mb/android/media/WakeWifiLockManager;->releaseNetworkLock()V

    .line 525
    invoke-direct {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->sendVideoDestroyBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public detachSurface()V
    .locals 1

    .line 1246
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$LJlYSDaIJEjX_8N4ad4wzm4uy1Y;

    invoke-direct {v0, p0}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$LJlYSDaIJEjX_8N4ad4wzm4uy1Y;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public displayModeChanged()V
    .locals 3

    .line 1285
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LocalPlaybackExoPlayer.displayModeChanged"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1286
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$TKoet5_HJZYA5pMKcQt0iK2oVjE;

    invoke-direct {v0, p0}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$TKoet5_HJZYA5pMKcQt0iK2oVjE;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fastForward()V
    .locals 2

    .line 1003
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getSkipForwardLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->seekRelative(J)V

    return-void
.end method

.method public getCurrentItem()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method public getCurrentStreamPosition()J
    .locals 2

    .line 869
    iget-wide v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentPosMs:J

    return-wide v0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation

    .line 1191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1192
    :goto_0
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1193
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1194
    instance-of v3, v2, Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v3, :cond_0

    .line 1195
    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1198
    :cond_0
    new-instance v2, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 491
    iget v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mLastState:I

    return v0
.end method

.method public hasMedia(Ljava/lang/String;)Z
    .locals 8

    .line 1256
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1257
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 1258
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 1262
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1266
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    const/4 v3, 0x0

    .line 1267
    :goto_0
    iget v4, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_4

    .line 1268
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    const/4 v5, 0x0

    .line 1269
    :goto_1
    iget v6, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v5, v6, :cond_3

    .line 1270
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 1271
    iget-object v7, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1
.end method

.method public incrementSubtitleOffset(J)V
    .locals 2

    .line 1185
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentSubtitleOffsetUs:J

    add-long/2addr p1, v0

    .line 1186
    invoke-direct {p0, p1, p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setSubtitleOffsetUs(J)V

    return-void
.end method

.method public isPlaying()Z
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mLastState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$destroyPlayer$4$LocalPlaybackExoPlayer(Ljava/lang/Runnable;)V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 513
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 514
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaSourceEventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    .line 515
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 517
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-virtual {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onShutdown()V

    .line 519
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$detachSurface$21$LocalPlaybackExoPlayer()V
    .locals 2

    .line 1247
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1248
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    .line 1249
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->textOutputListener:Lcom/google/android/exoplayer2/text/TextOutput;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$displayModeChanged$22$LocalPlaybackExoPlayer()V
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->play()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initPlayer$0$LocalPlaybackExoPlayer(Z)V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    new-instance v1, Lcom/mb/android/media/exoplayer/ExoEventLogger;

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v1, v2, v3}, Lcom/mb/android/media/exoplayer/ExoEventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;Lcom/mb/android/model/logging/ILogger;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 272
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 274
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 275
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 277
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 278
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 279
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->audioListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAudioListener(Lcom/google/android/exoplayer2/audio/AudioListener;)V

    .line 280
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->access$1000(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)Lcom/mb/android/media/DefaultStreamVolumeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->start()V

    .line 281
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaSourceEventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    if-nez p1, :cond_2

    .line 283
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/C;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->audioListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$ExoAudioListener;->sendOpenAudioEffectControlBroadcast(I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$movePlaylistItem$14$LocalPlaybackExoPlayer(I)V
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1063
    instance-of v1, v0, Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v1, :cond_0

    .line 1064
    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    const-string v1, "playlistItemId"

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1065
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-virtual {v1, v0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaylistItemMoved(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$nextTrack$11$LocalPlaybackExoPlayer()V
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->next()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$pause$8$LocalPlaybackExoPlayer()V
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playbackStarted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 982
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$play$5$LocalPlaybackExoPlayer(JLandroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 919
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 920
    iput-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

    const/4 p1, 0x0

    .line 921
    iput p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentIndex:I

    .line 923
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public synthetic lambda$play$6$LocalPlaybackExoPlayer(IJ)V
    .locals 3

    .line 947
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_1

    .line 951
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 956
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    .line 957
    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getItem(I)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

    .line 958
    iput p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentIndex:I

    .line 960
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 961
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object p1

    .line 962
    iget-object p3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Playing audio %s"

    invoke-interface {p3, p1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 965
    :cond_2
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public synthetic lambda$playPause$7$LocalPlaybackExoPlayer()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playbackStarted:Z

    if-eqz v1, :cond_0

    .line 973
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$prevTrack$12$LocalPlaybackExoPlayer()V
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->previous()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$queueItems$16$LocalPlaybackExoPlayer(Ljava/util/List;Z)V
    .locals 6

    .line 1098
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 1099
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->clear()V

    return-void

    .line 1103
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    const/4 v1, 0x0

    .line 1105
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {p0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getSaveStreamEnabled(Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result v1

    .line 1107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;

    .line 1108
    invoke-virtual {v2}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1110
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1113
    :cond_1
    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eqz v1, :cond_2

    .line 1115
    iget-object v4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->cacheSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    .line 1118
    :cond_2
    new-instance v5, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 1119
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    move-result-object v2

    .line 1120
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object v2

    if-nez p2, :cond_3

    .line 1123
    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto :goto_0

    .line 1126
    :cond_3
    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V

    goto :goto_0

    .line 1130
    :cond_4
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-virtual {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaylistChanged()V

    return-void
.end method

.method public synthetic lambda$removePlaylistItem$15$LocalPlaybackExoPlayer(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 1074
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 1075
    instance-of v0, p1, Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->onPlaylistItemRemoved(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$seekRelative$10$LocalPlaybackExoPlayer(J)V
    .locals 5

    .line 1009
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_4

    .line 1010
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isCurrentWindowSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-long/2addr p1, v0

    .line 1014
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 1015
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {p0, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getSaveStreamEnabled(Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1016
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    .line 1018
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v0, 0x64

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    goto :goto_0

    :cond_1
    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    .line 1021
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    goto :goto_0

    .line 1025
    :cond_2
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 1027
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mListener:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-static {p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->access$3500(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)V

    :cond_4
    return-void
.end method

.method public synthetic lambda$seekTo$20$LocalPlaybackExoPlayer(J)V
    .locals 5

    .line 1223
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_3

    .line 1224
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isCurrentWindowSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getSaveStreamEnabled(Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 1229
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    .line 1231
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v0, 0x64

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    goto :goto_0

    :cond_1
    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    .line 1234
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    goto :goto_0

    .line 1238
    :cond_2
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$setPlaybackRate$19$LocalPlaybackExoPlayer(F)V
    .locals 2

    .line 1174
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1175
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setRepeatMode$17$LocalPlaybackExoPlayer(Ljava/lang/String;)V
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    const-string v0, "RepeatOne"

    .line 1138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const-string v0, "RepeatAll"

    .line 1141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1142
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    goto :goto_0

    .line 1145
    :cond_1
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$setShuffleOn$18$LocalPlaybackExoPlayer(Z)V
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setShuffleModeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$skipToIndex$13$LocalPlaybackExoPlayer(I)V
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekToDefaultPosition(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$stop$2$LocalPlaybackExoPlayer()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 483
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$unPause$9$LocalPlaybackExoPlayer()V
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playbackStarted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 991
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public movePlaylistItem(II)V
    .locals 3

    .line 1061
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$xYvzRI8ZcHaC1sS4Um1le6JRbdI;

    invoke-direct {v2, p0, p2}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$xYvzRI8ZcHaC1sS4Um1le6JRbdI;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->moveMediaSource(IILandroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public nextTrack()V
    .locals 1

    .line 1034
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$mn1ESGAgHZN1MGU-ehEt8QYF0xg;

    invoke-direct {v0, p0}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$mn1ESGAgHZN1MGU-ehEt8QYF0xg;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    .line 980
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$HneletCCiPcpUGmR--CQlWozk3o;

    invoke-direct {v0, p0}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$HneletCCiPcpUGmR--CQlWozk3o;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public play(Landroid/support/v4/media/MediaMetadataCompat;JLandroid/os/Bundle;)V
    .locals 6

    .line 875
    invoke-direct {p0, p4, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->initPlayer(Landroid/os/Bundle;Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 876
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->clear()V

    .line 878
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "mediaType"

    .line 879
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 880
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p4, v3, v4

    const-string p4, "Playing %s mediaType %s"

    invoke-interface {v1, p4, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p4

    if-eq p4, v2, :cond_1

    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    .line 898
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "Stream type not supported"

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 892
    :cond_0
    new-instance p4, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-direct {p4, v1, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    .line 893
    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    move-result-object p4

    .line 894
    invoke-virtual {p4, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p4

    goto :goto_0

    .line 885
    :cond_1
    new-instance p4, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->upstreamFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p4, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 886
    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p4

    new-instance v1, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;

    invoke-direct {v1, v5, v5}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    .line 887
    invoke-virtual {p4, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setExtractorFactory(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p4

    .line 888
    invoke-virtual {p4, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p4

    .line 903
    :goto_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getExternalSubtitleMediaSources(Lcom/mb/android/model/dto/MediaSourceInfo;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->externalSources:Ljava/util/ArrayList;

    .line 904
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->externalSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 905
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->externalSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 906
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaSourceEventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    goto :goto_1

    .line 908
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 909
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object p4, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->externalSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 911
    new-instance p4, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    new-array v1, v5, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p4, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 914
    :cond_3
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 916
    new-instance p4, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$He_xSp55jH_fQ03LQfdUTIOlx2E;

    invoke-direct {p4, p0, p2, p3, p1}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$He_xSp55jH_fQ03LQfdUTIOlx2E;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;JLandroid/support/v4/media/MediaMetadataCompat;)V

    invoke-direct {p0, p4}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public play(Ljava/util/List;ILandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-string v2, "startPositionMs"

    .line 930
    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    const-string v3, "itemPageIndex"

    .line 931
    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-nez v3, :cond_0

    .line 934
    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->clear()V

    goto :goto_0

    .line 936
    :cond_0
    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v3, :cond_1

    .line 939
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->clear()V

    return-void

    .line 942
    :cond_1
    :goto_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {p0, p3, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->initPlayer(Landroid/os/Bundle;Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 944
    invoke-virtual {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->queueItems(Ljava/util/List;)V

    .line 946
    new-instance p1, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$_wsNk8xlqlNdrm4s-6RD0xhw81c;

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$_wsNk8xlqlNdrm4s-6RD0xhw81c;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;IJ)V

    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playPause()V
    .locals 1

    .line 971
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$ODT-NeLuE8QsnEFBzWmp7D2alUI;

    invoke-direct {v0, p0}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$ODT-NeLuE8QsnEFBzWmp7D2alUI;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public prevTrack()V
    .locals 1

    .line 1043
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$ec5CxM320N06k1KQHJz5eelwhmQ;

    invoke-direct {v0, p0}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$ec5CxM320N06k1KQHJz5eelwhmQ;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queueItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1083
    invoke-direct {p0, p1, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->queueItems(Ljava/util/List;Z)V

    return-void
.end method

.method public queueItemsNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1088
    invoke-direct {p0, p1, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->queueItems(Ljava/util/List;Z)V

    return-void
.end method

.method public removePlaylistItem(I)V
    .locals 4

    .line 1072
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 1073
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mediaQueue:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->playerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$a0fiTMCTyIbhBKObJ1IQaibSrCw;

    invoke-direct {v3, p0, v0}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$a0fiTMCTyIbhBKObJ1IQaibSrCw;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSource(ILandroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method

.method public rewind()V
    .locals 2

    .line 998
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getSkipBackLength()J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->seekRelative(J)V

    return-void
.end method

.method public seekRelative(J)V
    .locals 1

    .line 1008
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fnUXv9X8nRad1k53WacZsDpWbrg;

    invoke-direct {v0, p0, p1, p2}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fnUXv9X8nRad1k53WacZsDpWbrg;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;J)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 1222
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$792Lk9VndhXlvPhpNYGK_DboIkU;

    invoke-direct {v0, p0, p1, p2}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$792Lk9VndhXlvPhpNYGK_DboIkU;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;J)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAudioStreamIndex(I)V
    .locals 8

    .line 531
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    if-nez v0, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setAudioStreamIndex %s"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gez p1, :cond_1

    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mb/android/model/entities/MediaStream;

    .line 544
    invoke-virtual {v3}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v5

    sget-object v6, Lcom/mb/android/model/entities/MediaStreamType;->Audio:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v5, v6, :cond_2

    .line 545
    invoke-virtual {v3}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v3

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 558
    :cond_5
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 561
    :goto_2
    iget v7, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v7, :cond_8

    .line 562
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-ne v6, v2, :cond_6

    .line 564
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    if-lt v6, v2, :cond_10

    if-nez v3, :cond_9

    goto :goto_8

    .line 577
    :cond_9
    invoke-direct {p0, p1, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)I

    move-result v2

    :goto_4
    const/4 v5, -0x1

    if-eq v2, v5, :cond_b

    .line 579
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    .line 580
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v6

    if-eq v6, v5, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 586
    invoke-direct {p0, p1, v1, v2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;II)I

    move-result v2

    goto :goto_4

    :cond_b
    const/4 v6, -0x1

    :goto_5
    if-ne v6, v5, :cond_c

    .line 591
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Couldn\'t find available track group in mapped track info array"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 598
    :cond_c
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v5, v1, [I

    aput v4, v5, v4

    invoke-direct {v3, v6, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 599
    iget-object v5, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v5

    const/4 v6, 0x0

    .line 600
    :goto_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 601
    iget-object v7, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v7

    if-ne v7, v1, :cond_e

    if-eq v6, v2, :cond_d

    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    .line 602
    :goto_7
    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 605
    :cond_f
    invoke-virtual {v5, v2, v0, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 606
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    return-void

    .line 571
    :cond_10
    :goto_8
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Cannot set audio stream index because the track doesn\'t exist in the track list"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setCallback(Lcom/mb/android/media/Playback$Callback;)V
    .locals 0

    .line 1379
    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->mCallback:Lcom/mb/android/media/Playback$Callback;

    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 1

    .line 1173
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fv3erA-NGNz06xoTRKRBw-_ZtmE;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$fv3erA-NGNz06xoTRKRBw-_ZtmE;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;F)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRepeatMode(Ljava/lang/String;)V
    .locals 1

    .line 1136
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$XAqOGSsI51oVlZy2CYt3bYxzPYg;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$XAqOGSsI51oVlZy2CYt3bYxzPYg;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setShouldReportEvents(Z)V
    .locals 0

    .line 1348
    iput-boolean p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->shouldReportEventsToUI:Z

    return-void
.end method

.method public setShuffleOn(Z)V
    .locals 1

    .line 1165
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$VO3Vw16MVuaqVETz5Skwe7DEhGc;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$VO3Vw16MVuaqVETz5Skwe7DEhGc;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Z)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSubtitleOffset(J)V
    .locals 0

    .line 1181
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setSubtitleOffsetUs(J)V

    return-void
.end method

.method public setSubtitleStreamIndex(I)V
    .locals 12

    .line 612
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setSubtitleStreamIndex %s"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 616
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Disabling subtitles"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    invoke-direct {p0, v4}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setSubtitleRendererEnabled(Z)V

    return-void

    .line 620
    :cond_0
    invoke-direct {p0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->setSubtitleRendererEnabled(Z)V

    .line 622
    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getSubtitleStream(I)Lcom/mb/android/model/entities/MediaStream;

    move-result-object p1

    if-nez p1, :cond_1

    .line 624
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "New subtitle stream is null. Unable to proceed."

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 628
    :cond_1
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryMethod()Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;->Embed:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    const-string v5, "New subtitle stream is embedded."

    if-ne v2, v3, :cond_3

    .line 629
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v5, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    iget-boolean v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->isTranscodedVideo:Z

    if-eqz v0, :cond_2

    .line 633
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-direct {p0, p1, v4, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->enabledSubtitleTrack(Lcom/mb/android/model/dto/MediaSourceInfo;IZ)V

    goto/16 :goto_5

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result p1

    invoke-direct {p0, v0, p1, v4}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->enabledSubtitleTrack(Lcom/mb/android/model/dto/MediaSourceInfo;IZ)V

    goto/16 :goto_5

    .line 638
    :cond_3
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryMethod()Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;->Hls:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    if-ne v2, v3, :cond_7

    .line 639
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v5, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/model/entities/MediaStream;

    .line 643
    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v3

    sget-object v5, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v3, v5, :cond_4

    .line 644
    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryMethod()Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    move-result-object v3

    sget-object v5, Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;->Hls:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    if-ne v3, v5, :cond_4

    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getIsTextSubtitleStream()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 645
    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v3

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 652
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-direct {p0, p1, v4, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->enabledSubtitleTrack(Lcom/mb/android/model/dto/MediaSourceInfo;IZ)V

    goto :goto_5

    .line 654
    :cond_7
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryMethod()Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;->External:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    if-ne v2, v3, :cond_e

    .line 655
    iget-object v2, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "New subtitle stream is external."

    invoke-interface {v2, v5, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 659
    iget-object v3, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v6

    if-nez v6, :cond_8

    return-void

    :cond_8
    const/4 v3, 0x3

    .line 665
    invoke-direct {p0, v6, v3}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;I)I

    move-result v5

    move-object v9, v2

    move v7, v5

    const/4 v2, 0x0

    const/4 v8, -0x1

    :cond_9
    :goto_2
    if-eq v7, v0, :cond_c

    if-nez v2, :cond_c

    .line 667
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v9

    const/4 v5, 0x0

    .line 668
    :goto_3
    iget v10, v9, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v10, :cond_b

    .line 669
    invoke-virtual {v9, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 670
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v10, v10, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    move v8, v5

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    if-nez v2, :cond_9

    add-int/lit8 v7, v7, 0x1

    .line 677
    invoke-direct {p0, v6, v3, v7}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->getRendererIndex(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;II)I

    move-result v7

    goto :goto_2

    :cond_c
    if-ne v7, v0, :cond_d

    return-void

    :cond_d
    const/4 v10, 0x3

    move-object v5, p0

    .line 683
    invoke-direct/range {v5 .. v10}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->selectTrack(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;IILcom/google/android/exoplayer2/source/TrackGroupArray;I)V

    :cond_e
    :goto_5
    return-void
.end method

.method public setVideoAspectRatio(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVideoOutputEnabled(Z)V
    .locals 4

    .line 1305
    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1307
    :goto_0
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererCount()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 1308
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ne v0, v2, :cond_2

    return-void

    .line 1316
    :cond_2
    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 1317
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v2

    xor-int/lit8 p1, p1, 0x1

    .line 1318
    invoke-virtual {v2, v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    .line 1316
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    :cond_3
    return-void
.end method

.method public skipToIndex(I)V
    .locals 1

    .line 1052
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3JQw9KeNdFeJJ3-kFkDEx0faA2w;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$3JQw9KeNdFeJJ3-kFkDEx0faA2w;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;I)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->destroyPlayer()V

    goto :goto_0

    .line 481
    :cond_0
    new-instance p1, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$ok5zDco7p51JeD6eKR3wLxp7JpE;

    invoke-direct {p1, p0}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$ok5zDco7p51JeD6eKR3wLxp7JpE;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public surfaceChanged(III)V
    .locals 0

    return-void
.end method

.method public unPause()V
    .locals 1

    .line 989
    new-instance v0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$ItAHSQRwimFFJx6AsnOP5AtXH1A;

    invoke-direct {v0, p0}, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$ItAHSQRwimFFJx6AsnOP5AtXH1A;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    invoke-direct {p0, v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->runOrPost(Ljava/lang/Runnable;)V

    return-void
.end method
