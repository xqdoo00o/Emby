.class public Lcom/mb/android/download/exo/ExoDownloadManager;
.super Ljava/lang/Object;
.source "ExoDownloadManager.java"


# instance fields
.field private final Logger:Lcom/mb/android/model/logging/ILogger;

.field private final context:Landroid/content/Context;

.field private exoDownloadHelper:Lcom/mb/android/download/exo/ExoDownloadHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadManager;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/mb/android/download/exo/ExoDownloadManager;->Logger:Lcom/mb/android/model/logging/ILogger;

    return-void
.end method

.method private downloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadManager;->exoDownloadHelper()Lcom/mb/android/download/exo/ExoDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/download/exo/ExoDownloadHelper;->getDownloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method private exoDownloadHelper()Lcom/mb/android/download/exo/ExoDownloadHelper;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadManager;->exoDownloadHelper:Lcom/mb/android/download/exo/ExoDownloadHelper;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/mb/android/MainApp;

    invoke-virtual {v0}, Lcom/mb/android/MainApp;->getExoDownloadHelper()Lcom/mb/android/download/exo/ExoDownloadHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadManager;->exoDownloadHelper:Lcom/mb/android/download/exo/ExoDownloadHelper;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadManager;->exoDownloadHelper:Lcom/mb/android/download/exo/ExoDownloadHelper;

    return-object v0
.end method

.method private getDownloadHelper(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadHelper;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadManager;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forProgressive(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p1

    return-object p1
.end method

.method private setDownloadSettings()V
    .locals 3

    .line 153
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadManager;->syncSettings()Lcom/mb/android/sync/AppSettings;

    move-result-object v0

    .line 154
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadManager;->downloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v1

    .line 156
    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getSyncOnlyOnWifi()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    .line 160
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/offline/DownloadManager;->setRequirements(Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    .line 164
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadsPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->resumeDownloads()V

    :cond_1
    return-void
.end method

.method private syncSettings()Lcom/mb/android/sync/AppSettings;
    .locals 2

    .line 40
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getCurrentDownloads()Lcom/mb/android/download/ManagerDownloadInfoList;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadManager;->downloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/mb/android/download/ManagerDownloadInfoList;

    invoke-direct {v1}, Lcom/mb/android/download/ManagerDownloadInfoList;-><init>()V

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/Download;

    .line 146
    invoke-static {v2}, Lcom/mb/android/download/ManagerDownloadInfo;->fromExoDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/mb/android/download/ManagerDownloadInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mb/android/download/ManagerDownloadInfoList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public queueDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/mb/android/download/ManagerDownloadInfo;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 84
    :try_start_0
    iget-object v4, v1, Lcom/mb/android/download/exo/ExoDownloadManager;->Logger:Lcom/mb/android/model/logging/ILogger;

    const-string v5, "AndroidDownloadManager.queueDownload %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-interface {v4, v5, v7}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz p4, :cond_1

    .line 88
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    goto :goto_1

    :cond_1
    :goto_0
    const-string v5, "..."

    :goto_1
    const/4 v7, 0x0

    if-eqz p5, :cond_2

    .line 93
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v7

    .line 95
    :goto_2
    invoke-direct {v1, v4, v0}, Lcom/mb/android/download/exo/ExoDownloadManager;->getDownloadHelper(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object v0

    if-nez v2, :cond_3

    .line 97
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDownloadRequest([B)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v0

    goto :goto_3

    .line 100
    :cond_3
    invoke-virtual {v0, v2, v5}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDownloadRequest(Ljava/lang/String;[B)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v0

    :goto_3
    move-object v9, v0

    .line 103
    iget-object v0, v1, Lcom/mb/android/download/exo/ExoDownloadManager;->Logger:Lcom/mb/android/model/logging/ILogger;

    const-string v2, "DownloadManager.Request %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-interface {v0, v2, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/mb/android/download/exo/ExoDownloadManager;->setDownloadSettings()V

    .line 107
    iget-object v0, v1, Lcom/mb/android/download/exo/ExoDownloadManager;->context:Landroid/content/Context;

    const-class v2, Lcom/mb/android/download/exo/ExoDownloadService;

    invoke-static {v0, v2, v9, v6}, Lcom/google/android/exoplayer2/offline/DownloadService;->sendAddDownload(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadRequest;Z)V

    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/mb/android/download/exo/ExoDownloadManager;->downloadManager()Lcom/google/android/exoplayer2/offline/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadIndex()Lcom/google/android/exoplayer2/offline/DownloadIndex;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :try_start_1
    iget-object v2, v9, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/offline/DownloadIndex;->getDownload(Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 115
    :try_start_2
    iget-object v2, v1, Lcom/mb/android/download/exo/ExoDownloadManager;->Logger:Lcom/mb/android/model/logging/ILogger;

    const-string v4, "Error retrieving download"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0, v5}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4
    if-nez v7, :cond_4

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 120
    new-instance v0, Lcom/google/android/exoplayer2/offline/Download;

    const/4 v10, 0x0

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v0

    move-wide v11, v13

    invoke-direct/range {v8 .. v18}, Lcom/google/android/exoplayer2/offline/Download;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJII)V

    goto :goto_5

    :cond_4
    move-object v0, v7

    .line 130
    :goto_5
    invoke-static {v0}, Lcom/mb/android/download/ManagerDownloadInfo;->fromExoDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/mb/android/download/ManagerDownloadInfo;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 134
    iget-object v2, v1, Lcom/mb/android/download/exo/ExoDownloadManager;->Logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error in queueDownload"

    invoke-interface {v2, v4, v0, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 135
    throw v0
.end method

.method public queueDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/mb/android/download/ManagerDownloadInfo;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/mb/android/download/exo/ExoDownloadManager;->queueDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/mb/android/download/ManagerDownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public queueInternalDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/download/exo/ExoDownloadManager;->Logger:Lcom/mb/android/model/logging/ILogger;

    const-string v2, "AndroidDownloadManager.queueInternalDownload %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/mb/android/download/exo/ExoDownloadManager;->getDownloadHelper(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p1

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDownloadRequest([B)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object p1

    .line 64
    invoke-direct {p0}, Lcom/mb/android/download/exo/ExoDownloadManager;->setDownloadSettings()V

    .line 66
    iget-object p2, p0, Lcom/mb/android/download/exo/ExoDownloadManager;->context:Landroid/content/Context;

    const-class v1, Lcom/mb/android/download/exo/ExoDownloadService;

    invoke-static {p2, v1, p1, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->sendAddDownload(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/DownloadRequest;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 70
    iget-object p2, p0, Lcom/mb/android/download/exo/ExoDownloadManager;->Logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error in queueInternalDownload"

    invoke-interface {p2, v1, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 72
    throw p1
.end method
