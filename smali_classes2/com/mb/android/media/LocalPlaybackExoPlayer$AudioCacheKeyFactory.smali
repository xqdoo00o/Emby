.class Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;
.super Ljava/lang/Object;
.source "LocalPlaybackExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/LocalPlaybackExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioCacheKeyFactory"
.end annotation


# instance fields
.field private final audioCache:Ljava/io/File;

.field final synthetic this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;


# direct methods
.method private constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V
    .locals 2

    .line 1957
    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1958
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;->this$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    invoke-static {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->access$100(Lcom/mb/android/media/LocalPlaybackExoPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "audio"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;->audioCache:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Lcom/mb/android/media/LocalPlaybackExoPlayer$1;)V
    .locals 0

    .line 1957
    invoke-direct {p0, p1}, Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;-><init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;)V

    return-void
.end method


# virtual methods
.method public buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .locals 2

    .line 1961
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1962
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1963
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1965
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/mb/android/media/LocalPlaybackExoPlayer$AudioCacheKeyFactory;->audioCache:Ljava/io/File;

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
