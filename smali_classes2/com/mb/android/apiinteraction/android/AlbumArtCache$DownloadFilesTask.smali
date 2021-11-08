.class Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;
.super Landroid/os/AsyncTask;
.source "AlbumArtCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/apiinteraction/android/AlbumArtCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mArtUrl:Ljava/lang/String;

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

.field private final mListener:Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;


# direct methods
.method private constructor <init>(Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;Ljava/lang/String;Landroid/util/LruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;",
            "Ljava/lang/String;",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->mListener:Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;

    .line 64
    iput-object p2, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->mArtUrl:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->mCache:Landroid/util/LruCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;Ljava/lang/String;Landroid/util/LruCache;Lcom/mb/android/apiinteraction/android/AlbumArtCache$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;-><init>(Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;Ljava/lang/String;Landroid/util/LruCache;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->doInBackground([Ljava/lang/Void;)[Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/Void;)[Landroid/graphics/Bitmap;
    .locals 4

    const/4 p1, 0x0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->mArtUrl:Ljava/lang/String;

    const/16 v1, 0x320

    const/16 v2, 0x1e0

    invoke-static {v0, v1, v2}, Lcom/mb/android/apiinteraction/android/BitmapHelper;->fetchAndRescaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/16 v1, 0x80

    .line 78
    invoke-static {v0, v1, v1}, Lcom/mb/android/apiinteraction/android/BitmapHelper;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x2

    .line 80
    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 81
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->mCache:Landroid/util/LruCache;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->mArtUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->onPostExecute([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute([Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->mListener:Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->mArtUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "got null bitmaps"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->mListener:Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$DownloadFilesTask;->mArtUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-virtual {v0, v1, v2, p1}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;->onFetched(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
