.class public Lcom/mb/android/media/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field private static final sMCL:Landroid/media/MediaCodecList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    sput-object v0, Lcom/mb/android/media/MediaUtils;->sMCL:Landroid/media/MediaCodecList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canDecode(Landroid/media/MediaFormat;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 20
    sget-object v0, Lcom/mb/android/media/MediaUtils;->sMCL:Landroid/media/MediaCodecList;

    invoke-virtual {v0, p0}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static check(ZLjava/lang/String;)Z
    .locals 0

    return p0
.end method

.method public static varargs checkDecoder([Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-static {v0, p0}, Lcom/mb/android/media/MediaUtils;->hasCodecForMimes(Z[Ljava/lang/String;)Z

    move-result p0

    const-string v0, "no decoder found"

    invoke-static {p0, v0}, Lcom/mb/android/media/MediaUtils;->check(ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getPlaybackStateString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "STATE_SKIPPING_TO_QUEUE_ITEM"

    goto :goto_0

    :pswitch_1
    const-string p0, "STATE_SKIPPING_TO_NEXT"

    goto :goto_0

    :pswitch_2
    const-string p0, "STATE_SKIPPING_TO_PREVIOUS"

    goto :goto_0

    :pswitch_3
    const-string p0, "STATE_CONNECTING"

    goto :goto_0

    :pswitch_4
    const-string p0, "STATE_ERROR"

    goto :goto_0

    :pswitch_5
    const-string p0, "STATE_BUFFERING"

    goto :goto_0

    :pswitch_6
    const-string p0, "STATE_REWINDING"

    goto :goto_0

    :pswitch_7
    const-string p0, "STATE_FAST_FORWARDING"

    goto :goto_0

    :pswitch_8
    const-string p0, "STATE_PLAYING"

    goto :goto_0

    :pswitch_9
    const-string p0, "STATE_PAUSED"

    goto :goto_0

    :pswitch_a
    const-string p0, "STATE_STOPPED"

    goto :goto_0

    :pswitch_b
    const-string p0, "STATE_NONE"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static hasCodecForMime(ZLjava/lang/String;)Z
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 43
    sget-object v0, Lcom/mb/android/media/MediaUtils;->sMCL:Landroid/media/MediaCodecList;

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 44
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eq p0, v5, :cond_0

    goto :goto_2

    .line 47
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 48
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private static hasCodecForMimes(Z[Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 33
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 34
    invoke-static {p0, v3}, Lcom/mb/android/media/MediaUtils;->hasCodecForMime(ZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
