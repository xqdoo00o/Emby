.class public final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHILD_SOURCE_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# instance fields
.field private final adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

.field private adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

.field private adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final adViewProvider:Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;

.field private final adsId:Ljava/lang/Object;

.field private final adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

.field private componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private contentTimeline:Lcom/google/android/exoplayer2/Timeline;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->CHILD_SOURCE_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 164
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 165
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    .line 166
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adViewProvider:Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;

    .line 167
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 168
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsId:Ljava/lang/Object;

    .line 169
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 170
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 p1, 0x0

    .line 171
    new-array p1, p1, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 172
    invoke-interface {p4}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->getSupportedTypes()[I

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->setSupportedContentTypes([I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method private getAdDurationsUs()[[J
    .locals 8

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    array-length v0, v0

    new-array v0, v0, [[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 364
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 365
    aget-object v3, v3, v2

    array-length v3, v3

    new-array v3, v3, [J

    aput-object v3, v0, v2

    const/4 v3, 0x0

    .line 366
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 367
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    .line 368
    aget-object v5, v0, v2

    if-nez v4, :cond_0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->getDurationUs()J

    move-result-wide v6

    :goto_2
    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private maybeUpdateAdMediaSources()V
    .locals 9

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 308
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x0

    .line 310
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 313
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 316
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->hasMediaSource()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 319
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    aget-object v5, v5, v3

    if-eqz v5, :cond_2

    .line 321
    new-instance v6, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v6

    .line 324
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 325
    invoke-interface {v7}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    if-eqz v7, :cond_1

    .line 326
    iget-object v8, v7, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v8, :cond_1

    .line 328
    iget-object v7, v7, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 332
    iget-object v8, v7, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmUuid(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 333
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmKeySetId([B)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 334
    iget-object v8, v7, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmLicenseUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 335
    iget-boolean v8, v7, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmForceDefaultLicenseUri(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 336
    iget-object v8, v7, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmLicenseRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 337
    iget-boolean v8, v7, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmMultiSession(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 338
    iget-boolean v8, v7, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmPlayClearContentWithoutKey(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 340
    iget-object v7, v7, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmSessionForClearTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 342
    :cond_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v6

    .line 343
    invoke-virtual {v4, v6, v5}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->initializeWithMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/net/Uri;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private maybeUpdateSourceInfo()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 352
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->getAdDurationsUs()[[J

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdDurationsUs([[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 354
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    move-object v0, v1

    .line 358
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    :cond_1
    return-void
.end method

.method private onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-nez v0, :cond_0

    .line 291
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 295
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateAdMediaSources()V

    .line 296
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 210
    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 212
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 213
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v3, v2, v0

    array-length v3, v3

    if-gt v3, v1, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 215
    aget-object v4, v2, v0

    .line 216
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aput-object v3, v2, v0

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 222
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    .line 223
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v0, v3, v0

    aput-object v2, v0, v1

    .line 224
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateAdMediaSources()V

    .line 226
    :cond_1
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->createMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    return-object p1

    .line 228
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V

    .line 229
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 230
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-object v0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 284
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 58
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$prepareSourceInternal$0$AdsMediaSource(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 6

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsId:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adViewProvider:Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;

    move-object v1, p0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->start(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method public synthetic lambda$releaseSourceInternal$1$AdsMediaSource(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->stop(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 1

    .line 267
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 268
    iget p2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 269
    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object p2, v0, p2

    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 271
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->handleSourceInfoRefresh(Lcom/google/android/exoplayer2/Timeline;)V

    goto :goto_1

    .line 273
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 274
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 276
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 193
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 194
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    .line 195
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 196
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->CHILD_SOURCE_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$zcXBZahV9F-k_KJACPO-bl_WWX0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$zcXBZahV9F-k_KJACPO-bl_WWX0;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 3

    .line 237
    check-cast p1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 238
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 239
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    aget-object v1, v1, v2

    .line 241
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 242
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->releaseMediaPeriod(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;)V

    .line 243
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->isInactive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->release()V

    .line 245
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iget v1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object p1, p1, v1

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->releasePeriod()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 3

    .line 254
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    const/4 v1, 0x0

    .line 256
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 257
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->stop()V

    .line 258
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 259
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v1, 0x0

    .line 260
    new-array v1, v1, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 261
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$4aMSO39zZ_2Ojc5az8RW_qLlkmQ;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdsMediaSource$4aMSO39zZ_2Ojc5az8RW_qLlkmQ;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
