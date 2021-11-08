.class public Lcom/mb/android/download/ManagerDownloadInfo;
.super Ljava/lang/Object;
.source "ManagerDownloadInfo.java"


# instance fields
.field private bytesDownloaded:I

.field private description:Ljava/lang/String;

.field private destination:I

.field private download:Lcom/google/android/exoplayer2/offline/Download;

.field private hint:Ljava/lang/String;

.field private id:I

.field private lastModified:I

.field private localFilename:Ljava/lang/String;

.field private localUri:Ljava/lang/String;

.field private mediaProviderUri:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;

.field private reason:I

.field private status:I

.field private title:Ljava/lang/String;

.field private totalSize:I

.field private uri:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromExoDownload(Lcom/google/android/exoplayer2/offline/Download;)Lcom/mb/android/download/ManagerDownloadInfo;
    .locals 4

    if-eqz p0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    new-instance v0, Lcom/mb/android/download/ManagerDownloadInfo;

    invoke-direct {v0}, Lcom/mb/android/download/ManagerDownloadInfo;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mb/android/download/ManagerDownloadInfo;->uri:Ljava/lang/String;

    .line 137
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mb/android/download/ManagerDownloadInfo;->localFilename:Ljava/lang/String;

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mb/android/download/ManagerDownloadInfo;->localUri:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->data:[B

    if-eqz v1, :cond_1

    .line 141
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->data:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, v0, Lcom/mb/android/download/ManagerDownloadInfo;->title:Ljava/lang/String;

    .line 143
    :cond_1
    iget-object v1, v0, Lcom/mb/android/download/ManagerDownloadInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/mb/android/download/ManagerDownloadInfo;->description:Ljava/lang/String;

    .line 145
    iget-wide v1, p0, Lcom/google/android/exoplayer2/offline/Download;->contentLength:J

    long-to-int v2, v1

    iput v2, v0, Lcom/mb/android/download/ManagerDownloadInfo;->totalSize:I

    .line 146
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/Download;->getBytesDownloaded()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/mb/android/download/ManagerDownloadInfo;->bytesDownloaded:I

    .line 147
    iget v1, p0, Lcom/google/android/exoplayer2/offline/Download;->state:I

    iput v1, v0, Lcom/mb/android/download/ManagerDownloadInfo;->status:I

    .line 148
    iget v1, p0, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/offline/Download;->failureReason:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/offline/Download;->stopReason:I

    :goto_0
    iput v1, v0, Lcom/mb/android/download/ManagerDownloadInfo;->reason:I

    .line 150
    iput-object p0, v0, Lcom/mb/android/download/ManagerDownloadInfo;->download:Lcom/google/android/exoplayer2/offline/Download;

    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBytesDownloaded()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 93
    iget v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->bytesDownloaded:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDestination()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 73
    iget v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->destination:I

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 38
    iget v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->id:I

    return v0
.end method

.method public getLastModified()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 58
    iget v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->lastModified:I

    return v0
.end method

.method public getLocalFilename()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->localFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->localUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProviderUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->mediaProviderUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 83
    iget v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->reason:I

    return v0
.end method

.method public getStatus()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 78
    iget v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 88
    iget v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->totalSize:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isTerminalState()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->download:Lcom/google/android/exoplayer2/offline/Download;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/Download;->isTerminalState()Z

    move-result v0

    return v0

    .line 126
    :cond_0
    iget v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 114
    iget v0, p0, Lcom/mb/android/download/ManagerDownloadInfo;->status:I

    iget v1, p0, Lcom/mb/android/download/ManagerDownloadInfo;->reason:I

    invoke-static {v0, v1}, Lcom/mb/android/download/exo/ExoDownloadHelper;->backgroundTransferStatusToString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/mb/android/download/ManagerDownloadInfo;->id:I

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mb/android/download/ManagerDownloadInfo;->uri:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mb/android/download/ManagerDownloadInfo;->title:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mb/android/download/ManagerDownloadInfo;->description:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mb/android/download/ManagerDownloadInfo;->localUri:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "\nManagerDownloadInfo:\nID: %s \nURI: %s \nTitle: %s \nDescription: %s \nLocalURI: %s \nStatus: %s"

    .line 116
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
