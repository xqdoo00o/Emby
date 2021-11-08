.class public final Lcom/mb/android/media/mpv/LocalPlaybackMpv;
.super Ljava/lang/Object;
.source "LocalPlaybackMpv.java"

# interfaces
.implements Lcom/mb/android/media/Playback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUSED:I = 0x2

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field public static final VOLUME_DUCK:I = 0x23

.field public static final VOLUME_NORMAL:I = 0x64


# instance fields
.field private currentLibraryItem:Lcom/mb/android/model/dto/BaseItemDto;

.field private currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

.field private jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioNoisyIntentFilter:Landroid/content/IntentFilter;

.field private final mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioNoisyReceiverRegistered:Z

.field private mCallback:Lcom/mb/android/media/Playback$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAudioFocusState:I

.field private mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

.field private mInitialAudioStreamIndex:I

.field private mInitialSubtitleStreamIndex:I

.field private mIsTranscodedVideo:Z

.field private mLastState:I

.field private mListener:Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;

.field private final mMediaMetadata:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mPlayOnFocusGain:Z

.field private mPositionMs:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private messenger:Lcom/mb/android/media/MediaService$UIMessenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaService$UIMessenger;Z)V
    .locals 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mCurrentAudioFocusState:I

    .line 75
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioNoisyIntentFilter:Landroid/content/IntentFilter;

    .line 78
    new-instance v1, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v1}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iput-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    .line 89
    new-instance v1, Lcom/mb/android/media/mpv/LocalPlaybackMpv$1;

    invoke-direct {v1, p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv$1;-><init>(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V

    iput-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    iput v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mLastState:I

    const-wide/16 v0, 0x0

    .line 249
    iput-wide v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mPositionMs:J

    .line 935
    new-instance v0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$2;

    invoke-direct {v0, p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv$2;-><init>(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V

    iput-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 118
    iput-object p3, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 122
    iput-object p2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 124
    new-instance p3, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;

    invoke-direct {p3, p0, p2, p1, p4}, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;-><init>(Lcom/mb/android/media/mpv/LocalPlaybackMpv;Lcom/mb/android/model/logging/ILogger;Landroid/content/Context;Z)V

    iput-object p3, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mListener:Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;

    .line 126
    iput-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    .line 128
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mMediaMetadata:Ljava/util/concurrent/ConcurrentMap;

    const-string p2, "audio"

    .line 131
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->onPlaybackPaused()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/mb/android/media/mpv/LocalPlaybackMpv;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mCurrentItem:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->getCurrentItem(I)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1302(Lcom/mb/android/media/mpv/LocalPlaybackMpv;J)J
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mPositionMs:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mCurrentAudioFocusState:I

    return p1
.end method

.method static synthetic access$302(Lcom/mb/android/media/mpv/LocalPlaybackMpv;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mPlayOnFocusGain:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->configurePlayerState()V

    return-void
.end method

.method static synthetic access$500(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/MediaService$UIMessenger;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mLastState:I

    return p0
.end method

.method static synthetic access$602(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mLastState:I

    return p1
.end method

.method static synthetic access$700(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)Lcom/mb/android/media/Playback$Callback;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mCallback:Lcom/mb/android/media/Playback$Callback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->setInitialVideoState()V

    return-void
.end method

.method static synthetic access$900(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->onPlaybackUnpaused()V

    return-void
.end method

.method public static attachSurface(Lcom/mb/android/media/VideoManager;Lcom/mb/android/model/logging/ILogger;)V
    .locals 2

    .line 853
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 855
    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/media/VideoManager;->getSurfaceToAttach()Landroid/view/Surface;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 858
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Calling MPVLib.attachSurface"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 859
    invoke-static {p0}, Lis/xyz/mpv/MPVLib;->attachSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method private configurePlayerState()V
    .locals 4

    .line 910
    iget v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mCurrentAudioFocusState:I

    const-string v1, "pause"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 912
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_3

    .line 913
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 916
    :cond_0
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->registerAudioNoisyReceiver()V

    .line 918
    iget v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mCurrentAudioFocusState:I

    const-string v3, "volume"

    if-ne v0, v2, :cond_1

    const/16 v0, 0x23

    .line 920
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lis/xyz/mpv/MPVLib;->setPropertyInt(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 922
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lis/xyz/mpv/MPVLib;->setPropertyInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 926
    :goto_0
    iget-boolean v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mPlayOnFocusGain:Z

    if-eqz v0, :cond_3

    .line 927
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 928
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 930
    :cond_2
    iput-boolean v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mPlayOnFocusGain:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private destroyPlayer(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mPlayOnFocusGain:Z

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->giveUpAudioFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 183
    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Error giving up audio focus"

    invoke-interface {v2, v4, v1, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 187
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->unregisterAudioNoisyReceiver()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 190
    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Error in unregisterAudioNoisyReceiver"

    invoke-interface {v2, v4, v1, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->sendVideoDestroyBroadcast()V

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "destroying MPV"

    invoke-interface {p1, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 200
    :try_start_3
    sget-boolean p1, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mListener:Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;

    invoke-static {p1}, Lcom/mb/android/media/mpv/MPVInstance;->destroy(Lcom/mb/android/media/mpv/MpvEventObserver;)V

    .line 202
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mListener:Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;

    invoke-virtual {p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->onShutdown()V

    .line 204
    :cond_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 207
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Error quitting MPV"

    invoke-interface {v1, v2, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 210
    :goto_2
    invoke-virtual {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->releaseNetworkLock()V

    .line 211
    invoke-virtual {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->releaseWakeLock()V

    return-void
.end method

.method private enableEmbeddedSubtitleTrack(Lcom/mb/android/model/dto/MediaSourceInfo;IZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, p2

    goto :goto_1

    .line 1226
    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/model/entities/MediaStream;

    .line 1227
    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v3

    sget-object v4, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getIsExternal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1228
    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v3

    if-ne p2, v3, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1237
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string p2, "enableEmbeddedSubtitleTrack. newIndex: %s, vlc track number: %s"

    invoke-interface {p1, p2, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "track-list/count"

    .line 1239
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1241
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_5

    .line 1244
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "track-list/%s/type"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1248
    iget-object v5, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v0

    const-string v7, "Found track with type %s"

    invoke-interface {v5, v7, v6}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "sub"

    .line 1250
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1251
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "track-list/%s/id"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1253
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1261
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, p3, :cond_6

    .line 1262
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "Cannot set subtitle stream index because the track doesn\'t exist in the track list"

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1266
    :cond_6
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1267
    iget-object p2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v0

    const-string v0, "Setting property sid to %s"

    invoke-interface {p2, v0, p3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "sid"

    invoke-static {p2, p1}, Lis/xyz/mpv/MPVLib;->setPropertyInt(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v1, :cond_7

    .line 1271
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dvb_teletext"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1273
    invoke-direct {p0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->setDvbTeletextPage(Lcom/mb/android/model/entities/MediaStream;)V

    :cond_7
    return-void
.end method

.method private getCurrentItem(I)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 2

    const/4 v0, 0x1

    .line 225
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "playlist/%d/filename"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->resolveUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mMediaMetadata:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMetadataForSource(Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 450
    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->resolveUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mMediaMetadata:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1
.end method

.method private giveUpAudioFocus()V
    .locals 4

    .line 892
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LocalPlaybackMpv.giveUpAudioFocus"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 897
    iput v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mCurrentAudioFocusState:I

    :cond_0
    return-void
.end method

.method private initMpv(ZLandroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mPlayOnFocusGain:Z

    .line 539
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->tryToGetAudioFocus()V

    .line 540
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->registerAudioNoisyReceiver()V

    .line 542
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Initializing MPV"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mListener:Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->setIsVideoPlayback(Z)V

    .line 545
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mListener:Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;

    invoke-static {v0, v1, p1}, Lcom/mb/android/media/mpv/MPVInstance;->init(Landroid/content/Context;Lcom/mb/android/media/mpv/MpvEventObserver;Z)Z

    const-string v0, "mediaSource"

    .line 547
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v2, Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-interface {v1, v0, v2}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/dto/MediaSourceInfo;

    const-string v1, "item"

    .line 550
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v3, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-interface {v2, v1, v3}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/dto/BaseItemDto;

    iput-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->currentLibraryItem:Lcom/mb/android/model/dto/BaseItemDto;

    .line 553
    iput-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    const-string v1, "isTranscoding"

    .line 554
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mIsTranscodedVideo:Z

    const/4 v1, -0x2

    const-string v2, "audioStreamIndex"

    .line 555
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mInitialAudioStreamIndex:I

    const-string v2, "subtitleStreamIndex"

    .line 556
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mInitialSubtitleStreamIndex:I

    .line 558
    invoke-direct {p0, v0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->setMpvOptions(Lcom/mb/android/model/dto/MediaSourceInfo;Z)V

    .line 560
    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->setSubtitleStyles(Z)V

    if-eqz p1, :cond_0

    .line 566
    invoke-direct {p0, p2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->sendVideoOnBroadcast(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p1, "vid"

    const-string p2, "no"

    .line 571
    invoke-static {p1, p2}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :goto_0
    invoke-virtual {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->acquireNetworkLock()V

    .line 579
    invoke-virtual {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->acquireWakeLock()V

    return-void
.end method

.method private onPlaybackPaused()V
    .locals 0

    .line 973
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->unregisterAudioNoisyReceiver()V

    return-void
.end method

.method private onPlaybackUnpaused()V
    .locals 0

    .line 967
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->registerAudioNoisyReceiver()V

    return-void
.end method

.method private openContentFd(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "r"

    .line 610
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    const-string v0, "fdclose://%d"

    const/4 v2, 0x1

    .line 611
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 613
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error Opening File Descriptor"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method

.method private registerAudioNoisyReceiver()V
    .locals 3

    .line 978
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "registerAudioNoisyReceiver"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    iget-boolean v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioNoisyReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioNoisyIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 982
    iput-boolean v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioNoisyReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private resolveUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 591
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 593
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "file://%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v2, "file"

    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v2, "content"

    .line 596
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->openContentFd(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 599
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    .line 602
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error Getting File Path"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-object p1
.end method

.method private resolveUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 586
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->resolveUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sendVideoDestroyBroadcast()V
    .locals 3

    .line 767
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LocalPlaybackMpv.sendVideoDestroyBroadcast"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    new-instance v0, Landroid/content/Intent;

    const-string v1, "videoDestroy"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .line 772
    invoke-virtual {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->detachSurface()V

    return-void
.end method

.method private sendVideoOnBroadcast(Landroid/os/Bundle;)V
    .locals 4

    .line 755
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LocalPlaybackMpv.sendVideoOnBroadcast"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    invoke-virtual {p0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->setVideoOutputEnabled(Z)V

    .line 760
    new-instance v0, Landroid/content/Intent;

    const-string v1, "beforePlayVideo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 762
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    return-void
.end method

.method private setDvbTeletextPage(Lcom/mb/android/model/entities/MediaStream;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1279
    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getExtradata()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 1289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_2

    const/16 v0, 0xb

    const/16 v1, 0xe

    .line 1290
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    add-int/lit16 p1, p1, 0x320

    .line 1294
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "teletext-page"

    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setPropertyInt(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method private setInitialVideoState()V
    .locals 3

    .line 1065
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoManager.setInitialState"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    iget v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mInitialAudioStreamIndex:I

    if-ltz v0, :cond_0

    .line 1068
    iget-boolean v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mIsTranscodedVideo:Z

    if-nez v1, :cond_0

    .line 1069
    invoke-virtual {p0, v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->setAudioStreamIndex(I)V

    .line 1073
    :cond_0
    iget v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mInitialSubtitleStreamIndex:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_1

    .line 1074
    invoke-virtual {p0, v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->setSubtitleStreamIndex(I)V

    :cond_1
    return-void
.end method

.method private setMpvOptions(Lcom/mb/android/model/dto/MediaSourceInfo;Z)V
    .locals 6

    if-eqz p2, :cond_0

    const-string v0, "video-sync"

    const-string v1, "audio"

    .line 621
    invoke-static {v0, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/model/dto/MediaSourceInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mb/android/model/dto/MediaSourceInfo;->getIsInfiniteStream()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "1800"

    const-string v1, "demuxer-readahead-secs"

    .line 625
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "cache-secs"

    .line 626
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x200000

    int-to-double v1, v0

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    .line 629
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 631
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "cache"

    invoke-static {v3, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cache-backbuffer"

    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "yes"

    const-string v1, "force-seekable"

    .line 633
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "hr-seek"

    .line 634
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "demuxer-lavf-analyzeduration"

    const-string v1, "3"

    .line 636
    invoke-static {v0, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p2, :cond_3

    return-void

    .line 643
    :cond_3
    invoke-virtual {p1}, Lcom/mb/android/model/dto/MediaSourceInfo;->getVideoStream()Lcom/mb/android/model/entities/MediaStream;

    move-result-object p1

    const-string p2, "mpeg2video,vp8,vp9"

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 653
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mpeg4"

    invoke-static {v2, v3}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 654
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getCodecTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xvid"

    .line 655
    invoke-static {v2, v3}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "dx50"

    invoke-static {v2, v3}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 663
    :goto_0
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hevc"

    invoke-static {v3, v4}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 670
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v4

    const-string v5, "h264"

    invoke-static {v4, v5}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 671
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getProfile()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getProfile()Ljava/lang/String;

    move-result-object p1

    const-string v4, "high 10"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 679
    :cond_7
    :goto_1
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v4, "Huawei"

    .line 680
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    :cond_8
    if-eqz v0, :cond_9

    .line 686
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",h264"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_9
    if-eqz v2, :cond_a

    .line 690
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",mpeg4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_a
    if-eqz v3, :cond_b

    .line 694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",hevc"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_b
    const-string p1, "hwdec-codecs"

    .line 697
    invoke-static {p1, p2}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_c

    .line 700
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 701
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    .line 703
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "display-fps"

    invoke-static {p2, p1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method private setSubtitleStyles(Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 713
    :cond_0
    new-instance p1, Lcom/mb/android/sync/AppSettings;

    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/mb/android/sync/AppSettings;->getSubtitleStyles()Lcom/mb/android/model/media/SubtitleStyles;

    move-result-object p1

    .line 715
    invoke-virtual {p1}, Lcom/mb/android/model/media/SubtitleStyles;->getTextSize()Lcom/mb/android/model/media/SubtitleTextSize;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Subtitle font size %s"

    invoke-interface {v1, v5, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    sget-object v1, Lcom/mb/android/media/mpv/LocalPlaybackMpv$3;->$SwitchMap$com$mb$android$model$media$SubtitleTextSize:[I

    invoke-virtual {v0}, Lcom/mb/android/model/media/SubtitleTextSize;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "sub-font-size"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "85"

    .line 737
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "75"

    .line 734
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v0, "65"

    .line 731
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v0, "55"

    .line 728
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string v0, "45"

    .line 725
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    const-string v0, "35"

    .line 722
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :goto_0
    invoke-virtual {p1}, Lcom/mb/android/model/media/SubtitleStyles;->getTextColor()Ljava/lang/String;

    move-result-object p1

    .line 742
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string v3, "Subtitle color %s"

    invoke-interface {v0, v3, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    .line 744
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "#"

    .line 746
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    const-string v0, "sub-color"

    .line 748
    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private tryToGetAudioFocus()V
    .locals 5

    .line 876
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LocalPlaybackMpv.tryToGetAudioFocus"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x1

    const/4 v4, 0x3

    .line 879
    invoke-virtual {v0, v2, v4, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    .line 884
    iput v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mCurrentAudioFocusState:I

    goto :goto_0

    .line 886
    :cond_0
    iput v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mCurrentAudioFocusState:I

    :goto_0
    return-void
.end method

.method private unregisterAudioNoisyReceiver()V
    .locals 5

    .line 988
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unregisterAudioNoisyReceiver"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 990
    iget-boolean v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioNoisyReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 993
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 996
    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Error in mContext.unregisterReceiver"

    invoke-interface {v2, v4, v0, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 999
    :goto_0
    iput-boolean v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mAudioNoisyReceiverRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public acquireNetworkLock()V
    .locals 3

    .line 1006
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v1, "Acquiring network lock"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1007
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mNetworkLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    const-string v2, "emby:MediaService"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mNetworkLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mNetworkLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public acquireWakeLock()V
    .locals 5

    const/4 v0, 0x0

    .line 1033
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v2, "Acquiring partial wake lock"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "emby:MediaService"

    .line 1038
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Huawei"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "AudioMix"

    :cond_0
    const/4 v3, 0x1

    .line 1041
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1043
    :cond_1
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1046
    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Error acquiring wake lock"

    invoke-interface {v2, v3, v1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public attachSurface(Landroid/view/Surface;)V
    .locals 1

    .line 838
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    .line 839
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->attachSurface(Landroid/view/Surface;)V

    const/4 p1, 0x1

    .line 840
    invoke-virtual {p0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->setVideoOutputEnabled(Z)V

    :cond_0
    return-void
.end method

.method public destroyPlayer()V
    .locals 1

    const-string v0, "Video"

    .line 170
    invoke-virtual {p0, v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->hasMedia(Ljava/lang/String;)Z

    move-result v0

    .line 172
    invoke-direct {p0, v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->destroyPlayer(Z)V

    return-void
.end method

.method public destroyPlayer(Ljava/lang/Runnable;)V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->destroyPlayer()V

    return-void
.end method

.method public detachSurface()V
    .locals 1

    .line 846
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    .line 847
    invoke-static {}, Lis/xyz/mpv/MPVLib;->detachSurface()V

    :cond_0
    return-void
.end method

.method public synthetic displayModeChanged()V
    .locals 0

    invoke-static {p0}, Lcom/mb/android/media/Playback$-CC;->$default$displayModeChanged(Lcom/mb/android/media/Playback;)V

    return-void
.end method

.method public fastForward()V
    .locals 2

    .line 262
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getSkipForwardLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->seekRelative(J)V

    return-void
.end method

.method public getCurrentItem()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    const-string v0, "playlist-pos"

    .line 216
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->getCurrentItem(I)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStreamPosition()J
    .locals 2

    .line 252
    iget-wide v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mPositionMs:J

    return-wide v0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    sget-boolean v1, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "playlist-count"

    .line 434
    invoke-static {v1}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 435
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 439
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 440
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "playlist/%d/filename"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 441
    invoke-direct {p0, v5}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->getMetadataForSource(Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 443
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mLastState:I

    return v0
.end method

.method public hasMedia(Ljava/lang/String;)Z
    .locals 1

    .line 814
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    invoke-static {}, Lcom/mb/android/media/mpv/MPVInstance;->hasMedia()Z

    move-result p1

    return p1

    .line 817
    :cond_0
    invoke-static {p1}, Lcom/mb/android/media/mpv/MPVInstance;->hasMedia(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public incrementSubtitleOffset(J)V
    .locals 0

    return-void
.end method

.method public isPlaying()Z
    .locals 2

    .line 246
    iget-boolean v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mPlayOnFocusGain:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mLastState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public movePlaylistItem(II)V
    .locals 3

    .line 299
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_1

    if-le p2, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    const/4 v0, 0x3

    .line 315
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "playlist-move"

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public nextTrack()V
    .locals 1

    .line 274
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 275
    iput v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mLastState:I

    const-string v0, "playlist-next"

    .line 276
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    .line 778
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 779
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "pause"

    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized play(Landroid/support/v4/media/MediaMetadataCompat;JLandroid/os/Bundle;)V
    .locals 7

    monitor-enter p0

    .line 461
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->resolveUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, " "

    const-string v2, "%20"

    .line 463
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "\\|"

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediaType"

    .line 467
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video"

    .line 468
    invoke-static {v2, v3}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 470
    invoke-direct {p0, v3, p4}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->initMpv(ZLandroid/os/Bundle;)V

    .line 472
    iget-object p4, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v4, "Playing %s mediaType %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    invoke-interface {p4, v4, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    iget-object p4, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mMediaMetadata:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p4}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string p4, "start"

    const-wide/16 v3, 0x3e8

    .line 477
    div-long v3, p2, v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    array-length p4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p4, :cond_2

    aget-object v4, v1, v3

    .line 480
    invoke-static {v4, v2, v0}, Lcom/mb/android/media/mpv/MPVInstance;->loadFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 482
    iget-object v5, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mMediaMetadata:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v4, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "pause"

    .line 485
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p1, p4}, Lis/xyz/mpv/MPVLib;->setPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 487
    iput-wide p2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mPositionMs:J

    .line 489
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->configurePlayerState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized play(Ljava/util/List;ILandroid/os/Bundle;)V
    .locals 5
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

    monitor-enter p0

    :try_start_0
    const-string v0, "mediaType"

    .line 495
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Video"

    .line 496
    invoke-static {v0, v1}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "startPositionMs"

    .line 498
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 500
    sget-boolean v3, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v3, :cond_0

    const-string p3, "stop"

    .line 501
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->initMpv(ZLandroid/os/Bundle;)V

    :goto_0
    if-lez p2, :cond_1

    :goto_1
    const-string p3, "idle-active"

    .line 511
    invoke-static {p3}, Lis/xyz/mpv/MPVLib;->getPropertyBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    .line 514
    :cond_1
    iget-object p3, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mMediaMetadata:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    const-string p3, "start"

    const-wide/16 v3, 0x3e8

    .line 516
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    if-ge p2, p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 521
    :goto_2
    iget-object p3, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mListener:Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;

    invoke-static {p3}, Lis/xyz/mpv/MPVLib;->removeObserver(Lis/xyz/mpv/EventObserver;)V

    .line 523
    invoke-virtual {p0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->queueItems(Ljava/util/List;)V

    const-string p1, "playlist/count"

    .line 525
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 526
    iget-object p3, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v1, "Starting playlist: playlist-count: %d startIndex: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-interface {p3, v1, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mListener:Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;

    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->addObserver(Lis/xyz/mpv/EventObserver;)V

    .line 529
    invoke-virtual {p0, p2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->skipToIndex(I)V

    .line 531
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->configurePlayerState()V

    const-string p1, "pause"

    .line 533
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lis/xyz/mpv/MPVLib;->setPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public playPause()V
    .locals 2

    .line 792
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "cycle"

    const-string v1, "pause"

    .line 793
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public prevTrack()V
    .locals 1

    .line 282
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 283
    iput v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mLastState:I

    const-string v0, "playlist-prev"

    .line 284
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public queueItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation

    .line 334
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    const-string v1, "android.media.metadata.MEDIA_URI"

    .line 340
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->resolveUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 343
    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mMediaMetadata:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {v1}, Lcom/mb/android/media/mpv/MPVInstance;->appendFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public queueItemsNext(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation

    .line 352
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "playlist-count"

    .line 356
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "playlist-pos-1"

    .line 357
    invoke-static {v1}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 362
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 365
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 366
    invoke-virtual {p0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->queueItems(Ljava/util/List;)V

    goto :goto_3

    .line 370
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;

    const-string v4, "android.media.metadata.MEDIA_URI"

    .line 372
    invoke-virtual {v2, v4}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->resolveUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 375
    iget-object v5, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mMediaMetadata:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-static {v4}, Lcom/mb/android/media/mpv/MPVInstance;->appendFile(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->movePlaylistItem(II)V

    move-object v0, v2

    move-object v1, v4

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public releaseNetworkLock()V
    .locals 3

    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mNetworkLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v1, "Releasing network lock"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mNetworkLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public releaseWakeLock()V
    .locals 3

    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v1, "Releasing wake lock"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public removePlaylistItem(I)V
    .locals 4

    .line 322
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 324
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "playlist/%d/filename"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mMediaMetadata:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 327
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "playlist-remove"

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 2

    .line 257
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getSkipBackLength()J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->seekRelative(J)V

    return-void
.end method

.method public seekRelative(J)V
    .locals 4

    .line 267
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 268
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "seek"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string p2, "relative+keyframes"

    aput-object p2, v0, p1

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 800
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    .line 801
    invoke-direct {p0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->registerAudioNoisyReceiver()V

    long-to-int p2, p1

    .line 802
    div-int/lit16 p2, p2, 0x3e8

    .line 803
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "time-pos"

    invoke-static {p2, p1}, Lis/xyz/mpv/MPVLib;->setPropertyInt(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public setAudioStreamIndex(I)V
    .locals 7

    .line 1080
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    if-nez v0, :cond_0

    return-void

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

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

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

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

    .line 1093
    invoke-virtual {v3}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v5

    sget-object v6, Lcom/mb/android/model/entities/MediaStreamType;->Audio:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v5, v6, :cond_2

    .line 1094
    invoke-virtual {v3}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v3

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string p1, "track-list/count"

    .line 1101
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_7

    .line 1107
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "track-list/%s/type"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "audio"

    .line 1109
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1111
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "track-list/%s/id"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 1118
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1124
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v2, :cond_8

    .line 1125
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Cannot set audio stream index because the track doesn\'t exist in the track list"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1129
    :cond_8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1130
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Setting property aid to %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "aid"

    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setPropertyInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setCallback(Lcom/mb/android/media/Playback$Callback;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mCallback:Lcom/mb/android/media/Playback$Callback;

    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 0

    return-void
.end method

.method public setRepeatMode(Ljava/lang/String;)V
    .locals 3

    .line 388
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_2

    const-string v0, "RepeatOne"

    .line 390
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "inf"

    const-string v2, "loop-file"

    if-eqz v0, :cond_0

    .line 391
    invoke-static {v2, v1}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "RepeatAll"

    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "loop-playlist"

    if-eqz p1, :cond_1

    .line 394
    invoke-static {v0, v1}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "no"

    .line 397
    invoke-static {v2, p1}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setShouldReportEvents(Z)V
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mListener:Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv$PlayerListener;->setShouldReportEvents(Z)V

    return-void
.end method

.method public setShuffleOn(Z)V
    .locals 1

    .line 406
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "playlist-shuffle"

    .line 410
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "playlist-unshuffle"

    .line 413
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSubtitleOffset(J)V
    .locals 0

    return-void
.end method

.method public setSubtitleStreamIndex(I)V
    .locals 7

    .line 1137
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    if-nez v0, :cond_0

    return-void

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setSubtitleStreamIndex %s"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1144
    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-virtual {v2}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mb/android/model/entities/MediaStream;

    .line 1145
    invoke-virtual {v3}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v5

    sget-object v6, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v5

    if-ne v5, p1, :cond_1

    move-object v0, v3

    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 1155
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Disabling subtitles"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "sid"

    const-string v0, "no"

    .line 1158
    invoke-static {p1, v0}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 1164
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "New subtitle stream is null. Unable to proceed."

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1168
    :cond_4
    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryMethod()Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    move-result-object p1

    sget-object v2, Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;->Embed:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    const-string v3, "New subtitle stream is embedded."

    if-ne p1, v2, :cond_6

    .line 1170
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {p1, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    iget-boolean p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mIsTranscodedVideo:Z

    if-eqz p1, :cond_5

    .line 1174
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-direct {p0, p1, v4, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->enableEmbeddedSubtitleTrack(Lcom/mb/android/model/dto/MediaSourceInfo;IZ)V

    goto/16 :goto_2

    .line 1176
    :cond_5
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v0

    invoke-direct {p0, p1, v0, v4}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->enableEmbeddedSubtitleTrack(Lcom/mb/android/model/dto/MediaSourceInfo;IZ)V

    goto/16 :goto_2

    .line 1179
    :cond_6
    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryMethod()Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    move-result-object p1

    sget-object v2, Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;->Hls:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    if-ne p1, v2, :cond_a

    .line 1181
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {p1, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1185
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-virtual {p1}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/model/entities/MediaStream;

    .line 1186
    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v3

    sget-object v5, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v3, v5, :cond_7

    .line 1187
    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getSupportsExternalStream()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getIsTextSubtitleStream()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1188
    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v2

    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v3

    if-ne v2, v3, :cond_8

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1196
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->currentMediaSource:Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-direct {p0, p1, v4, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->enableEmbeddedSubtitleTrack(Lcom/mb/android/model/dto/MediaSourceInfo;IZ)V

    goto :goto_2

    .line 1198
    :cond_a
    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryMethod()Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    move-result-object p1

    sget-object v2, Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;->External:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    if-ne p1, v2, :cond_c

    .line 1200
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "New subtitle stream is external."

    invoke-interface {p1, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getDeliveryUrl()Ljava/lang/String;

    move-result-object p1

    .line 1204
    iget-object v2, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string v5, "Activating subtitles from %s"

    invoke-interface {v2, v5, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1208
    iget-object v3, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1210
    invoke-direct {p0, v2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->resolveUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    :cond_b
    const/4 v2, 0x4

    .line 1213
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "sub-add"

    aput-object v3, v2, v4

    aput-object p1, v2, v1

    const/4 p1, 0x2

    const-string v1, "cached"

    aput-object v1, v2, p1

    const/4 p1, 0x3

    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-static {v2}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public setVideoAspectRatio(Ljava/lang/String;)V
    .locals 10

    const-string v0, "x"

    .line 1300
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "setVideoAspectRatio %s"

    invoke-interface {v1, v5, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1302
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0x2dddaf

    const/4 v5, 0x2

    if-eq v1, v3, :cond_2

    const v3, 0x2ff583

    if-eq v1, v3, :cond_1

    const v3, 0x5a753b7

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "cover"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "fill"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v1, "-1"

    const-string v3, "0"

    const-string v6, "video-aspect"

    const-string v7, "no"

    const-string v8, "video-unscaled"

    const-string v9, "panscan"

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v5, :cond_4

    goto :goto_2

    .line 1324
    :cond_4
    invoke-static {v8, v7}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-static {v6, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "1"

    .line 1326
    invoke-static {v9, p1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1310
    :cond_5
    invoke-static {v9, v3}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android-surface-size"

    .line 1312
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1314
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v1, v0

    .line 1315
    invoke-static {v8, v7}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1319
    iget-object v1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string p1, "Error parsing size: %s"

    invoke-interface {v1, p1, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1304
    :cond_6
    invoke-static {v9, v3}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-static {v8, v7}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-static {v6, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public setVideoOutputEnabled(Z)V
    .locals 1

    const-string v0, "vid"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 868
    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "no"

    .line 870
    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public skipToIndex(I)V
    .locals 1

    .line 290
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 291
    iput v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mLastState:I

    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "playlist-pos"

    invoke-static {v0, p1}, Lis/xyz/mpv/MPVLib;->setPropertyInt(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mPlayOnFocusGain:Z

    const-string v1, "Video"

    .line 139
    invoke-virtual {p0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->hasMedia(Ljava/lang/String;)Z

    move-result v1

    .line 141
    sget-boolean v2, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "vid"

    const-string v3, "no"

    .line 146
    invoke-static {v2, v3}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 149
    iget-object v3, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "Error disabling video"

    invoke-interface {v3, v4, v2, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const-string v0, "stop"

    .line 153
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 157
    invoke-direct {p0, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->destroyPlayer(Z)V

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->mMediaMetadata:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public surfaceChanged(III)V
    .locals 5

    .line 823
    sget-boolean p1, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz p1, :cond_0

    .line 825
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Setting android-surface-size to %dx%d"

    invoke-interface {p1, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "%dx%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "android-surface-size"

    invoke-static {p2, p1}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unPause()V
    .locals 2

    .line 785
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 786
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "pause"

    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->setPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
