.class public Lcom/mb/android/media/MediaCodecCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecCapabilities.java"


# static fields
.field private static final IFRAME_INTERVAL:I = 0xa

.field private static final PLAY_TIME_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "MediaCodecCapabilitiesTest"

.field private static final TIMEOUT_US:I = 0xf4240


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkDecoder(Ljava/lang/String;II)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/mb/android/media/MediaCodecCapabilities;->hasDecoder(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private hasDecoder(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mb/android/media/MediaCodecCapabilities;->supports(Ljava/lang/String;ZII)Z

    move-result p1

    return p1
.end method

.method private supports(Ljava/lang/String;ZII)Z
    .locals 11

    .line 85
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 86
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 87
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eq p2, v5, :cond_0

    goto :goto_3

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    .line 92
    iget-object v4, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 93
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v8, p3, :cond_1

    goto :goto_2

    :cond_1
    const-string v8, "video/3gpp"

    .line 98
    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 99
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-eq v8, p4, :cond_2

    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/16 v10, 0x10

    if-ne v8, v10, :cond_2

    if-le p4, v9, :cond_2

    goto :goto_2

    .line 103
    :cond_2
    iget v7, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v7, p4, :cond_3

    return v9

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method


# virtual methods
.method public getMaxH264Level()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v0, 0x8

    const-string v1, "video/avc"

    const v2, 0x8000

    .line 51
    invoke-direct {p0, v1, v0, v2}, Lcom/mb/android/media/MediaCodecCapabilities;->hasDecoder(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "51"

    return-object v0

    :cond_0
    const/16 v2, 0x4000

    .line 55
    invoke-direct {p0, v1, v0, v2}, Lcom/mb/android/media/MediaCodecCapabilities;->hasDecoder(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "50"

    return-object v0

    :cond_1
    const-string v0, "41"

    return-object v0
.end method

.method public supportsHevc()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "video/hevc"

    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mb/android/media/MediaUtils;->checkDecoder([Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsHevcMain10()Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    const/16 v1, 0x40

    const-string v2, "video/hevc"

    .line 42
    invoke-direct {p0, v2, v0, v1}, Lcom/mb/android/media/MediaCodecCapabilities;->hasDecoder(Ljava/lang/String;II)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsMpeg2()Z
    .locals 2

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "video/mpeg2"

    .line 66
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mb/android/media/MediaUtils;->checkDecoder([Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
