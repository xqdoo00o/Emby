.class Lcom/mb/android/apiinteraction/android/AlbumArtCache$1;
.super Landroid/util/LruCache;
.source "AlbumArtCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/apiinteraction/android/AlbumArtCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/apiinteraction/android/AlbumArtCache;


# direct methods
.method constructor <init>(Lcom/mb/android/apiinteraction/android/AlbumArtCache;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mb/android/apiinteraction/android/AlbumArtCache$1;->this$0:Lcom/mb/android/apiinteraction/android/AlbumArtCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/String;

    check-cast p2, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$1;->sizeOf(Ljava/lang/String;[Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;[Landroid/graphics/Bitmap;)I
    .locals 1

    const/4 p1, 0x0

    .line 45
    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    const/4 v0, 0x1

    aget-object p2, p2, v0

    .line 46
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method
