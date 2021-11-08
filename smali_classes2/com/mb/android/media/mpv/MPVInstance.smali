.class public Lcom/mb/android/media/mpv/MPVInstance;
.super Ljava/lang/Object;
.source "MPVInstance.java"


# static fields
.field public static IsInitialized:Z

.field private static currentMediaType:Ljava/lang/String;

.field private static syncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mb/android/media/mpv/MPVInstance;->syncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendFile(Ljava/lang/String;)V
    .locals 4

    .line 119
    sget-object v0, Lcom/mb/android/media/mpv/MPVInstance;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 121
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "loadfile"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    const-string v2, "append"

    aput-object v2, v1, p0

    invoke-static {v1}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    .line 122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static destroy(Lcom/mb/android/media/mpv/MpvEventObserver;)V
    .locals 2

    .line 151
    sget-object v0, Lcom/mb/android/media/mpv/MPVInstance;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    sget-boolean v1, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v1, :cond_0

    .line 154
    invoke-static {p0}, Lis/xyz/mpv/MPVLib;->removeObserver(Lis/xyz/mpv/EventObserver;)V

    .line 155
    invoke-static {p0}, Lis/xyz/mpv/MPVLib;->removeLogObserver(Lis/xyz/mpv/LogObserver;)V

    .line 156
    invoke-static {}, Lis/xyz/mpv/MPVLib;->destroy()V

    const/4 p0, 0x0

    .line 157
    sput-boolean p0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    const/4 p0, 0x0

    .line 158
    sput-object p0, Lcom/mb/android/media/mpv/MPVInstance;->currentMediaType:Ljava/lang/String;

    .line 161
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static enableAudioTrackOutput()Z
    .locals 3

    .line 27
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "samsung"

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public static hasMedia()Z
    .locals 2

    .line 127
    sget-object v0, Lcom/mb/android/media/mpv/MPVInstance;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-boolean v1, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mb/android/media/mpv/MPVInstance;->currentMediaType:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static hasMedia(Ljava/lang/String;)Z
    .locals 2

    .line 135
    sget-object v0, Lcom/mb/android/media/mpv/MPVInstance;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-boolean v1, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mb/android/media/mpv/MPVInstance;->currentMediaType:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static init(Landroid/content/Context;Lcom/mb/android/media/mpv/MpvEventObserver;Z)Z
    .locals 2

    .line 38
    sget-object p2, Lcom/mb/android/media/mpv/MPVInstance;->syncLock:Ljava/lang/Object;

    monitor-enter p2

    .line 40
    :try_start_0
    sget-boolean v0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-nez v0, :cond_0

    .line 41
    invoke-static {p0}, Lis/xyz/mpv/MPVLib;->create(Landroid/content/Context;)V

    const-string v0, "msg-level=all"

    const-string v1, "debug"

    .line 42
    invoke-static {v0, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "config"

    const-string v1, "yes"

    .line 43
    invoke-static {v0, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "config-dir"

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lis/xyz/mpv/MPVLib;->init()V

    const-string p0, "vo"

    const-string v0, "gpu"

    .line 46
    invoke-static {p0, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "gpu-context"

    const-string v0, "android"

    .line 47
    invoke-static {p0, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "hwdec"

    const-string v0, "mediacodec-copy"

    .line 48
    invoke-static {p0, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "hwdec-codecs"

    const-string v0, "h264,hevc,mpeg4,mpeg2video,vp8,vp9"

    .line 49
    invoke-static {p0, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "audio-display"

    const-string v0, "no"

    .line 51
    invoke-static {p0, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ao"

    const-string v0, "audiotrack"

    .line 56
    invoke-static {p0, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "tls-verify"

    const-string v0, "no"

    .line 61
    invoke-static {p0, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "demuxer-max-bytes"

    const/high16 v0, 0x2000000

    .line 64
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "demuxer-max-back-bytes"

    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lis/xyz/mpv/MPVLib;->setOptionString(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->addObserver(Lis/xyz/mpv/EventObserver;)V

    .line 68
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->addLogObserver(Lis/xyz/mpv/LogObserver;)V

    .line 70
    invoke-static {}, Lcom/mb/android/media/mpv/MPVInstance;->observerProperties()V

    const/4 p0, 0x1

    .line 93
    sput-boolean p0, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    .line 94
    monitor-exit p2

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 97
    monitor-exit p2

    return p0

    :catchall_0
    move-exception p0

    .line 98
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isStopped()Z
    .locals 2

    .line 143
    sget-object v0, Lcom/mb/android/media/mpv/MPVInstance;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-boolean v1, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    if-eqz v1, :cond_1

    const-string v1, "idle-active"

    invoke-static {v1}, Lis/xyz/mpv/MPVLib;->getPropertyBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loadFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 104
    sget-object v0, Lcom/mb/android/media/mpv/MPVInstance;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    sput-object p1, Lcom/mb/android/media/mpv/MPVInstance;->currentMediaType:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    .line 109
    new-array p2, p2, [Ljava/lang/String;

    const-string v3, "loadfile"

    aput-object v3, p2, v1

    aput-object p0, p2, p1

    const-string p0, "append-play"

    aput-object p0, p2, v2

    goto :goto_0

    .line 111
    :cond_0
    new-array p2, v2, [Ljava/lang/String;

    const-string v2, "loadfile"

    aput-object v2, p2, v1

    aput-object p0, p2, p1

    .line 113
    :goto_0
    invoke-static {p2}, Lis/xyz/mpv/MPVLib;->command([Ljava/lang/String;)V

    .line 114
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static observerProperties()V
    .locals 3

    const/4 v0, 0x4

    const-string v1, "time-pos"

    .line 166
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->observeProperty(Ljava/lang/String;I)V

    const-string v1, "duration"

    .line 167
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->observeProperty(Ljava/lang/String;I)V

    const-string v1, "playlist-pos"

    .line 168
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->observeProperty(Ljava/lang/String;I)V

    const/4 v0, 0x3

    const-string v1, "pause"

    .line 169
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->observeProperty(Ljava/lang/String;I)V

    const-string v1, "track-list"

    const/4 v2, 0x0

    .line 170
    invoke-static {v1, v2}, Lis/xyz/mpv/MPVLib;->observeProperty(Ljava/lang/String;I)V

    const-string v1, "eof-reached"

    .line 171
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->observeProperty(Ljava/lang/String;I)V

    return-void
.end method
