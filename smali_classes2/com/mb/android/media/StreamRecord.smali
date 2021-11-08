.class Lcom/mb/android/media/StreamRecord;
.super Ljava/lang/Object;
.source "StreamRecord.java"


# static fields
.field private static final MIME_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final assetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

.field private final connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

.field private final context:Landroid/content/Context;

.field private final fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

.field private final localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private final mimeTypeMap:Landroid/webkit/MimeTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    .line 249
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v1, "audio/3gpp"

    const-string v2, "3gpp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v1, "audio/amr"

    const-string v2, "amr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v1, "audio/basic"

    const-string v2, "snd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v1, "audio/midi"

    const-string v2, "mid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v1, "audio/mobile-xmf"

    const-string v2, "mxmf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v1, "mp3"

    const-string v2, "audio/mpeg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v2, "m3u"

    const-string v3, "audio/mpegurl"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v3, "audio/prs.sid"

    const-string v4, "sid"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v3, "audio/x-aiff"

    const-string v4, "aif"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v3, "audio/x-gsm"

    const-string v4, "gsm"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v3, "audio/x-mpegurl"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v2, "audio/x-ms-wma"

    const-string v3, "wma"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v2, "audio/x-ms-wax"

    const-string v3, "wax"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v2, "audio/x-realaudio"

    const-string v3, "ra"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v2, "audio/x-scpls"

    const-string v3, "pls"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v2, "audio/x-sd2"

    const-string v3, "sd2"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v2, "audio/x-wav"

    const-string v3, "wav"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v2, "audio/mp4a-latm"

    const-string v3, "m4a"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v2, "audio/x-mpeg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v1, "audio/ogg"

    const-string v2, "ogg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v1, "audio/x-pn-realaudio"

    const-string v2, "rmvb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    const-string v1, "audio/x-ms-wmv"

    const-string v2, "wmv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/mb/android/media/StreamRecord;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/mb/android/media/StreamRecord;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/mb/android/MainApp;

    invoke-virtual {v0}, Lcom/mb/android/MainApp;->getConnectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/StreamRecord;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    .line 46
    new-instance v0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-direct {v0, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/media/StreamRecord;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    .line 47
    new-instance v0, Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-direct {v0, p1, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/media/StreamRecord;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    .line 48
    new-instance p2, Lcom/mb/android/sync/data/LocalAssetHelper;

    iget-object v0, p0, Lcom/mb/android/media/StreamRecord;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-direct {p2, p1, v0}, Lcom/mb/android/sync/data/LocalAssetHelper;-><init>(Landroid/content/Context;Lcom/mb/android/sync/data/AndroidFileRepository;)V

    iput-object p2, p0, Lcom/mb/android/media/StreamRecord;->assetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    .line 49
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/media/StreamRecord;->mimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/StreamRecord;Lcom/mb/android/apiinteraction/ApiClient;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mb/android/media/StreamRecord;->afterDetermineServerUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mb/android/media/StreamRecord;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/sync/data/LocalAssetHelper;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mb/android/media/StreamRecord;->assetHelper:Lcom/mb/android/sync/data/LocalAssetHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/sync/data/AndroidFileRepository;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mb/android/media/StreamRecord;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mb/android/media/StreamRecord;Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/mb/android/media/StreamRecord;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/mb/android/media/StreamRecord;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mb/android/media/StreamRecord;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/sync/data/database/AndroidLocalDatabase;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mb/android/media/StreamRecord;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    return-object p0
.end method

.method private afterDetermineServerUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 180
    invoke-virtual {p1}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mb/android/media/StreamRecord$2;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/mb/android/media/StreamRecord$2;-><init>(Lcom/mb/android/media/StreamRecord;Ljava/io/File;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient;)V

    invoke-virtual {p1, v0, p4, v1}, Lcom/mb/android/apiinteraction/ApiClient;->getItem(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private checkComplete(Ljava/io/File;D)Z
    .locals 8

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/mb/android/media/StreamRecord;->getFileDuration(Ljava/io/File;)D

    move-result-wide v2

    sub-double v4, p2, v2

    const-wide v6, 0x407f400000000000L    # 500.0

    const/4 p1, 0x1

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    return p1

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/mb/android/media/StreamRecord;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "Incomplete Stream Recording. Expected duration: \'%f\', recorded duration: \'%f\'"

    invoke-interface {v0, p1, v4}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v1
.end method

.method private checkDiskSpace(Ljava/lang/String;)Z
    .locals 7

    .line 129
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    .line 132
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v3

    const-wide/16 v5, 0xa

    .line 134
    div-long/2addr v3, v5

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkDownloadExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "local:"

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/StreamRecord;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getSyncStatusForLibraryItem(Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 122
    sget-object v0, Lcom/mb/android/sync/data/SyncJobStatus;->Failed:Lcom/mb/android/sync/data/SyncJobStatus;

    if-eq p1, v0, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 11

    .line 220
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    .line 221
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 222
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p2, 0x1

    .line 224
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 229
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return p2

    :catchall_0
    move-exception p2

    move-object v3, v1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 220
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    move-object v10, v3

    move-object v3, p2

    move-object p2, v10

    :goto_0
    if-eqz v3, :cond_0

    .line 224
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :goto_1
    throw p2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v1, p2

    .line 220
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_2
    if-eqz v1, :cond_1

    .line 224
    :try_start_9
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :goto_3
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p2

    goto :goto_4

    :catch_4
    move-exception p2

    .line 225
    :try_start_b
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 p2, 0x0

    .line 229
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return p2

    :goto_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 230
    throw p2
.end method

.method private getApiClientForStreamRecord(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 76
    :cond_0
    new-instance v1, Lcom/mb/android/sync/AppSettings;

    iget-object v2, p0, Lcom/mb/android/media/StreamRecord;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/mb/android/sync/AppSettings;->getSaveStreamServers()[Ljava/lang/String;

    move-result-object v1

    .line 79
    array-length v2, v1

    const/4 v3, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 80
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    iget-object v5, p0, Lcom/mb/android/media/StreamRecord;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {v5, p1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    return-object v0

    .line 88
    :cond_3
    invoke-virtual {v5}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 89
    iget-object p1, p0, Lcom/mb/android/media/StreamRecord;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Stream Record: Missing credentials for server"

    invoke-interface {p1, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    return-object v5
.end method

.method private getFileDuration(Ljava/io/File;)D
    .locals 3

    .line 152
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 154
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 155
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 159
    iget-object v0, p0, Lcom/mb/android/media/StreamRecord;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to retrieve metadata for cached file."

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/mb/android/media/StreamRecord;->mimeTypeMap:Landroid/webkit/MimeTypeMap;

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    sget-object v0, Lcom/mb/android/media/StreamRecord;->MIME_Map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "mp3"

    :cond_1
    return-object v0
.end method

.method private saveLocalFile(Lcom/mb/android/apiinteraction/ApiClient;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 165
    new-instance v6, Lcom/mb/android/media/StreamRecord$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mb/android/media/StreamRecord$1;-><init>(Lcom/mb/android/media/StreamRecord;Lcom/mb/android/apiinteraction/ApiClient;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lcom/mb/android/apiinteraction/ApiClient;->determineServerUrl(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    return-void
.end method


# virtual methods
.method getStreamRecordEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/mb/android/media/StreamRecord;->getStreamRecordEnabled(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method getStreamRecordEnabled(Ljava/lang/String;Z)Z
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Lcom/mb/android/media/StreamRecord;->getApiClientForStreamRecord(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 62
    iget-object p1, p0, Lcom/mb/android/media/StreamRecord;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    const-string p2, ""

    invoke-virtual {p1, p2, v0, v0, v0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getFullPath(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Lcom/mb/android/media/StreamRecord;->checkDiskSpace(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/mb/android/media/StreamRecord;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "Not enough disk space to start stream record."

    invoke-interface {p1, v1, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method saveCachedStream(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 98
    invoke-direct {p0, p4}, Lcom/mb/android/media/StreamRecord;->getApiClientForStreamRecord(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-direct {p0, p4, p5}, Lcom/mb/android/media/StreamRecord;->checkDownloadExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    :cond_1
    long-to-double p6, p6

    .line 107
    invoke-direct {p0, p1, p6, p7}, Lcom/mb/android/media/StreamRecord;->checkComplete(Ljava/io/File;D)Z

    move-result p4

    if-nez p4, :cond_2

    return-void

    .line 111
    :cond_2
    invoke-direct {p0, p2}, Lcom/mb/android/media/StreamRecord;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 112
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2, p5}, Lcom/mb/android/media/StreamRecord;->saveLocalFile(Lcom/mb/android/apiinteraction/ApiClient;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
