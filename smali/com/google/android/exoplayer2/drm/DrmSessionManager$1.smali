.class final Lcom/google/android/exoplayer2/drm/DrmSessionManager$1;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35
    iget-object p1, p3, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;

    new-instance p2, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    new-instance p3, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(I)V

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;-><init>(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    return-object p1
.end method

.method public getExoMediaCryptoType(Lcom/google/android/exoplayer2/Format;)Ljava/lang/Class;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/google/android/exoplayer2/drm/UnsupportedMediaCrypto;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_0

    const-class p1, Lcom/google/android/exoplayer2/drm/UnsupportedMediaCrypto;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public synthetic prepare()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->$default$prepare(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    return-void
.end method

.method public synthetic release()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->$default$release(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    return-void
.end method
