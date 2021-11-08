.class public Lcom/mb/android/media/QueueManager;
.super Ljava/lang/Object;
.source "QueueManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/QueueManager$MetadataUpdateListener;
    }
.end annotation


# static fields
.field private static uniquePlaylistNumber:I


# instance fields
.field private jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private mListener:Lcom/mb/android/media/QueueManager$MetadataUpdateListener;

.field private mNowPlayingItem:Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mb/android/media/QueueManager$MetadataUpdateListener;Lcom/mb/android/model/serialization/IJsonSerializer;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0
    .param p1    # Lcom/mb/android/media/QueueManager$MetadataUpdateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/mb/android/media/QueueManager;->mListener:Lcom/mb/android/media/QueueManager$MetadataUpdateListener;

    .line 46
    iput-object p2, p0, Lcom/mb/android/media/QueueManager;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    .line 47
    iput-object p3, p0, Lcom/mb/android/media/QueueManager;->logger:Lcom/mb/android/model/logging/ILogger;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/QueueManager;Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mb/android/media/QueueManager;->updateMusicArt(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static buildMetadata(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/mb/android/media/QueueManager;->buildMetadata(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public static buildMetadata(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 11

    .line 147
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbum()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/dto/NameIdPair;

    invoke-virtual {v1}, Lcom/mb/android/model/dto/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getGenres()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getGenres()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getGenres()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumArtist()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "Media"

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v5

    .line 152
    :goto_1
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getOverview()Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbum()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesName()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbum()Ljava/lang/String;

    move-result-object v7

    .line 158
    :goto_2
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getUserData()Lcom/mb/android/model/dto/UserItemDataDto;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getUserData()Lcom/mb/android/model/dto/UserItemDataDto;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mb/android/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v3, 0x1

    .line 159
    :cond_4
    new-instance v8, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v8}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    const-string v10, "android.media.metadata.MEDIA_ID"

    .line 160
    invoke-virtual {v8, v10, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string v8, "android.media.metadata.MEDIA_URI"

    .line 161
    invoke-virtual {p1, v8, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string p2, "android.media.metadata.ALBUM"

    .line 162
    invoke-virtual {p1, p2, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string p2, "android.media.metadata.ARTIST"

    .line 163
    invoke-virtual {p1, p2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string p2, "android.media.metadata.ALBUM_ARTIST"

    .line 164
    invoke-virtual {p1, p2, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string p2, "android.media.metadata.GENRE"

    .line 165
    invoke-virtual {p1, p2, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string p2, "android.media.metadata.ALBUM_ART_URI"

    .line 166
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string p2, "android.media.metadata.DISPLAY_ICON_URI"

    .line 167
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string p2, "android.media.metadata.ART_URI"

    .line 168
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string p2, "android.media.metadata.TITLE"

    .line 169
    invoke-virtual {p1, p2, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string p2, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 170
    invoke-virtual {p1, p2, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string p2, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 171
    invoke-virtual {p1, p2, v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 172
    invoke-static {v3}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object p2

    const-string p3, "android.media.metadata.USER_RATING"

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 173
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "itemId"

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 174
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getServerId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "serverId"

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p2

    const-string p3, "itemType"

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 177
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_6

    .line 178
    :cond_5
    new-instance p2, Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-direct {p2}, Lcom/mb/android/model/dto/MediaSourceInfo;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/mb/android/model/dto/MediaSourceInfo;->setId(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/mb/android/model/dto/MediaSourceInfo;->setRunTimeTicks(Ljava/lang/Long;)V

    .line 181
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mb/android/model/dto/BaseItemDto;->setMediaSources(Ljava/util/List;)V

    .line 185
    :cond_6
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getPlaylistItemId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 186
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getPlaylistItemId()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 189
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "playlistItem"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/mb/android/media/QueueManager;->uniquePlaylistNumber:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 190
    sget p3, Lcom/mb/android/media/QueueManager;->uniquePlaylistNumber:I

    add-int/2addr p3, v9

    sput p3, Lcom/mb/android/media/QueueManager;->uniquePlaylistNumber:I

    .line 191
    invoke-virtual {p0, p2}, Lcom/mb/android/model/dto/BaseItemDto;->setPlaylistItemId(Ljava/lang/String;)V

    :goto_3
    const-string p3, "playlistItemId"

    .line 193
    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 195
    new-instance p2, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {p2}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    invoke-virtual {p2, p0}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "itemJson"

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 197
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 198
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    const-string v0, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p1, v0, p2, p3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 201
    :cond_8
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 202
    invoke-virtual {p0}, Lcom/mb/android/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-wide/16 v0, 0x2710

    div-long/2addr p2, v0

    const-string p0, "android.media.metadata.DURATION"

    .line 204
    invoke-virtual {p1, p0, p2, p3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 207
    :cond_9
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized updateMusicArt(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    .line 238
    :try_start_0
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    const-string p1, "android.media.metadata.ALBUM_ART"

    .line 242
    invoke-virtual {v0, p1, p3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    const-string p3, "android.media.metadata.DISPLAY_ICON"

    .line 247
    invoke-virtual {p1, p3, p4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 252
    invoke-virtual {p0}, Lcom/mb/android/media/QueueManager;->getCurrentMusic()Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    .line 254
    monitor-exit p0

    return-void

    .line 256
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 257
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 258
    iget-object p2, p0, Lcom/mb/android/media/QueueManager;->mListener:Lcom/mb/android/media/QueueManager$MetadataUpdateListener;

    invoke-interface {p2, p1}, Lcom/mb/android/media/QueueManager$MetadataUpdateListener;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public buildMetadataFromJson(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 124
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "source"

    .line 126
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "image"

    .line 127
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    iget-object v6, p0, Lcom/mb/android/media/QueueManager;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-string v7, "item"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v7, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-interface {v6, v3, v7}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mb/android/model/dto/BaseItemDto;

    .line 131
    invoke-static {v3, v4, v5}, Lcom/mb/android/media/QueueManager;->buildMetadata(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public getCurrentMusic()Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mb/android/media/QueueManager;->mNowPlayingItem:Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    return-object v0
.end method

.method public setCurrentMedia(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/mb/android/media/QueueManager;->mNowPlayingItem:Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    return-void
.end method

.method public setCurrentMedia(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 104
    invoke-static {p1, v0, p2}, Lcom/mb/android/media/QueueManager;->buildMetadata(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 106
    new-instance p2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/mb/android/media/QueueManager;->setCurrentMedia(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)V

    .line 110
    invoke-virtual {p0, p2, p1}, Lcom/mb/android/media/QueueManager;->updateMetadata(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public setQueue(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;

    .line 92
    invoke-virtual {v2}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    .line 93
    new-instance v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    add-int/lit8 v4, v1, 0x1

    int-to-long v5, v1

    invoke-direct {v3, v2, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    .line 95
    :cond_0
    iget-object p2, p0, Lcom/mb/android/media/QueueManager;->mListener:Lcom/mb/android/media/QueueManager$MetadataUpdateListener;

    invoke-interface {p2, p1, v0}, Lcom/mb/android/media/QueueManager$MetadataUpdateListener;->onQueueUpdated(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setSingleItemQueue(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 6

    const-string v0, "item"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/mb/android/media/QueueManager;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v2, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-interface {v1, v0, v2}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/dto/BaseItemDto;

    .line 56
    iget-object v1, p0, Lcom/mb/android/media/QueueManager;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-string v2, "mediaSource"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/mb/android/model/dto/MediaSourceInfo;

    invoke-interface {v1, v2, v3}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/dto/MediaSourceInfo;

    const-string v1, "path"

    .line 58
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "posterUrl"

    .line 59
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "Media"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v2

    .line 63
    :goto_0
    invoke-static {v0, v1, p1}, Lcom/mb/android/media/QueueManager;->buildMetadata(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/mb/android/media/QueueManager;->setCurrentMedia(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)V

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v3, p0, Lcom/mb/android/media/QueueManager;->mListener:Lcom/mb/android/media/QueueManager$MetadataUpdateListener;

    invoke-interface {v3, v2, v0}, Lcom/mb/android/media/QueueManager$MetadataUpdateListener;->onQueueUpdated(Ljava/lang/String;Ljava/util/List;)V

    .line 83
    invoke-virtual {p0, v1, p1}, Lcom/mb/android/media/QueueManager;->updateMetadata(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;Landroid/support/v4/media/MediaMetadataCompat;)V

    return-object p1
.end method

.method public updateMetadata(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/mb/android/media/QueueManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "QueueManager.updateMetadata"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/mb/android/media/QueueManager;->mListener:Lcom/mb/android/media/QueueManager$MetadataUpdateListener;

    invoke-interface {v0, p2}, Lcom/mb/android/media/QueueManager$MetadataUpdateListener;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 224
    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {}, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->getInstance()Lcom/mb/android/apiinteraction/android/AlbumArtCache;

    move-result-object v1

    new-instance v2, Lcom/mb/android/media/QueueManager$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/mb/android/media/QueueManager$1;-><init>(Lcom/mb/android/media/QueueManager;Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->fetch(Ljava/lang/String;Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;)V

    :cond_0
    return-void
.end method
