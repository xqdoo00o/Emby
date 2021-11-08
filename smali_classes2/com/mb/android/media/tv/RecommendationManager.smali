.class public Lcom/mb/android/media/tv/RecommendationManager;
.super Landroid/content/BroadcastReceiver;
.source "RecommendationManager.java"


# instance fields
.field private final connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method public constructor <init>(Lcom/mb/android/apiinteraction/android/ConnectionManager;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mb/android/media/tv/RecommendationManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    .line 41
    iput-object p2, p0, Lcom/mb/android/media/tv/RecommendationManager;->context:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/mb/android/media/tv/RecommendationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/tv/RecommendationManager;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/mb/android/media/tv/RecommendationManager;->loadNextUpChannel(Lcom/mb/android/apiinteraction/ApiClient;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mb/android/media/tv/RecommendationManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/mb/android/media/tv/RecommendationManager;->refreshWatchNext(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mb/android/media/tv/RecommendationManager;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mb/android/media/tv/RecommendationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method private addWatchNext(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)V
    .locals 8

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {p1, p2}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {p1, p2}, Lcom/mb/android/media/MediaSource;->getThumbUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mb/android/media/tv/RecommendationManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/mb/android/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.mb.android.ACTION_START_PLAYBACK"

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getServerId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "serverId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    new-instance v3, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    invoke-direct {v3}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;-><init>()V

    const/4 v4, 0x0

    .line 148
    invoke-virtual {v3, v4}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object v5

    check-cast v5, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    const/4 v6, 0x1

    .line 149
    invoke-virtual {v5, v6}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setWatchNextType(I)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    move-result-object v5

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setLastEngagementTimeUtcMillis(J)Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    move-result-object v5

    .line 151
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setTitle(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object v5

    check-cast v5, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 152
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setDescription(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object v5

    check-cast v5, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 153
    invoke-virtual {v5, v2}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setIntent(Landroid/content/Intent;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object v2

    check-cast v2, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 154
    invoke-virtual {v2, v0}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setContentId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object v2

    check-cast v2, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 155
    invoke-virtual {v2, v0}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setInternalProviderId(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    .line 156
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "episode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 157
    invoke-virtual {v3, v0}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object v0

    check-cast v0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 158
    invoke-virtual {v0, v4}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setTvSeriesItemType(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    move-result-object v0

    check-cast v0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 159
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getSeasonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setSeasonTitle(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object v0

    check-cast v0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 160
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setSeasonNumber(I)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object v0

    check-cast v0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 161
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setEpisodeTitle(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object v0

    check-cast v0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 162
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setEpisodeNumber(I)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    move-result-object v0

    check-cast v0, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;

    .line 163
    invoke-virtual {p2}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setTitle(Ljava/lang/String;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    :cond_0
    if-eqz v1, :cond_1

    .line 166
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setPosterArtUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    .line 167
    invoke-virtual {v3, v4}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setPosterArtAspectRatio(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    :cond_1
    if-eqz p1, :cond_2

    .line 170
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setThumbnailUri(Landroid/net/Uri;)Landroidx/tvprovider/media/tv/BaseProgram$Builder;

    .line 171
    invoke-virtual {v3, v4}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->setPosterArtAspectRatio(I)Landroidx/tvprovider/media/tv/BasePreviewProgram$Builder;

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/mb/android/media/tv/RecommendationManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroidx/tvprovider/media/tv/TvContractCompat$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    .line 174
    invoke-virtual {v3}, Landroidx/tvprovider/media/tv/WatchNextProgram$Builder;->build()Landroidx/tvprovider/media/tv/WatchNextProgram;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/tvprovider/media/tv/WatchNextProgram;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 173
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private deleteWatchNext(Landroid/net/Uri;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/mb/android/media/tv/RecommendationManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mb/android/media/tv/RecommendationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Error deleting existing watch next entry at %s"

    invoke-interface {v0, p1, v1}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private loadNextUpChannel(Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/mb/android/media/tv/RecommendationManager$2;

    invoke-direct {v0, p0, p1}, Lcom/mb/android/media/tv/RecommendationManager$2;-><init>(Lcom/mb/android/media/tv/RecommendationManager;Lcom/mb/android/apiinteraction/ApiClient;)V

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getNextUp(Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private declared-synchronized refreshWatchNext(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 80
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/model/dto/BaseItemDto;

    .line 81
    invoke-virtual {v2}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaId()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 88
    :try_start_1
    iget-object v2, p0, Lcom/mb/android/media/tv/RecommendationManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroidx/tvprovider/media/tv/TvContractCompat$WatchNextPrograms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    const-string v5, "content_id"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    if-eqz p2, :cond_1

    .line 126
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 127
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :cond_1
    monitor-exit p0

    return-void

    .line 100
    :cond_2
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "_id"

    .line 101
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "content_id"

    .line 103
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 108
    :cond_3
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 109
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 112
    invoke-static {v4, v5}, Landroidx/tvprovider/media/tv/TvContractCompat;->buildWatchNextProgramUri(J)Landroid/net/Uri;

    move-result-object v4

    .line 113
    invoke-direct {p0, v4}, Lcom/mb/android/media/tv/RecommendationManager;->deleteWatchNext(Landroid/net/Uri;)V

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    :cond_5
    if-eqz p2, :cond_6

    .line 126
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 127
    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 123
    :try_start_5
    iget-object v2, p0, Lcom/mb/android/media/tv/RecommendationManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v3, "Error deleting existing watch next entry"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v4}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p2, :cond_6

    .line 126
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 131
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/dto/BaseItemDto;

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/mb/android/media/tv/RecommendationManager;->addWatchNext(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 134
    :cond_7
    monitor-exit p0

    return-void

    :goto_5
    if-eqz p2, :cond_8

    .line 126
    :try_start_7
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 127
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_8
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public loadAllChannels()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/mb/android/media/tv/RecommendationManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.live_tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/tv/RecommendationManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getLastUsedApiClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 53
    :cond_1
    new-instance v1, Lcom/mb/android/media/tv/RecommendationManager$1;

    invoke-direct {v1, p0, v0}, Lcom/mb/android/media/tv/RecommendationManager$1;-><init>(Lcom/mb/android/media/tv/RecommendationManager;Lcom/mb/android/apiinteraction/ApiClient;)V

    invoke-virtual {v0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->determineServerUrl(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.live_tv"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/tv/RecommendationManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getLastUsedApiClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 199
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mb.android.ACTION_PLAYBACK_END"

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "itemType"

    .line 202
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "episode"

    .line 203
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 204
    new-instance p2, Lcom/mb/android/media/tv/RecommendationManager$3;

    invoke-direct {p2, p0, p1}, Lcom/mb/android/media/tv/RecommendationManager$3;-><init>(Lcom/mb/android/media/tv/RecommendationManager;Lcom/mb/android/apiinteraction/ApiClient;)V

    invoke-virtual {p1, p2}, Lcom/mb/android/apiinteraction/ApiClient;->determineServerUrl(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    :cond_2
    return-void
.end method
