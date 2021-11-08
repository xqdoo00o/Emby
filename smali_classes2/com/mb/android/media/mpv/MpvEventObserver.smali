.class public Lcom/mb/android/media/mpv/MpvEventObserver;
.super Ljava/lang/Object;
.source "MpvEventObserver.java"

# interfaces
.implements Lis/xyz/mpv/EventObserver;
.implements Lis/xyz/mpv/LogObserver;


# instance fields
.field private clientObjectName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private enableDebugLog:Z

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private messenger:Lcom/mb/android/media/MediaService$UIMessenger;

.field private reportEvents:Z

.field private final volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;


# direct methods
.method public constructor <init>(Lcom/mb/android/model/logging/ILogger;Landroid/content/Context;Lcom/mb/android/media/MediaService$UIMessenger;Z)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->enableDebugLog:Z

    .line 49
    iput-object p1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 50
    iput-object p2, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->context:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    .line 52
    iput-boolean p4, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->reportEvents:Z

    .line 54
    new-instance p1, Lcom/mb/android/media/mpv/MpvEventObserver$1;

    invoke-direct {p1, p0, p2}, Lcom/mb/android/media/mpv/MpvEventObserver$1;-><init>(Lcom/mb/android/media/mpv/MpvEventObserver;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    return-void
.end method

.method private RespondToWebView(Ljava/lang/String;)V
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->reportEvents:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    invoke-interface {v0, p1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/mpv/MpvEventObserver;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/media/mpv/MpvEventObserver;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public event(I)V
    .locals 4

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MPV_EVENT_FILE_LOADED"

    invoke-interface {p1, v3, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-array p1, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "%s.onEvent(\'file-loaded\');"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/mb/android/media/mpv/MpvEventObserver;->onPlaying()V

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MPV_EVENT_START_FILE"

    invoke-interface {p1, v3, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    new-array p1, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "%s.onEvent(\'start-file\');"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public eventProperty(Ljava/lang/String;)V
    .locals 3

    .line 66
    iget-boolean v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->enableDebugLog:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Mpv property %s"

    invoke-interface {v0, p1, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public eventProperty(Ljava/lang/String;J)V
    .locals 12

    const-string v0, "time-pos"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const-string v6, "%s.onPropertyChange(\'%s\', %s);"

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    cmp-long v0, p2, v3

    if-ltz v0, :cond_0

    mul-long p2, p2, v1

    .line 80
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    aput-object v1, v0, v8

    aput-object p1, v0, v9

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v7

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p2, p3}, Lcom/mb/android/media/mpv/MpvEventObserver;->onTimeUpdate(J)V

    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v10, v7, [Ljava/lang/Object;

    aput-object p1, v10, v8

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    const-string v11, "Mpv long property %s: %s"

    invoke-interface {v0, v11, v10}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x76bbb26c

    if-eq v10, v11, :cond_4

    const v11, 0x22836fd9

    if-eq v10, v11, :cond_3

    const v11, 0x6412df2e

    if-eq v10, v11, :cond_2

    goto :goto_0

    :cond_2
    const-string v10, "end-file"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v10, "playlist-pos"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v10, "duration"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_0
    if-eqz v0, :cond_8

    if-eq v0, v9, :cond_7

    if-eq v0, v7, :cond_6

    goto/16 :goto_1

    .line 114
    :cond_6
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    aput-object v1, v0, v8

    aput-object p1, v0, v9

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v7

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p2, p3}, Lcom/mb/android/media/mpv/MpvEventObserver;->onPlaylistPosUpdate(J)V

    goto :goto_1

    :cond_7
    mul-long p2, p2, v1

    .line 110
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    aput-object v1, v0, v8

    aput-object p1, v0, v9

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v7

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/mb/android/media/mpv/MpvEventObserver;->onDurationChange(J)V

    goto :goto_1

    :cond_8
    cmp-long p1, p2, v3

    if-nez p1, :cond_9

    .line 93
    new-array p1, v9, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    aput-object p2, p1, v8

    const-string p2, "%s.onEvent(\'ended\');"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v9}, Lcom/mb/android/media/mpv/MpvEventObserver;->onEndReached(Z)V

    goto :goto_1

    :cond_9
    const-wide/16 v0, 0x2

    const-string p1, "%s.onEvent(\'end-file\');"

    cmp-long v2, p2, v0

    if-nez v2, :cond_a

    .line 97
    new-array p2, v9, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    aput-object p3, p2, v8

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/mb/android/media/mpv/MpvEventObserver;->onStopped()V

    goto :goto_1

    :cond_a
    const-wide/16 v0, 0x4

    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    .line 101
    new-array p1, v9, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    aput-object p2, p1, v8

    const-string p2, "%s.onEvent(\'error\');"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/mb/android/media/mpv/MpvEventObserver;->onError()V

    goto :goto_1

    .line 105
    :cond_b
    new-array p2, v9, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    aput-object p3, p2, v8

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public eventProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 145
    iget-boolean v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->enableDebugLog:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Mpv String property %s: %s"

    invoke-interface {v0, p1, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public eventProperty(Ljava/lang/String;Z)V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "Mpv boolean property %s: %s"

    invoke-interface {v0, v4, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 125
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object p1, v0, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s.onPropertyChange(\'%s\', %s);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    const-string v0, "pause"

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/mb/android/media/mpv/MpvEventObserver;->onPaused()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/media/mpv/MpvEventObserver;->onUnpaused()V

    goto :goto_0

    :cond_1
    const-string v0, "eof-reached"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 137
    invoke-virtual {p0, v3}, Lcom/mb/android/media/mpv/MpvEventObserver;->onEndReached(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public logMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 154
    iget-boolean v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->enableDebugLog:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const-string p1, "Mpv log [%s:%d] %s"

    invoke-interface {v0, p1, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onCacheUpdate(DD)V
    .locals 0

    return-void
.end method

.method protected onDurationChange(J)V
    .locals 0

    return-void
.end method

.method protected onEndReached(Z)V
    .locals 0

    return-void
.end method

.method protected onError()V
    .locals 0

    return-void
.end method

.method protected onPaused()V
    .locals 0

    return-void
.end method

.method protected onPlaying()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    invoke-virtual {v0}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->start()V

    return-void
.end method

.method protected onPlaylistPosUpdate(J)V
    .locals 0

    return-void
.end method

.method protected onShutdown()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 250
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s.onEvent(\'shutdown\');"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->volumeObserver:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    invoke-virtual {v0}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->stop()V

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method protected onTimeUpdate(J)V
    .locals 8

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "start"

    .line 213
    invoke-static {p2}, Lis/xyz/mpv/MPVLib;->getPropertyCache(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "end"

    .line 214
    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->getPropertyCache(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 218
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    .line 221
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 222
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 224
    iget-boolean v1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->enableDebugLog:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v4, "MPV cache update (%s, %s)"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v1, v4, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string v1, "%s.onCacheUpdate(%s, %s);"

    const/4 v4, 0x3

    .line 228
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    aput-object v5, v4, p1

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mb/android/media/mpv/MpvEventObserver;->RespondToWebView(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mb/android/media/mpv/MpvEventObserver;->onCacheUpdate(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 232
    iget-object v0, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Error getting mpv cache values"

    invoke-interface {v0, v1, p2, p1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected onUnpaused()V
    .locals 0

    return-void
.end method

.method public setIsVideoPlayback(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "VlcVideoPlayer"

    goto :goto_0

    :cond_0
    const-string p1, "VlcAudioPlayer"

    .line 41
    :goto_0
    iput-object p1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->clientObjectName:Ljava/lang/String;

    return-void
.end method

.method public setShouldReportEvents(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/mb/android/media/mpv/MpvEventObserver;->reportEvents:Z

    return-void
.end method
