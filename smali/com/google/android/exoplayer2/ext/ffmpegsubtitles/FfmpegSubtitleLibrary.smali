.class public Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;
.super Ljava/lang/Object;
.source "FfmpegSubtitleLibrary.java"


# static fields
.field private static final LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

.field private static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/util/LibraryLoader;

    const-string v1, "ffmpeg_sub_jni"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/LibraryLoader;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ffmpegAcceptsPackets(JJ)Z
.end method

.method public static native ffmpegAddDefaultStyles(JIIIILjava/lang/String;)V
.end method

.method public static native ffmpegClearSurface(J)V
.end method

.method public static native ffmpegDecodeFile(JLjava/lang/String;JJ)V
.end method

.method public static native ffmpegDecodeStream(JLjava/nio/ByteBuffer;IJ)V
.end method

.method private static native ffmpegGetVersion()Ljava/lang/String;
.end method

.method public static native ffmpegInitialize(Ljava/lang/String;[BII)J
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public static native ffmpegOutputReset(J)V
.end method

.method public static native ffmpegRelease(J)V
.end method

.method public static native ffmpegRenderFrame(JJ)I
.end method

.method public static native ffmpegReset(J)V
.end method

.method public static native ffmpegSetSurface(JLandroid/view/Surface;)I
.end method

.method static getCodecName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "application/x-subrip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "application/vobsub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "application/smil"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "application/pgs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "subrip"

    return-object p0

    :cond_2
    const-string p0, "sami"

    return-object p0

    :cond_3
    const-string p0, "pgssub"

    return-object p0

    :cond_4
    const-string p0, "dvdsub"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4a6813e3 -> :sswitch_3
        -0x298f5a4 -> :sswitch_2
        0x45059676 -> :sswitch_1
        0x63771bad -> :sswitch_0
    .end sparse-switch
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 39
    invoke-static {}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->version:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->ffmpegGetVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->version:Ljava/lang/String;

    .line 45
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->version:Ljava/lang/String;

    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static supportsFormat(Ljava/lang/String;)Z
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/ffmpegsubtitles/FfmpegSubtitleLibrary;->getCodecName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
