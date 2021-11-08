.class public final Lcom/mb/android/apiinteraction/android/AlbumArtCache;
.super Ljava/lang/Object;
.source "AlbumArtCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;,
        Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;
    }
.end annotation


# static fields
.field private static final BIG_BITMAP_INDEX:I = 0x0

.field private static final ICON_BITMAP_INDEX:I = 0x1

.field private static final MAX_ALBUM_ART_CACHE_SIZE:I = 0xc00000

.field private static final MAX_ART_HEIGHT:I = 0x1e0

.field private static final MAX_ART_HEIGHT_ICON:I = 0x80

.field private static final MAX_ART_WIDTH:I = 0x320

.field private static final MAX_ART_WIDTH_ICON:I = 0x80

.field private static final sInstance:Lcom/mb/android/apiinteraction/android/AlbumArtCache;


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/mb/android/apiinteraction/android/AlbumArtCache;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/android/AlbumArtCache;-><init>()V

    sput-object v0, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->sInstance:Lcom/mb/android/apiinteraction/android/AlbumArtCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    const/high16 v0, 0xc00000

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 42
    new-instance v1, Lcom/mb/android/apiinteraction/android/AlbumArtCache$1;

    invoke-direct {v1, p0, v0}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$1;-><init>(Lcom/mb/android/apiinteraction/android/AlbumArtCache;I)V

    iput-object v1, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->mCache:Landroid/util/LruCache;

    return-void
.end method

.method public static getInstance()Lcom/mb/android/apiinteraction/android/AlbumArtCache;
    .locals 1

    .line 34
    sget-object v0, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->sInstance:Lcom/mb/android/apiinteraction/android/AlbumArtCache;

    return-object v0
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p2, p1, v1, v0}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;->onFetched(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->mCache:Landroid/util/LruCache;

    const/4 v3, 0x0

    invoke-direct {v0, p2, p1, v2, v3}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;-><init>(Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;Ljava/lang/String;Landroid/util/LruCache;Lcom/mb/android/apiinteraction/android/AlbumArtCache$1;)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getBigImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    aget-object p1, p1, v0

    :goto_0
    return-object p1
.end method
