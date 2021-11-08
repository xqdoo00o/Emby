.class public abstract Lcom/mb/android/media/MediaSource$SearchResultCallback;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SearchResultCallback"
.end annotation


# instance fields
.field private final albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field private final artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field nRes:I

.field private final nTot:I

.field private final playlists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field private final songs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 218
    iput v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->nTot:I

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->songs:Ljava/util/List;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->artists:Ljava/util/List;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->albums:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->playlists:Ljava/util/List;

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->nRes:I

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/MediaSource$SearchResultCallback;Ljava/util/List;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->onSongsUpdated(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mb/android/media/MediaSource$SearchResultCallback;Ljava/util/List;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->onArtistUpdated(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mb/android/media/MediaSource$SearchResultCallback;Ljava/util/List;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->onAlbumsUpdated(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mb/android/media/MediaSource$SearchResultCallback;Ljava/util/List;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->onPlaylistsUpdated(Ljava/util/List;)V

    return-void
.end method

.method private onAlbumsUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->albums:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    iget p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->nRes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->nRes:I

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 240
    iget-object p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->songs:Ljava/util/List;

    iget-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->artists:Ljava/util/List;

    iget-object v1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->albums:Ljava/util/List;

    iget-object v2, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->playlists:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->onAllUpdated(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private onArtistUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->artists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    iget p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->nRes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->nRes:I

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 234
    iget-object p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->songs:Ljava/util/List;

    iget-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->artists:Ljava/util/List;

    iget-object v1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->albums:Ljava/util/List;

    iget-object v2, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->playlists:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->onAllUpdated(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private onPlaylistsUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->playlists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->nRes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->nRes:I

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 246
    iget-object p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->songs:Ljava/util/List;

    iget-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->artists:Ljava/util/List;

    iget-object v1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->albums:Ljava/util/List;

    iget-object v2, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->playlists:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->onAllUpdated(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private onSongsUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->songs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    iget p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->nRes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->nRes:I

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 228
    iget-object p1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->songs:Ljava/util/List;

    iget-object v0, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->artists:Ljava/util/List;

    iget-object v1, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->albums:Ljava/util/List;

    iget-object v2, p0, Lcom/mb/android/media/MediaSource$SearchResultCallback;->playlists:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mb/android/media/MediaSource$SearchResultCallback;->onAllUpdated(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method abstract onAllUpdated(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract onError(Ljava/lang/Exception;)V
.end method
