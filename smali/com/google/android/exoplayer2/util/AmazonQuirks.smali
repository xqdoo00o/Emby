.class public final Lcom/google/android/exoplayer2/util/AmazonQuirks;
.super Ljava/lang/Object;
.source "AmazonQuirks.java"


# static fields
.field private static final AMAZON:Ljava/lang/String; = "Amazon"

.field private static final DEVICEMODEL:Ljava/lang/String;

.field private static final FIRETV_GEN1_DEVICE_MODEL:Ljava/lang/String; = "AFTB"

.field private static final FIRETV_GEN2_DEVICE_MODEL:Ljava/lang/String; = "AFTS"

.field private static final FIRETV_STICK_DEVICE_MODEL:Ljava/lang/String; = "AFTM"

.field private static final FIRETV_STICK_GEN2_DEVICE_MODEL:Ljava/lang/String; = "AFTT"

.field private static final KINDLE_TABLET_DEVICE_MODEL:Ljava/lang/String; = "KF"

.field private static final MANUFACTURER:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AmazonQuirks"

.field private static final isAmazonDevice:Z

.field private static final isFireTVGen1:Z

.field private static final isFireTVGen2:Z

.field private static final isFireTVStick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->DEVICEMODEL:Ljava/lang/String;

    .line 33
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->MANUFACTURER:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isAmazonDevice:Z

    .line 45
    sget-boolean v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isAmazonDevice:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->DEVICEMODEL:Ljava/lang/String;

    const-string v3, "AFTB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isFireTVGen1:Z

    .line 46
    sget-boolean v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isAmazonDevice:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->DEVICEMODEL:Ljava/lang/String;

    const-string v3, "AFTS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isFireTVGen2:Z

    .line 47
    sget-boolean v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isAmazonDevice:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->DEVICEMODEL:Ljava/lang/String;

    const-string v3, "AFTM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sput-boolean v1, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isFireTVStick:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAmazonDevice()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isAmazonDevice:Z

    return v0
.end method

.method public static isDolbyPassthroughQuirkEnabled()Z
    .locals 1

    .line 54
    invoke-static {}, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isFireTVGen1Family()Z

    move-result v0

    return v0
.end method

.method public static isFireTVGen1Family()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isFireTVGen1:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isFireTVStick:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isFireTVGen2()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isFireTVGen2:Z

    return v0
.end method

.method public static useDefaultPassthroughDecoder()Z
    .locals 2

    .line 75
    invoke-static {}, Lcom/google/android/exoplayer2/util/AmazonQuirks;->isFireTVGen1Family()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->TAG:Ljava/lang/String;

    const-string v1, "Using platform Dolby decoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/util/AmazonQuirks;->TAG:Ljava/lang/String;

    const-string v1, "Using default Dolby pass-through decoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
