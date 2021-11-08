.class public Lis/xyz/mpv/MPVLib$mpvLogLevel;
.super Ljava/lang/Object;
.source "MPVLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lis/xyz/mpv/MPVLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "mpvLogLevel"
.end annotation


# static fields
.field public static final MPV_LOG_LEVEL_DEBUG:I = 0x3c

.field public static final MPV_LOG_LEVEL_ERROR:I = 0x14

.field public static final MPV_LOG_LEVEL_FATAL:I = 0xa

.field public static final MPV_LOG_LEVEL_INFO:I = 0x28

.field public static final MPV_LOG_LEVEL_NONE:I = 0x0

.field public static final MPV_LOG_LEVEL_TRACE:I = 0x46

.field public static final MPV_LOG_LEVEL_V:I = 0x32

.field public static final MPV_LOG_LEVEL_WARN:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
