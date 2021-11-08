.class public Lcom/mb/android/media/MediaPlayerBridge;
.super Ljava/lang/Object;
.source "MediaPlayerBridge.java"


# instance fields
.field private activity:Lcom/mb/android/MainActivity;

.field private logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method public constructor <init>(Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 22
    iput-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/MediaPlayerBridge;)Lcom/mb/android/MainActivity;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/media/MediaPlayerBridge;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method private incrementSubtitleOffset(Ljava/lang/String;J)V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.incrementSubtitleOffset"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 280
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "incrementSubtitleOffset"

    .line 282
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "offset"

    .line 283
    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "com.mb.android.EXTRA_PLAYER_ID"

    .line 284
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 289
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "Error in incrementSubtitleOffset"

    invoke-interface {p2, v0, p1, p3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private nextTrack(Ljava/lang/String;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.nextTrack"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 142
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "com.emby.next"

    .line 144
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.mb.android.EXTRA_PLAYER_ID"

    .line 145
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in nextTrack"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private notifyCurrentVolume(Z)V
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/mb/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 72
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "notifyCurrentVolume: %s"

    invoke-interface {v1, v4, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "window.VlcVideoPlayer.notifyVolumeChange(%s, false);"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private playAtIndex(Ljava/lang/String;I)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.playAtIndex"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 178
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "playAtIndex"

    .line 180
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "index"

    .line 181
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.mb.android.EXTRA_PLAYER_ID"

    .line 182
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Error in playAtIndex"

    invoke-interface {p2, v1, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private playPauseMedia(Ljava/lang/String;)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.playPauseMedia"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 87
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "com.emby.playpause"

    .line 89
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.mb.android.EXTRA_PLAYER_ID"

    .line 90
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in playPauseMedia"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static playbackStateRepeatModeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "RepeatNone"

    return-object p0

    :cond_0
    const-string p0, "RepeatAll"

    return-object p0

    :cond_1
    const-string p0, "RepeatOne"

    return-object p0
.end method

.method private prevTrack(Ljava/lang/String;)V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.prevTrack"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 160
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "com.emby.prev"

    .line 162
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.mb.android.EXTRA_PLAYER_ID"

    .line 163
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in prevTrack"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static repeatModeStringToPlaybackState(Ljava/lang/String;)I
    .locals 1

    const-string v0, "RepeatAll"

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string v0, "RepeatOne"

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private setPlaybackRate(Ljava/lang/String;F)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.setPlaybackRate"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 242
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "setPlaybackRate"

    .line 244
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "rate"

    .line 245
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string p2, "com.mb.android.EXTRA_PLAYER_ID"

    .line 246
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Error in setPlaybackRate"

    invoke-interface {p2, v1, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setRepeatMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.setRepeatMode"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 197
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "setRepeatMode"

    .line 199
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mode"

    .line 200
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.mb.android.EXTRA_PLAYER_ID"

    .line 201
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Error in setRepeatMode"

    invoke-interface {p2, v1, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setSubtitleOffset(Ljava/lang/String;J)V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.setSubtitleOffset"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 261
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "setSubtitleOffset"

    .line 263
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "offset"

    .line 264
    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "com.mb.android.EXTRA_PLAYER_ID"

    .line 265
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "Error in setSubtitleOffset"

    invoke-interface {p2, v0, p1, p3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setVideoAspectRatio(Ljava/lang/String;)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.setVideoAspectRatio"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "setVideoAspectRatio"

    .line 107
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "value"

    .line 108
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {v2, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V

    .line 111
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {v0}, Lcom/mb/android/MainActivity;->getVideoManager()Lcom/mb/android/media/VideoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mb/android/media/VideoManager;->setResizeMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in setVideoAspectRatio"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setVideoBrightness(F)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    new-instance v1, Lcom/mb/android/media/MediaPlayerBridge$1;

    invoke-direct {v1, p0, p1}, Lcom/mb/android/media/MediaPlayerBridge$1;-><init>(Lcom/mb/android/media/MediaPlayerBridge;F)V

    invoke-virtual {v0, v1}, Lcom/mb/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public destroyVlc(Ljava/lang/String;)Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.destroyVlc"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 607
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "destroyPlayer"

    .line 609
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.mb.android.EXTRA_PLAYER_ID"

    .line 610
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 615
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in destroyVlc"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 618
    :goto_0
    sget-boolean p1, Lcom/mb/android/media/mpv/MPVInstance;->IsInitialized:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public movePlaylistItem(II)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.movePlaylistItem"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 510
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "movePlaylistItem"

    .line 512
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "oldIndex"

    .line 513
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "newIndex"

    .line 514
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 516
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 519
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Error in movePlaylistItem"

    invoke-interface {p2, v1, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public playAudioVlc(ZLjava/lang/String;Ljava/lang/String;IJI)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 298
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "items"

    .line 300
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mediaSource"

    .line 301
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "isLocal"

    .line 302
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "startIndex"

    .line 303
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "startPositionMs"

    .line 304
    invoke-virtual {v0, p1, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "mediaType"

    const-string p2, "Audio"

    .line 305
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemPageIndex"

    .line 306
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class p3, Lcom/mb/android/media/MediaService;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.example.android.uamp.ACTION_CMD"

    .line 309
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "CMD_NAME"

    const-string p3, "playAudioPlaylist"

    .line 311
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 314
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p2, p1}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 317
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "Error starting audio"

    invoke-interface {p2, p4, p1, p3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIIILjava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {v0}, Lcom/mb/android/MainActivity;->ensureVideoManager()Lcom/mb/android/media/VideoManager;

    .line 32
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "path"

    .line 34
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "item"

    .line 35
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "itemId"

    .line 36
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mediaSource"

    .line 37
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "posterUrl"

    .line 38
    invoke-virtual {v0, p1, p12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isLocal"

    .line 39
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "startPositionMs"

    .line 40
    invoke-virtual {v0, p1, p7, p8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "mediaType"

    const-string p2, "Video"

    .line 41
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "videoStreamIndex"

    .line 42
    invoke-virtual {v0, p1, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "audioStreamIndex"

    .line 43
    invoke-virtual {v0, p1, p10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "subtitleStreamIndex"

    .line 44
    invoke-virtual {v0, p1, p11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "isTranscoding"

    .line 45
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1, p3, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 53
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class p3, Lcom/mb/android/media/MediaService;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.example.android.uamp.ACTION_CMD"

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "CMD_NAME"

    const-string p3, "playMedia"

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 59
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p2, p1}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V

    :goto_1
    const/4 p1, 0x1

    .line 62
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaPlayerBridge;->notifyCurrentVolume(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 65
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "Error starting video"

    invoke-interface {p2, p4, p1, p3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public queueItems(Ljava/lang/String;Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.queueItems"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 549
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "queueItems"

    .line 551
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "items"

    .line 552
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "queueNext"

    .line 553
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 555
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 558
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Error in queueItems"

    invoke-interface {p2, v1, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public removePlaylistItem(I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.removePlaylistItem"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 530
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "removePlaylistItem"

    .line 532
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "index"

    .line 533
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 538
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in removePlaylistItem"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public seekRelative(J)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.seekRelative"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 491
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "seekRelative"

    .line 493
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "offsetMs"

    .line 494
    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 496
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 499
    iget-object p2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Error in movePlaylistItem"

    invoke-interface {p2, v1, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public sendLocalPlaybackCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {v0}, Lcom/mb/android/MainActivity;->getIsPlaybackLocal()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 344
    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    aput-object p1, v3, v1

    const-string v5, "Media command: %s, playerId: %s"

    invoke-interface {v2, v5, v3}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 349
    :try_start_0
    iget-object v3, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {v3, v1, v2}, Lcom/mb/android/MainActivity;->setPlayback(ZLjava/lang/String;)V

    :cond_0
    const-string v3, "pause"

    .line 352
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    goto/16 :goto_0

    :cond_1
    const-string v3, "unpause"

    .line 356
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 357
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    goto/16 :goto_0

    :cond_2
    const-string v3, "playpause"

    .line 359
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaPlayerBridge;->playPauseMedia(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "stop"

    .line 362
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "true"

    .line 364
    invoke-static {p3, v3}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 367
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    goto/16 :goto_0

    .line 369
    :cond_4
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v3, "destroyplayer"

    .line 370
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.mb.android.EXTRA_PLAYER_ID"

    .line 371
    invoke-virtual {p3, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    const-string v3, "com.emby.stop"

    invoke-virtual {p1, v3, p3}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "setvolume"

    .line 376
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v3, :cond_7

    .line 380
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 382
    iget-object v3, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v7, "setvolume command arg: %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object p3, v8, v4

    invoke-interface {v3, v7, v8}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    iget-object p3, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-string v3, "audio"

    invoke-virtual {p3, v3}, Lcom/mb/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    const/4 v3, 0x3

    .line 385
    invoke-virtual {p3, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p3

    .line 387
    iget-object v3, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v7, "AudioManager.getStreamMaxVolume: %s"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-interface {v3, v7, v8}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz p3, :cond_6

    const/16 p3, 0x64

    :cond_6
    div-float/2addr p1, v6

    int-to-float p3, p3

    mul-float p1, p1, p3

    .line 395
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 396
    invoke-static {p1, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 398
    iget-object p3, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v3, "Setting mediaController volume to %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {p3, v3, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object p3, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {p3}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p3

    float-to-int p1, p1

    invoke-virtual {p3, p1, v4}, Landroid/support/v4/media/session/MediaControllerCompat;->setVolumeTo(II)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "setmute"

    .line 403
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_0

    :cond_8
    const-string v3, "setposition"

    .line 407
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 411
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v3, "Sending seek command to Vlc Service. Position: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p3, v5, v4

    invoke-interface {p1, v3, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 413
    :try_start_1
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 414
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v5, p1

    .line 416
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->seekTo(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 419
    :try_start_2
    iget-object p3, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v3, "Error parsing seek value"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {p3, v3, p1, v5}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "setbrightness"

    .line 422
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 426
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 427
    invoke-static {p1, v6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 428
    invoke-static {p1, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 430
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaPlayerBridge;->setVideoBrightness(F)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "setaspectratio"

    .line 432
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 434
    invoke-direct {p0, p3}, Lcom/mb/android/media/MediaPlayerBridge;->setVideoAspectRatio(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string v3, "nexttrack"

    .line 436
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 437
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaPlayerBridge;->nextTrack(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string v3, "prevtrack"

    .line 439
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 440
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaPlayerBridge;->prevTrack(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string v3, "playatindex"

    .line 442
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 444
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 445
    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 446
    invoke-direct {p0, p1, p3}, Lcom/mb/android/media/MediaPlayerBridge;->playAtIndex(Ljava/lang/String;I)V

    goto :goto_0

    :cond_e
    const-string v3, "setRepeatMode"

    .line 448
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 449
    invoke-direct {p0, p1, p3}, Lcom/mb/android/media/MediaPlayerBridge;->setRepeatMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_f
    const-string v3, "setPlaybackRate"

    .line 451
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 452
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    .line 453
    invoke-direct {p0, p1, p3}, Lcom/mb/android/media/MediaPlayerBridge;->setPlaybackRate(Ljava/lang/String;F)V

    goto :goto_0

    :cond_10
    const-string v3, "setSubtitleOffset"

    .line 455
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 456
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 457
    invoke-direct {p0, p1, v5, v6}, Lcom/mb/android/media/MediaPlayerBridge;->setSubtitleOffset(Ljava/lang/String;J)V

    goto :goto_0

    :cond_11
    const-string v3, "incrementSubtitleOffset"

    .line 459
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 460
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 461
    invoke-direct {p0, p1, v5, v6}, Lcom/mb/android/media/MediaPlayerBridge;->incrementSubtitleOffset(Ljava/lang/String;J)V

    :cond_12
    :goto_0
    if-eqz v0, :cond_13

    .line 466
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v4, v2}, Lcom/mb/android/MainActivity;->setPlayback(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 470
    iget-object p3, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v4

    const-string p2, "Error sending command %s to Vlc"

    invoke-interface {p3, p2, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_13
    :goto_1
    return-void
.end method

.method public setAudioStreamIndex(I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.setAudioStreamIndex"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 569
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "setAudioStreamIndex"

    .line 571
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "index"

    .line 572
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 577
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in setAudioStreamIndex"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSubtitleStreamIndex(I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity.setSubtitleStreamIndex"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    const-class v3, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.example.android.uamp.ACTION_CMD"

    .line 588
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CMD_NAME"

    const-string v3, "setSubtitleStreamIndex"

    .line 590
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "index"

    .line 591
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 596
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in setSubtitleStreamIndex"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public stop(Ljava/lang/String;Z)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 326
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    goto :goto_0

    .line 329
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 330
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "destroyplayer"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.mb.android.EXTRA_PLAYER_ID"

    .line 331
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    const-string v1, "com.emby.stop"

    invoke-virtual {p1, v1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 335
    :goto_0
    iget-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_1
    return p2
.end method

.method public streamAndSaveEnabled(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 623
    new-instance v0, Lcom/mb/android/media/StreamRecord;

    iget-object v1, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    iget-object v2, p0, Lcom/mb/android/media/MediaPlayerBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v0, v1, v2}, Lcom/mb/android/media/StreamRecord;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    invoke-virtual {v0, p1}, Lcom/mb/android/media/StreamRecord;->getStreamRecordEnabled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public volumeDown()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->adjustVolume(II)V

    return-void
.end method

.method public volumeUp()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge;->activity:Lcom/mb/android/MainActivity;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->adjustVolume(II)V

    return-void
.end method
