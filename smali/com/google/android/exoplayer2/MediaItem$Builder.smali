.class public final Lcom/google/android/exoplayer2/MediaItem$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adTagUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private adsId:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private clipEndPositionMs:J

.field private clipRelativeToDefaultPosition:Z

.field private clipRelativeToLiveWindow:Z

.field private clipStartPositionMs:J

.field private clipStartsAtKeyFrame:Z

.field private customCacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private drmForceDefaultLicenseUri:Z

.field private drmKeySetId:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private drmLicenseRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private drmLicenseUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private drmMultiSession:Z

.field private drmPlayClearContentWithoutKey:Z

.field private drmSessionForClearTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private drmUuid:Ljava/util/UUID;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private liveMaxOffsetMs:J

.field private liveMaxPlaybackSpeed:F

.field private liveMinOffsetMs:J

.field private liveMinPlaybackSpeed:F

.field private liveTargetOffsetMs:J

.field private mediaId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem$Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 91
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipEndPositionMs:J

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmSessionForClearTypes:Ljava/util/List;

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseRequestHeaders:Ljava/util/Map;

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitles:Ljava/util/List;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 96
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    .line 97
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    .line 98
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    const v0, -0x800001

    .line 99
    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    .line 100
    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 105
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipEndPositionMs:J

    .line 106
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToLiveWindow:Z

    .line 107
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToDefaultPosition:Z

    .line 108
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartPositionMs:J

    .line 109
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartsAtKeyFrame:Z

    .line 110
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 112
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    .line 113
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    .line 114
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    .line 115
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    .line 116
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    .line 117
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->customCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    .line 120
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    .line 122
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->streamKeys:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 123
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->subtitles:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitles:Ljava/util/List;

    .line 124
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    .line 125
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    .line 128
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseRequestHeaders:Ljava/util/Map;

    .line 129
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmMultiSession:Z

    .line 130
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmForceDefaultLicenseUri:Z

    .line 131
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmPlayClearContentWithoutKey:Z

    .line 132
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmSessionForClearTypes:Ljava/util/List;

    .line 133
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmUuid:Ljava/util/UUID;

    .line 134
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmKeySetId:[B

    .line 136
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    if-eqz p1, :cond_1

    .line 138
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adTagUri:Landroid/net/Uri;

    .line 139
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adsId:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem;
    .locals 25

    move-object/from16 v0, p0

    .line 561
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmUuid:Ljava/util/UUID;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 563
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 565
    new-instance v12, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmUuid:Ljava/util/UUID;

    if-eqz v14, :cond_2

    new-instance v3, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    iget-object v15, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseRequestHeaders:Ljava/util/Map;

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmMultiSession:Z

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmForceDefaultLicenseUri:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmPlayClearContentWithoutKey:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmSessionForClearTypes:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmKeySetId:[B

    const/16 v22, 0x0

    move-object v13, v3

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v13 .. v22}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[BLcom/google/android/exoplayer2/MediaItem$1;)V

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adTagUri:Landroid/net/Uri;

    if-eqz v3, :cond_3

    new-instance v6, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adsId:Ljava/lang/Object;

    invoke-direct {v6, v3, v7, v2}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V

    goto :goto_3

    :cond_3
    move-object v6, v2

    :goto_3
    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitles:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    const/4 v11, 0x0

    move-object v2, v12

    move-object v3, v1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V

    .line 585
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    move-object v6, v12

    goto :goto_5

    :cond_5
    move-object v6, v2

    .line 587
    :goto_5
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 588
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartPositionMs:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipEndPositionMs:J

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToLiveWindow:Z

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToDefaultPosition:Z

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartsAtKeyFrame:Z

    const/4 v15, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;-><init>(JJZZZLcom/google/android/exoplayer2/MediaItem$1;)V

    new-instance v7, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    iget v3, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    iget v5, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    move-object/from16 v16, v7

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    move-wide/from16 v21, v12

    move/from16 v23, v3

    move/from16 v24, v5

    invoke-direct/range {v16 .. v24}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    new-instance v3, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    .line 602
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v3

    :goto_6
    move-object v8, v3

    const/4 v9, 0x0

    move-object v3, v1

    move-object v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v1
.end method

.method public setAdTagUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 447
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setAdTagUri(Landroid/net/Uri;Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdTagUri(Landroid/net/Uri;Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 468
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adTagUri:Landroid/net/Uri;

    .line 469
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adsId:Ljava/lang/Object;

    return-object p0
.end method

.method public setAdTagUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 431
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setAdTagUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setClipEndPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 208
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 209
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipEndPositionMs:J

    return-object p0
.end method

.method public setClipRelativeToDefaultPosition(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToDefaultPosition:Z

    return-object p0
.end method

.method public setClipRelativeToLiveWindow(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToLiveWindow:Z

    return-object p0
.end method

.method public setClipStartPositionMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 197
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 198
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartPositionMs:J

    return-object p0
.end method

.method public setClipStartsAtKeyFrame(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartsAtKeyFrame:Z

    return-object p0
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 398
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public setDrmForceDefaultLicenseUri(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 312
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmForceDefaultLicenseUri:Z

    return-object p0
.end method

.method public setDrmKeySetId([B)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 370
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmKeySetId:[B

    return-object p0
.end method

.method public setDrmLicenseRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 275
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 276
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseRequestHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public setDrmLicenseUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 249
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setDrmLicenseUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setDrmMultiSession(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmMultiSession:Z

    return-object p0
.end method

.method public setDrmPlayClearContentWithoutKey(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmPlayClearContentWithoutKey:Z

    return-object p0
.end method

.method public setDrmSessionForClearPeriods(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 333
    new-array v0, p1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 333
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmSessionForClearTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    return-object p0
.end method

.method public setDrmSessionForClearTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 354
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 355
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 356
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmSessionForClearTypes:Ljava/util/List;

    return-object p0
.end method

.method public setDrmUuid(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 289
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmUuid:Ljava/util/UUID;

    return-object p0
.end method

.method public setLiveMaxOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 508
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    return-object p0
.end method

.method public setLiveMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 534
    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    return-object p0
.end method

.method public setLiveMinOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 495
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    return-object p0
.end method

.method public setLiveMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 521
    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    return-object p0
.end method

.method public setLiveTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 482
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 188
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 385
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 386
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 387
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    return-object p0
.end method

.method public setSubtitles(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem$Subtitle;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 412
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 413
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 414
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitles:Ljava/util/List;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 547
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 173
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    return-object p1
.end method
