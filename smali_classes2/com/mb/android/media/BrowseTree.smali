.class public Lcom/mb/android/media/BrowseTree;
.super Ljava/lang/Object;
.source "BrowseTree.java"


# instance fields
.field private final browseTree:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final favoritesReceiver:Landroid/content/BroadcastReceiver;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private final mediaSource:Lcom/mb/android/media/MediaSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaSource;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/mb/android/media/BrowseTree$1;

    invoke-direct {v0, p0}, Lcom/mb/android/media/BrowseTree$1;-><init>(Lcom/mb/android/media/BrowseTree;)V

    iput-object v0, p0, Lcom/mb/android/media/BrowseTree;->favoritesReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/mb/android/media/BrowseTree;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/mb/android/media/BrowseTree;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 54
    iput-object p3, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    .line 55
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mb/android/media/BrowseTree;->browseTree:Ljava/util/HashMap;

    .line 57
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p2, p0, Lcom/mb/android/media/BrowseTree;->favoritesReceiver:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "com.mb.android.ACTION_FAVORITES_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/BrowseTree;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/mb/android/media/BrowseTree;->updateFavoriteSongs()V

    return-void
.end method

.method static synthetic access$100(Lcom/mb/android/media/BrowseTree;)Ljava/util/HashMap;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mb/android/media/BrowseTree;->browseTree:Ljava/util/HashMap;

    return-object p0
.end method

.method private buildRoot()V
    .locals 14

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.media.browse.CONTENT_STYLE_BROWSABLE_HINT"

    const/4 v3, 0x1

    .line 299
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    new-instance v4, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v5, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    const-string v6, "__MUSIC__"

    .line 302
    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    const-string v7, "Music"

    .line 303
    invoke-virtual {v5, v7}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.resource://com.mb.android/drawable/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mb/android/media/BrowseTree;->context:Landroid/content/Context;

    .line 304
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080127

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    .line 305
    invoke-virtual {v5, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    .line 306
    invoke-virtual {v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 308
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v4, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v5, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    const-string v7, "__FOLDERS__"

    .line 311
    invoke-virtual {v5, v7}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    const-string v9, "Browse"

    .line 312
    invoke-virtual {v5, v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mb/android/media/BrowseTree;->context:Landroid/content/Context;

    .line 313
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080106

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    .line 314
    invoke-virtual {v5, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 317
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    iget-object v4, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v4}, Lcom/mb/android/media/MediaSource;->getServerList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mb/android/apiinteraction/ApiClient;

    .line 321
    new-instance v9, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 323
    invoke-virtual {v5}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 324
    invoke-virtual {v5}, Lcom/mb/android/apiinteraction/ApiClient;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mb/android/media/BrowseTree;->context:Landroid/content/Context;

    .line 325
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0801c1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v5

    .line 326
    invoke-virtual {v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v5

    .line 327
    new-instance v9, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v9, v5, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 328
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_0
    iget-object v4, p0, Lcom/mb/android/media/BrowseTree;->browseTree:Ljava/util/HashMap;

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v1, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v1}, Lcom/mb/android/media/MediaSource;->getLastUsedClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 333
    :cond_1
    invoke-virtual {v1}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v1

    .line 335
    :goto_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x2

    .line 336
    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "android.media.browse.CONTENT_STYLE_PLAYABLE_HINT"

    .line 337
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v7, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v9, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "__LATEST__"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 341
    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    const-string v10, "Latest Music"

    .line 342
    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 343
    invoke-virtual {v9, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 344
    invoke-virtual {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v9

    invoke-direct {v7, v9, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 346
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v7, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v9, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "__RECENT__"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 348
    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    const-string v10, "Recently Played"

    .line 349
    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 350
    invoke-virtual {v9, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 351
    invoke-virtual {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v9

    invoke-direct {v7, v9, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 353
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v7, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v9, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "__FREQUENT__"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 355
    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    const-string v10, "Frequently Played"

    .line 356
    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 357
    invoke-virtual {v9, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 358
    invoke-virtual {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v9

    invoke-direct {v7, v9, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 360
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 362
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v9, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    const-string v10, "__FAVORITE__"

    .line 364
    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    const-string v12, "Favorites"

    .line 365
    invoke-virtual {v9, v12}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 366
    invoke-virtual {v9, v7}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v7

    .line 367
    invoke-virtual {v7}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v7

    invoke-direct {v2, v7, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 369
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 372
    new-instance v7, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v9, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "__FAVORITE_ALBUMS__"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 373
    invoke-virtual {v9, v12}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    const-string v12, "Favorite Albums"

    .line 374
    invoke-virtual {v9, v12}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 375
    invoke-virtual {v9, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 376
    invoke-virtual {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v9

    invoke-direct {v7, v9, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 378
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v7, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v9, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "__FAVORITE_ARTISTS__"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 380
    invoke-virtual {v9, v12}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    const-string v12, "Favorite Artists"

    .line 381
    invoke-virtual {v9, v12}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 382
    invoke-virtual {v9, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 383
    invoke-virtual {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v9

    invoke-direct {v7, v9, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 385
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v7, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v9, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__FAVORITE_SONGS__"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual {v9, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    const-string v9, "Favorite Songs"

    .line 388
    invoke-virtual {v1, v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 389
    invoke-virtual {v1, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    invoke-direct {v7, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 392
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, p0, Lcom/mb/android/media/BrowseTree;->browseTree:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v1, p0, Lcom/mb/android/media/BrowseTree;->browseTree:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v2, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    const-string v4, "__PLAYLIST__"

    .line 399
    invoke-virtual {v2, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v2

    const-string v4, "Playlists"

    .line 400
    invoke-virtual {v2, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mb/android/media/BrowseTree;->context:Landroid/content/Context;

    .line 401
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0801ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 404
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v1, p0, Lcom/mb/android/media/BrowseTree;->browseTree:Ljava/util/HashMap;

    const-string v2, "__ROOT__"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getFavoriteArtists(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/MediaSource;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    if-nez p1, :cond_0

    .line 276
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/media/MediaSource;->getFavoriteArtists(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private getFavorites(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/MediaSource;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    if-nez p1, :cond_0

    .line 267
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mb/android/media/MediaSource;->getFavoriteMusic(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private getFrequent(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/MediaSource;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    if-nez p1, :cond_0

    .line 258
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/media/MediaSource;->getFrequentlyPlayedMusic(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private getItems(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "@empty@"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "/"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 120
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 121
    iget-object p1, p0, Lcom/mb/android/media/BrowseTree;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "MediaSource.getItems Invalid mediaId"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 126
    :cond_1
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    aget-object v0, p1, v1

    const-string v3, "__PLAYLIST__"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-direct {p0, p2}, Lcom/mb/android/media/BrowseTree;->getPlaylists(Lcom/mb/android/apiinteraction/Response;)V

    return-void

    .line 131
    :cond_2
    aget-object v0, p1, v1

    .line 132
    iget-object v3, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v3, v0}, Lcom/mb/android/media/MediaSource;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v5

    if-nez v5, :cond_3

    .line 134
    iget-object p1, p0, Lcom/mb/android/media/BrowseTree;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "MediaSource.getItems Failed to get ApiClient for serverId: %s"

    invoke-interface {p1, v0, v2}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 139
    :cond_3
    array-length v3, p1

    if-ne v3, v2, :cond_4

    .line 140
    iget-object p1, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {p1, v5, p2}, Lcom/mb/android/media/MediaSource;->getUserViews(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V

    return-void

    .line 144
    :cond_4
    array-length v3, p1

    sub-int/2addr v3, v2

    aget-object v3, p1, v3

    .line 145
    aget-object v7, p1, v2

    .line 147
    array-length p1, p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_a

    const-string p1, "__LATEST__"

    .line 148
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 149
    invoke-direct {p0, v0, p2}, Lcom/mb/android/media/BrowseTree;->getLatest(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void

    :cond_5
    const-string p1, "__RECENT__"

    .line 151
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 152
    invoke-direct {p0, v0, p2}, Lcom/mb/android/media/BrowseTree;->getRecent(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void

    :cond_6
    const-string p1, "__FREQUENT__"

    .line 154
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 155
    invoke-direct {p0, v0, p2}, Lcom/mb/android/media/BrowseTree;->getFrequent(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void

    :cond_7
    const-string p1, "__FAVORITE_ALBUMS__"

    .line 157
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "MusicAlbum"

    .line 158
    invoke-direct {p0, v0, p1, p2}, Lcom/mb/android/media/BrowseTree;->getFavorites(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void

    :cond_8
    const-string p1, "__FAVORITE_ARTISTS__"

    .line 160
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 161
    invoke-direct {p0, v0, p2}, Lcom/mb/android/media/BrowseTree;->getFavoriteArtists(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void

    :cond_9
    const-string p1, "__FAVORITE_SONGS__"

    .line 163
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "Audio"

    .line 164
    invoke-direct {p0, v0, p1, p2}, Lcom/mb/android/media/BrowseTree;->getFavorites(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void

    :cond_a
    const-string p1, "?page="

    .line 170
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 173
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v4, p1, 0x6

    if-le v0, v4, :cond_b

    .line 175
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    iget-object v4, p0, Lcom/mb/android/media/BrowseTree;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v6, "Unable to parse page number for parentId: %s"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v4, v2, v0, v6}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_b
    const/4 v0, 0x0

    .line 181
    :goto_0
    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    move v8, v0

    goto :goto_1

    :cond_c
    move-object v6, v3

    const/4 v8, 0x0

    .line 183
    :goto_1
    iget-object v4, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/mb/android/media/MediaSource;->getItemsForParent(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;ILcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private getLatest(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/MediaSource;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    if-nez p1, :cond_0

    .line 240
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/media/MediaSource;->getLatestMusic(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private getMusicViewId(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->browseTree:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 207
    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 210
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v1

    :cond_2
    if-eqz v2, :cond_3

    .line 215
    invoke-virtual {p2, v2}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 218
    :cond_3
    new-instance v0, Lcom/mb/android/media/BrowseTree$4;

    invoke-direct {v0, p0, p2}, Lcom/mb/android/media/BrowseTree$4;-><init>(Lcom/mb/android/media/BrowseTree;Lcom/mb/android/apiinteraction/Response;)V

    invoke-virtual {p1, v1, v1, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUserViews(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private getPlaylists(Lcom/mb/android/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0}, Lcom/mb/android/media/MediaSource;->getLastUsedClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v1, v0, p1}, Lcom/mb/android/media/MediaSource;->getPlaylists(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private getRecent(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/MediaSource;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    if-nez p1, :cond_0

    .line 249
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/media/MediaSource;->getRecentlyPlayedMusic(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private isRootId(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "__ROOT__"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "__FOLDERS__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "__MUSIC__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "__FAVORITE__"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private updateFavoriteSongs()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-virtual {v0}, Lcom/mb/android/media/MediaSource;->getLastUsedClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/mb/android/media/BrowseTree$3;

    invoke-direct {v1, p0, v0}, Lcom/mb/android/media/BrowseTree$3;-><init>(Lcom/mb/android/media/BrowseTree;Ljava/lang/String;)V

    const-string v2, "Audio"

    invoke-direct {p0, v0, v2, v1}, Lcom/mb/android/media/BrowseTree;->getFavorites(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method


# virtual methods
.method public getChildren(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lcom/mb/android/media/BrowseTree;->isRootId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/mb/android/media/BrowseTree;->buildRoot()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->browseTree:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p2, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/mb/android/media/BrowseTree;->isRootId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 94
    :goto_0
    new-instance v0, Lcom/mb/android/media/BrowseTree$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/mb/android/media/BrowseTree$2;-><init>(Lcom/mb/android/media/BrowseTree;Lcom/mb/android/apiinteraction/IResponse;ZLcom/mb/android/apiinteraction/Response;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/mb/android/media/BrowseTree;->getItems(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getRoot()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->browseTree:Ljava/util/HashMap;

    const-string v1, "__ROOT__"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/BrowseTree;->favoritesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
