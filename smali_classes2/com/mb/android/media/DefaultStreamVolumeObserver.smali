.class public abstract Lcom/mb/android/media/DefaultStreamVolumeObserver;
.super Ljava/lang/Object;
.source "DefaultStreamVolumeObserver.java"


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private final contentObserver:Landroid/database/ContentObserver;

.field private final context:Landroid/content/Context;

.field private lastStreamVolume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/mb/android/media/DefaultStreamVolumeObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mb/android/media/DefaultStreamVolumeObserver$1;-><init>(Lcom/mb/android/media/DefaultStreamVolumeObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->contentObserver:Landroid/database/ContentObserver;

    .line 32
    iput-object p1, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->context:Landroid/content/Context;

    const-string v0, "audio"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->audioManager:Landroid/media/AudioManager;

    .line 34
    invoke-direct {p0}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->getStreamVolume()I

    move-result p1

    iput p1, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->lastStreamVolume:I

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/DefaultStreamVolumeObserver;)I
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->getStreamVolume()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/mb/android/media/DefaultStreamVolumeObserver;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->lastStreamVolume:I

    return p0
.end method

.method static synthetic access$102(Lcom/mb/android/media/DefaultStreamVolumeObserver;I)I
    .locals 0

    .line 10
    iput p1, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->lastStreamVolume:I

    return p1
.end method

.method private getStreamVolume()I
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final getMaxVolume()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public final getVolume()I
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->getStreamVolume()I

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->getMaxVolume()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    mul-float v0, v0, v2

    .line 59
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public abstract onVolumeChanged(II)V
.end method

.method public final start()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->contentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 39
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver;->contentObserver:Landroid/database/ContentObserver;

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
