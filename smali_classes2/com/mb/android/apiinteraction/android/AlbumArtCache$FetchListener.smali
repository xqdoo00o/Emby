.class public abstract Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;
.super Ljava/lang/Object;
.source "AlbumArtCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/apiinteraction/android/AlbumArtCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FetchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public abstract onFetched(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method
