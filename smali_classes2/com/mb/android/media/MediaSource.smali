.class public Lcom/mb/android/media/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/MediaSource$SearchResultCallback;
    }
.end annotation


# static fields
.field public static final ARTIST_ROOT:Ljava/lang/String; = "__ARTISTS__"

.field public static final COLLECTION_TYPES_SUBSET_CAR:[Ljava/lang/String;

.field public static final CONTENT_STYLE_BROWSABLE_HINT:Ljava/lang/String; = "android.media.browse.CONTENT_STYLE_BROWSABLE_HINT"

.field public static final CONTENT_STYLE_GRID_ITEM_HINT_VALUE:I = 0x2

.field public static final CONTENT_STYLE_LIST_ITEM_HINT_VALUE:I = 0x1

.field public static final CONTENT_STYLE_PLAYABLE_HINT:Ljava/lang/String; = "android.media.browse.CONTENT_STYLE_PLAYABLE_HINT"

.field public static final CONTENT_STYLE_SUPPORTED:Ljava/lang/String; = "android.media.browse.CONTENT_STYLE_SUPPORTED"

.field static final EMPTY_PATH:Ljava/lang/String; = "@empty@"

.field public static final EXTRA_CONTENT_STYLE_GROUP_TITLE_HINT:Ljava/lang/String; = "android.media.browse.CONTENT_STYLE_GROUP_TITLE_HINT"

.field public static final EXTRA_MEDIA_SEARCH_SUPPORTED:Ljava/lang/String; = "android.media.browse.SEARCH_SUPPORTED"

.field public static final FAVORITE_ALBUMS:Ljava/lang/String; = "__FAVORITE_ALBUMS__"

.field public static final FAVORITE_ARTISTS:Ljava/lang/String; = "__FAVORITE_ARTISTS__"

.field public static final FAVORITE_ROOT:Ljava/lang/String; = "__FAVORITE__"

.field public static final FAVORITE_SONGS:Ljava/lang/String; = "__FAVORITE_SONGS__"

.field public static final FREQUENT_ROOT:Ljava/lang/String; = "__FREQUENT__"

.field public static final LATEST_ROOT:Ljava/lang/String; = "__LATEST__"

.field public static final PAGE_SIZE:I = 0x1f4

.field public static final PLAYLIST_ROOT:Ljava/lang/String; = "__PLAYLIST__"

.field public static final RECENT_ROOT:Ljava/lang/String; = "__RECENT__"

.field static final RESOURCE_ROOT_URI:Ljava/lang/String; = "android.resource://com.mb.android/drawable/"

.field public static final SHUFFLE:Ljava/lang/String; = "__SHUFFLE__"

.field public static final TABS_OPT_IN_HINT:Ljava/lang/String; = "android.media.browse.AUTO_TABS_OPT_IN_HINT"

.field static final pageQuery:Ljava/lang/String; = "?page="


# instance fields
.field private final allowedCollectionTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

.field private final context:Landroid/content/Context;

.field private logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "music"

    const-string v1, "audiobooks"

    const-string v2, "playlists"

    .line 86
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mb/android/media/MediaSource;->COLLECTION_TYPES_SUBSET_CAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/mb/android/MainApp;

    invoke-virtual {v0}, Lcom/mb/android/MainApp;->getConnectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/MediaSource;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    .line 101
    iput-object p1, p0, Lcom/mb/android/media/MediaSource;->context:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/mb/android/media/MediaSource;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lcom/mb/android/media/MediaSource;->COLLECTION_TYPES_SUBSET_CAR:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/mb/android/media/MediaSource;->allowedCollectionTypes:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$400(Lcom/mb/android/media/MediaSource;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mb/android/media/MediaSource;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mb/android/media/MediaSource;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mb/android/media/MediaSource;->allowedCollectionTypes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/mb/android/media/MediaSource;->convertToMetadata(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/mb/android/media/MediaSource;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mb/android/media/MediaSource;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/mb/android/media/MediaSource;->convertToMediaItem(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static convertToMediaItem(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 4

    .line 571
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getIsFolderItem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getIsArtist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 574
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicArtist"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__ARTISTS__/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    :cond_1
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playlists"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playlist"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 579
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__PLAYLIST__/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-static {p0, v1, p1}, Lcom/mb/android/media/MediaSource;->convertToMetadata(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    .line 583
    new-instance p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object p1
.end method

.method private static convertToMetadata(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 587
    invoke-static {p0, p2}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 588
    invoke-static {p2, p1, v0, p0}, Lcom/mb/android/media/QueueManager;->buildMetadata(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMetadataList(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/dto/BaseItemDto;

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-virtual {v1}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MusicArtist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__ARTISTS__/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    :cond_0
    invoke-virtual {v1}, Lcom/mb/android/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "playlists"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "playlist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 616
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__PLAYLIST__/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 619
    invoke-static {p0, v2, v1}, Lcom/mb/android/media/MediaSource;->convertToMetadata(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/model/dto/BaseItemDto;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method public static descriptionFromMetadata(Landroid/support/v4/media/MediaMetadataCompat;Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 2

    if-nez p1, :cond_0

    .line 593
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    return-object p0

    .line 595
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    .line 596
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 597
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 598
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 599
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 600
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 601
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 602
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 603
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 604
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 605
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    return-object p0
.end method

.method public static getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 635
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 637
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getHasPrimaryImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    invoke-static {p0, v0, p1, v1}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 641
    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getHasLogo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Logo:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Logo:Lcom/mb/android/model/entities/ImageType;

    invoke-static {p0, v0, p1, v1}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 645
    :cond_1
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getHasArtImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Art:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Art:Lcom/mb/android/model/entities/ImageType;

    invoke-static {p0, v0, p1, v1}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 649
    :cond_2
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getHasBanner()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Banner:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Banner:Lcom/mb/android/model/entities/ImageType;

    invoke-static {p0, v0, p1, v1}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 653
    :cond_3
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getHasThumb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 654
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Thumb:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Thumb:Lcom/mb/android/model/entities/ImageType;

    invoke-static {p0, v0, p1, v1}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 658
    :cond_4
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesPrimaryImageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 659
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesPrimaryImageTag()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    invoke-static {p0, v0, p1, v1}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 662
    :cond_5
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumPrimaryImageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 663
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumPrimaryImageTag()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    invoke-static {p0, v0, p1, v1}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x190

    .line 679
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 680
    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Backdrop:Lcom/mb/android/model/entities/ImageType;

    if-ne p3, v1, :cond_0

    const/4 v0, 0x0

    .line 684
    :cond_0
    new-instance v1, Lcom/mb/android/model/dto/ImageOptions;

    invoke-direct {v1}, Lcom/mb/android/model/dto/ImageOptions;-><init>()V

    .line 685
    invoke-virtual {v1, p2}, Lcom/mb/android/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v1, p3}, Lcom/mb/android/model/dto/ImageOptions;->setImageType(Lcom/mb/android/model/entities/ImageType;)V

    .line 687
    invoke-virtual {v1, v0}, Lcom/mb/android/model/dto/ImageOptions;->setMaxWidth(Ljava/lang/Integer;)V

    .line 689
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 690
    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object p3

    const-string v0, "api_key"

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p0, p1, v1, p2}, Lcom/mb/android/apiinteraction/ApiClient;->getScaledImageUrl(Ljava/lang/String;Lcom/mb/android/model/dto/ImageOptions;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getItemsFromSearchWithType(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;",
            ">;)V"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "searchTerm"

    .line 290
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "IncludeItemTypes"

    .line 291
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "true"

    const-string p3, "IncludeMedia"

    .line 292
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "false"

    const-string v1, "IncludeArtists"

    .line 293
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Fields"

    const-string v2, "ProductionYear,Overview"

    .line 294
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Recursive"

    .line 295
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "EnableTotalRecordCount"

    .line 296
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Limit"

    const-string p3, "16"

    .line 297
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p4}, Lcom/mb/android/apiinteraction/ApiClient;->getItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private getMusic(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 540
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "Limit"

    .line 542
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "24"

    .line 543
    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ParentId"

    .line 546
    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "IncludeItemTypes"

    .line 548
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Audio"

    .line 549
    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_3
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/mb/android/media/MediaSource$9;

    invoke-direct {v0, p0, p1, p4}, Lcom/mb/android/media/MediaSource$9;-><init>(Lcom/mb/android/media/MediaSource;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V

    invoke-virtual {p1, p2, p3, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public static getThumbUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 671
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getHasThumb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Thumb:Lcom/mb/android/model/entities/ImageType;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Thumb:Lcom/mb/android/model/entities/ImageType;

    invoke-static {p0, v0, p1, v1}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$getServerList$0(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/ApiClient;)I
    .locals 2

    .line 110
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getDateLastAccessed()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/ApiClient;->getDateLastAccessed()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getAlbumFromSearch(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
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

    const-string v0, "MusicAlbum"

    .line 273
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mb/android/media/MediaSource;->getItemsFromSearchWithType(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getAllSearchResults(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/media/MediaSource$SearchResultCallback;)Z
    .locals 1

    const/4 p6, 0x1

    if-nez p1, :cond_0

    .line 150
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ApiClient cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8, p1}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->onError(Ljava/lang/Exception;)V

    return p6

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "User is not signed in"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8, p1}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->onError(Ljava/lang/Exception;)V

    return p6

    .line 158
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p3

    .line 161
    :goto_0
    new-instance p3, Lcom/mb/android/media/MediaSource$1;

    invoke-direct {p3, p0, p8}, Lcom/mb/android/media/MediaSource$1;-><init>(Lcom/mb/android/media/MediaSource;Lcom/mb/android/media/MediaSource$SearchResultCallback;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/mb/android/media/MediaSource;->getAudioItemsFromSearch(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    .line 172
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    move-object p4, p2

    .line 175
    :cond_3
    new-instance p3, Lcom/mb/android/media/MediaSource$2;

    invoke-direct {p3, p0, p8}, Lcom/mb/android/media/MediaSource$2;-><init>(Lcom/mb/android/media/MediaSource;Lcom/mb/android/media/MediaSource$SearchResultCallback;)V

    invoke-virtual {p0, p1, p4, p3}, Lcom/mb/android/media/MediaSource;->getArtistFromSearch(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    .line 186
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    move-object p5, p2

    .line 189
    :cond_4
    new-instance p3, Lcom/mb/android/media/MediaSource$3;

    invoke-direct {p3, p0, p8}, Lcom/mb/android/media/MediaSource$3;-><init>(Lcom/mb/android/media/MediaSource;Lcom/mb/android/media/MediaSource$SearchResultCallback;)V

    invoke-virtual {p0, p1, p5, p3}, Lcom/mb/android/media/MediaSource;->getAlbumFromSearch(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    .line 200
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    move-object p2, p7

    .line 203
    :goto_1
    new-instance p3, Lcom/mb/android/media/MediaSource$4;

    invoke-direct {p3, p0, p8}, Lcom/mb/android/media/MediaSource$4;-><init>(Lcom/mb/android/media/MediaSource;Lcom/mb/android/media/MediaSource$SearchResultCallback;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/mb/android/media/MediaSource;->getPlaylistFromSearch(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/mb/android/media/MediaSource;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    return-object p1
.end method

.method public getArtistFromSearch(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
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

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "searchTerm"

    .line 263
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "false"

    const-string v1, "IncludeMedia"

    .line 264
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "true"

    const-string v2, "IncludeArtists"

    .line 265
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Recursive"

    .line 266
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EnableTotalRecordCount"

    .line 267
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Limit"

    const-string v1, "1"

    .line 268
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p3}, Lcom/mb/android/apiinteraction/ApiClient;->getArtistItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getAudioItemsFromSearch(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
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

    const-string v0, "Audio"

    .line 254
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mb/android/media/MediaSource;->getItemsFromSearchWithType(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method getFavoriteArtists(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SortBy"

    const-string v2, "SortName"

    .line 506
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SortOrder"

    const-string v2, "Ascending"

    .line 507
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Filters"

    const-string v2, "IsFavorite"

    .line 508
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Recursive"

    const-string v2, "true"

    .line 509
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mb/android/media/MediaSource$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/mb/android/media/MediaSource$8;-><init>(Lcom/mb/android/media/MediaSource;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/mb/android/apiinteraction/ApiClient;->getArtistItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method getFavoriteMusic(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SortBy"

    const-string v2, "Random"

    .line 497
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Filters"

    const-string v2, "IsFavorite"

    .line 498
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Recursive"

    const-string v2, "true"

    .line 499
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IncludeItemTypes"

    .line 500
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 501
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mb/android/media/MediaSource;->getMusic(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method getFrequentlyPlayedMusic(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SortBy"

    const-string v2, "PlayCount"

    .line 488
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SortOrder"

    const-string v2, "Descending"

    .line 489
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Filters"

    const-string v2, "IsPlayed"

    .line 490
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Recursive"

    const-string v2, "true"

    .line 491
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 492
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/mb/android/media/MediaSource;->getMusic(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getImageUrl(Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/mb/android/media/MediaSource;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    invoke-static {v0, p1}, Lcom/mb/android/media/MediaSource;->getImageUrl(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public getItemsForParent(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;ILcom/mb/android/apiinteraction/Response;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__ARTISTS__"

    .line 347
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AlbumArtistIds"

    .line 348
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IncludeItemTypes"

    const-string v2, "MusicAlbum"

    .line 349
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Recursive"

    const-string v2, "true"

    .line 350
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "ParentId"

    .line 353
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "SortBy"

    const-string v2, "ParentIndexNumber,IndexNumber,SortName"

    .line 356
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ExcludeItemTypes"

    const-string v2, "Movie,Series,Season,Episode,Trailer,Video,Game,Photo,PhotoAlbum,LiveTvProgram,LiveTvChannel,Channel"

    .line 357
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/mb/android/media/MediaSource$6;

    move-object v2, v9

    move-object v3, p0

    move v4, p4

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/mb/android/media/MediaSource$6;-><init>(Lcom/mb/android/media/MediaSource;ILcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    invoke-virtual {p1, v1, v0, v9}, Lcom/mb/android/apiinteraction/ApiClient;->getItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getLastUsedClient()Lcom/mb/android/apiinteraction/ApiClient;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/mb/android/media/MediaSource;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getLastUsedApiClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/ApiClient;->hasServerCredentials()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getLatestMusic(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Limit"

    const-string v2, "25"

    .line 452
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IncludeItemTypes"

    const-string v2, "Audio,MusicAlbum"

    .line 453
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v1, Lcom/mb/android/media/MediaSource$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/mb/android/media/MediaSource$7;-><init>(Lcom/mb/android/media/MediaSource;Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/apiinteraction/ApiClient;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->getLatestItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getPlaylistFromSearch(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
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

    const-string v0, "Playlist"

    .line 258
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mb/android/media/MediaSource;->getItemsFromSearchWithType(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method getPlaylists(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SortBy"

    const-string v2, "SortName"

    .line 530
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SortOrder"

    const-string v2, "Ascending"

    .line 531
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Recursive"

    const-string v2, "true"

    .line 532
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IncludeItemTypes"

    const-string v2, "Playlist"

    .line 533
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Limit"

    const-string v2, "50"

    .line 534
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 535
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/mb/android/media/MediaSource;->getMusic(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getRandomItemsWithType(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
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

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "IncludeItemTypes"

    .line 278
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "true"

    const-string v1, "IncludeMedia"

    .line 279
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "false"

    const-string v2, "IncludeArtists"

    .line 280
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Recursive"

    .line 281
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "EnableTotalRecordCount"

    .line 282
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Limit"

    const-string v1, "50"

    .line 283
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "SortBy"

    const-string v1, "Random"

    .line 284
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p3}, Lcom/mb/android/apiinteraction/ApiClient;->getItems(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method getRecentlyPlayedMusic(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SortBy"

    const-string v2, "DatePlayed"

    .line 479
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SortOrder"

    const-string v2, "Descending"

    .line 480
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Filters"

    const-string v2, "IsPlayed"

    .line 481
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Recursive"

    const-string v2, "true"

    .line 482
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 483
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/mb/android/media/MediaSource;->getMusic(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public getServerList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mb/android/media/MediaSource;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {v1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClients()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    sget-object v1, Lcom/mb/android/media/-$$Lambda$MediaSource$YPZ8uwZxVzT5cmvoDFNng2v3hsY;->INSTANCE:Lcom/mb/android/media/-$$Lambda$MediaSource$YPZ8uwZxVzT5cmvoDFNng2v3hsY;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/apiinteraction/ApiClient;

    .line 113
    invoke-virtual {v2}, Lcom/mb/android/apiinteraction/ApiClient;->hasServerCredentials()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/mb/android/apiinteraction/ApiClient;->getServerAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 114
    invoke-virtual {v2}, Lcom/mb/android/apiinteraction/ApiClient;->tryBackgroundReconnect()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUserViews(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/ApiClient;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/mb/android/media/MediaSource$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/mb/android/media/MediaSource$5;-><init>(Lcom/mb/android/media/MediaSource;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/Response;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, v0}, Lcom/mb/android/apiinteraction/ApiClient;->getUserViews(Ljava/lang/String;Ljava/util/HashMap;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public searchForItems(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mb/android/apiinteraction/Response<",
            "Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/mb/android/media/MediaSource;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getLastUsedApiClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Audio,Video,Movie,Series,BoxSet,MusicAlbum,MusicArtist"

    .line 144
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/mb/android/media/MediaSource;->getItemsFromSearchWithType(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void

    .line 139
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Current user is not signed in."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method
