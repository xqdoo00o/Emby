.class public Lcom/mb/android/chromecast/ChromecastPlaybackController;
.super Ljava/lang/Object;
.source "ChromecastPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;,
        Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;
    }
.end annotation


# instance fields
.field private castVolumeListener:Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;

.field private final handler:Landroid/os/Handler;

.field private final jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private final sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/SessionManager;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 26
    iput-object p2, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->handler:Landroid/os/Handler;

    .line 28
    new-instance p1, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {p1}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    return-void
.end method


# virtual methods
.method public synthetic lambda$sendMessage$0$ChromecastPlaybackController(Ljava/lang/String;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "urn:x-cast:com.connectsdk"

    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cast/framework/CastSession;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error sending Chromecast message"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$setReceiverMuted$4$ChromecastPlaybackController(Z)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->setMute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error setting mute"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$setReceiverVolume$1$ChromecastPlaybackController(D)V
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 55
    :try_start_0
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v3, 0x0

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    div-double/2addr p1, v1

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/framework/CastSession;->setVolume(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    iget-object p2, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error setting volume"

    invoke-interface {p2, v1, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$startVolumeListener$6$ChromecastPlaybackController(Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v1, Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;

    invoke-direct {v1, v0, p1}, Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;-><init>(Lcom/google/android/gms/cast/framework/CastSession;Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;)V

    iput-object v1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->castVolumeListener:Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;

    .line 125
    :try_start_0
    iget-object p1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->castVolumeListener:Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/CastSession;->addCastListener(Lcom/google/android/gms/cast/Cast$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error setting Chromecast mute"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$stopVolumeListener$7$ChromecastPlaybackController()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->castVolumeListener:Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->castVolumeListener:Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastSession;->removeCastListener(Lcom/google/android/gms/cast/Cast$Listener;)V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->castVolumeListener:Lcom/mb/android/chromecast/ChromecastPlaybackController$CastVolumeListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    iget-object v1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error setting Chromecast mute"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$toggleReceiverMuted$5$ChromecastPlaybackController()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 110
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isMute()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/CastSession;->setMute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 112
    iget-object v2, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Error setting Chromecast mute"

    invoke-interface {v2, v3, v0, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public synthetic lambda$volumeDown$3$ChromecastPlaybackController()V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getVolume()D

    move-result-wide v1

    const-wide v3, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/CastSession;->setVolume(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    iget-object v1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error setting volume"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$volumeUp$2$ChromecastPlaybackController()V
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getVolume()D

    move-result-wide v1

    const-wide v3, 0x3fa999999999999aL    # 0.05

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/CastSession;->setVolume(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    iget-object v1, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error setting volume"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendMessage(Lcom/mb/android/chromecast/ChromecastMessage;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v0, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$jkpMgZK5pjUH3e4PPet_pNlKPbA;

    invoke-direct {v1, p0, p1}, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$jkpMgZK5pjUH3e4PPet_pNlKPbA;-><init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setReceiverMuted(Z)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$7E_imk8AGhu0WGIl0rfrmlPe5hg;

    invoke-direct {v1, p0, p1}, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$7E_imk8AGhu0WGIl0rfrmlPe5hg;-><init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setReceiverVolume(D)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$fakHlObpuE8DCsss6KBf2GvGKd8;

    invoke-direct {v1, p0, p1, p2}, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$fakHlObpuE8DCsss6KBf2GvGKd8;-><init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startVolumeListener(Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$gxfWjMHphT1JhU2zhETU8x0NXdU;

    invoke-direct {v1, p0, p1}, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$gxfWjMHphT1JhU2zhETU8x0NXdU;-><init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopVolumeListener()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$LZltuRVfMXHYFts1_OoAaCv5cVw;

    invoke-direct {v1, p0}, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$LZltuRVfMXHYFts1_OoAaCv5cVw;-><init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toggleReceiverMuted()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$cZctSus5s65eTqSiIH0eNIhgz-E;

    invoke-direct {v1, p0}, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$cZctSus5s65eTqSiIH0eNIhgz-E;-><init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public volumeDown()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$24WgX7zJ-94wgDeckxQXkiWrthk;

    invoke-direct {v1, p0}, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$24WgX7zJ-94wgDeckxQXkiWrthk;-><init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public volumeUp()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastPlaybackController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$wF6y0NNcfgfC-aqribvbXcVQKFU;

    invoke-direct {v1, p0}, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$wF6y0NNcfgfC-aqribvbXcVQKFU;-><init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
