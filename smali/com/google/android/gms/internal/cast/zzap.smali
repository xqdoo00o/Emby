.class public final Lcom/google/android/gms/internal/cast/zzap;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final zzln:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field private final zzly:Lcom/google/android/gms/internal/cast/zzx;

.field private final zzlz:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private final zzrj:Landroid/widget/ImageView;

.field private final zzrk:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;I)V
    .locals 0
    .param p3    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzap;->zzrj:Landroid/widget/ImageView;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzap;->zzlz:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzap;->zzrk:Landroid/graphics/Bitmap;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/cast/framework/CastContext;->zzb(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzap;->zzln:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    goto :goto_0

    .line 11
    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzap;->zzln:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 12
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzx;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzap;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cast/zzap;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzrj:Landroid/widget/ImageView;

    return-object p0
.end method

.method private final zzcp()V
    .locals 4

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPreloadedItem()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzap;->zzln:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzap;->zzlz:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 39
    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/MediaUtils;->getImageUri(Lcom/google/android/gms/cast/MediaInfo;I)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_4

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzrj:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzap;->zzrk:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzx;->zza(Landroid/net/Uri;)Z

    return-void

    .line 27
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzrj:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzap;->zzrk:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzap;->zzcp()V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzap;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzaq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzaq;-><init>(Lcom/google/android/gms/internal/cast/zzap;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzx;->zza(Lcom/google/android/gms/internal/cast/zzy;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzap;->zzrj:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzrk:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzap;->zzcp()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzly:Lcom/google/android/gms/internal/cast/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzx;->clear()V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzrj:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzap;->zzrk:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 21
    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
