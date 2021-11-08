.class public Lcom/mb/android/sync/data/AndroidFileRepository;
.super Ljava/lang/Object;
.source "AndroidFileRepository.java"


# static fields
.field public static EMBY_DOWNLOADS_ALBUM:Ljava/lang/String; = "emby_downloads"


# instance fields
.field private final Logger:Lcom/mb/android/model/logging/ILogger;

.field private final context:Landroid/content/Context;

.field private final downloadManager:Lcom/mb/android/download/exo/ExoDownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->Logger:Lcom/mb/android/model/logging/ILogger;

    .line 45
    iput-object p1, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/mb/android/download/exo/ExoDownloadManager;

    invoke-direct {v0, p1, p2}, Lcom/mb/android/download/exo/ExoDownloadManager;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->downloadManager:Lcom/mb/android/download/exo/ExoDownloadManager;

    return-void
.end method

.method private static addDirectoryToList(Ljava/io/File;Lcom/mb/android/sync/data/ExternalStorageInfoList;Landroid/content/Context;)Z
    .locals 4

    const-string v0, "storage"

    .line 256
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 257
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "%externalstorage%"

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1

    .line 258
    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 261
    invoke-virtual {p1}, Lcom/mb/android/sync/data/ExternalStorageInfoList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 266
    :goto_0
    new-instance v1, Lcom/mb/android/sync/data/ExternalStorageInfo;

    invoke-virtual {v0, p2}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, v2, p2}, Lcom/mb/android/sync/data/ExternalStorageInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/mb/android/sync/data/ExternalStorageInfoList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/mb/android/sync/data/ExternalStorageInfoList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 270
    new-instance p2, Lcom/mb/android/sync/data/ExternalStorageInfo;

    const-string v0, "SD Card"

    invoke-direct {p2, p0, v2, v0}, Lcom/mb/android/sync/data/ExternalStorageInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/mb/android/sync/data/ExternalStorageInfoList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 185
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 186
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 187
    invoke-static {v2}, Lcom/mb/android/sync/data/AndroidFileRepository;->isValidFatFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v2, 0x5f

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, "(invalid)"

    return-object p0
.end method

.method private checkIsStillDownloading(Ljava/io/File;)Z
    .locals 7

    .line 612
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 614
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->downloadManager:Lcom/mb/android/download/exo/ExoDownloadManager;

    invoke-virtual {v0}, Lcom/mb/android/download/exo/ExoDownloadManager;->getCurrentDownloads()Lcom/mb/android/download/ManagerDownloadInfoList;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Lcom/mb/android/download/ManagerDownloadInfoList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/download/ManagerDownloadInfo;

    .line 618
    invoke-virtual {v1}, Lcom/mb/android/download/ManagerDownloadInfo;->isTerminalState()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 622
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/mb/android/download/ManagerDownloadInfo;->getLocalUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 624
    iget-object v3, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->Logger:Lcom/mb/android/model/logging/ILogger;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "checkIsStillDownloading"

    invoke-interface {v3, v5, v4}, Lcom/mb/android/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    iget-object v3, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->Logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v6}, Lcom/mb/android/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    iget-object v3, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->Logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/mb/android/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method private deleteDir(Ljava/io/File;)V
    .locals 4

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 130
    invoke-direct {p0, v3}, Lcom/mb/android/sync/data/AndroidFileRepository;->deleteDir(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private finishMediaStoreInsertFallback(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 482
    invoke-static {}, Lcom/mb/android/sync/data/AndroidFileRepository;->supportsPublicDownloads()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "_data=?"

    const/4 v1, 0x1

    .line 486
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 487
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 488
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "is_pending"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 490
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 491
    invoke-static {p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getPublicDownloadsUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/MediaStore;->setIncludePending(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 490
    invoke-virtual {v5, v6, v4, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 495
    invoke-static {p1}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    const-string v4, "finishMediaStoreInsert updated %d row(s) for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    aput-object p2, v5, v1

    invoke-interface {v2, v4, v5}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 498
    invoke-static {p1}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string p2, "finishMediaStoreInsert updated failed for %s"

    .line 499
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    .line 498
    invoke-interface {p1, p2, v0, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private getBaseMetadataPath()Landroid/net/Uri;
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getLegacyBaseMetadataPath()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getBasePath()Landroid/net/Uri;
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getCustomSyncPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 58
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->context:Landroid/content/Context;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 67
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getCustomSyncPath()Ljava/lang/String;
    .locals 2

    .line 309
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 310
    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getSyncPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    sget-object v1, Lcom/mb/android/sync/data/AndroidFileRepository;->EMBY_DOWNLOADS_ALBUM:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getExternalStoragePath(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExternalStorageDirs(Landroid/content/Context;)Lcom/mb/android/sync/data/ExternalStorageInfoList;
    .locals 4

    .line 215
    invoke-static {p0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getRemovableOrEmulatedStorageDirs(Landroid/content/Context;)Lcom/mb/android/sync/data/ExternalStorageInfoList;

    move-result-object v0

    .line 218
    invoke-static {}, Lcom/mb/android/sync/data/AndroidFileRepository;->supportsPublicDownloads()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    new-instance v1, Lcom/mb/android/sync/data/ExternalStorageInfo;

    .line 220
    invoke-static {p0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getPublicDownloadsUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "%publicdownloads%"

    const-string v3, "Downloads"

    invoke-direct {v1, p0, v2, v3}, Lcom/mb/android/sync/data/ExternalStorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, v1}, Lcom/mb/android/sync/data/ExternalStorageInfoList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private getExternalStoragePath(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 278
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getExternalStorageDirs(Landroid/content/Context;)Lcom/mb/android/sync/data/ExternalStorageInfoList;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/mb/android/sync/data/ExternalStorageInfoList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/sync/data/ExternalStorageInfo;

    .line 280
    invoke-virtual {v1}, Lcom/mb/android/sync/data/ExternalStorageInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-virtual {v1}, Lcom/mb/android/sync/data/ExternalStorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/mb/android/sync/data/ExternalStorageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 296
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 299
    :cond_4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 304
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getLegacyBaseMetadataPath()Ljava/io/File;
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/io/File;

    const-string v2, "metadata"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getPublicDownloadsUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    .line 208
    invoke-static {}, Lcom/mb/android/sync/data/AndroidFileRepository;->supportsPublicDownloads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object p0, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0

    .line 211
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getRelativeFile(Landroid/net/Uri;Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    .line 414
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 417
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_0
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 423
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static getRemovableOrEmulatedStorageDirs(Landroid/content/Context;)Lcom/mb/android/sync/data/ExternalStorageInfoList;
    .locals 8

    .line 229
    new-instance v0, Lcom/mb/android/sync/data/ExternalStorageInfoList;

    invoke-direct {v0}, Lcom/mb/android/sync/data/ExternalStorageInfoList;-><init>()V

    .line 231
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 233
    invoke-static {v6}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 234
    invoke-static {v6, v0, p0}, Lcom/mb/android/sync/data/AndroidFileRepository;->addDirectoryToList(Ljava/io/File;Lcom/mb/android/sync/data/ExternalStorageInfoList;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v0}, Lcom/mb/android/sync/data/ExternalStorageInfoList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 243
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v3, v1, v4

    .line 244
    invoke-static {v3}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 245
    invoke-static {v3, v0, p0}, Lcom/mb/android/sync/data/AndroidFileRepository;->addDirectoryToList(Ljava/io/File;Lcom/mb/android/sync/data/ExternalStorageInfoList;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private getReturnPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 568
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 571
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getReturnPath(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 563
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static isValidFatFilenameChar(C)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x22

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x5c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7f

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3e

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3f

    if-eq p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private removeMediaStoreInsertFallback(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 523
    invoke-static {}, Lcom/mb/android/sync/data/AndroidFileRepository;->supportsPublicDownloads()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "_data=?"

    const/4 v1, 0x1

    .line 527
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 529
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 530
    invoke-static {p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getPublicDownloadsUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MediaStore;->setIncludePending(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 529
    invoke-virtual {v4, v5, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 533
    invoke-static {p1}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    const-string v4, "removeMediaStoreInsert deleted %d row(s) for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    aput-object p2, v5, v1

    invoke-interface {v2, v4, v5}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 536
    invoke-static {p1}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string p2, "removeMediaStoreInsert Failed for %s"

    .line 537
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    .line 536
    invoke-interface {p1, p2, v0, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private resolveContentUriPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "_data"

    .line 360
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Landroid/provider/MediaStore;->setIncludePending(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 367
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 368
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 369
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method private resolveContentUriPath(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p2, :cond_0

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->resolveContentUriPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "_data"

    .line 380
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    .line 383
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    const/4 p4, 0x1

    aput-object p5, v4, p4

    const/4 p4, 0x0

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p3}, Landroid/provider/MediaStore;->setIncludePending(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    const-string v3, "relative_path=? AND _display_name=?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 390
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 391
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 392
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 394
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p4
.end method

.method private resolveMediaStoreCollection(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 399
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getPublicDownloadsUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 405
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1
.end method

.method public static supportsPublicDownloads()Z
    .locals 2

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private trimEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 576
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public combinePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 554
    invoke-direct {p0, p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 556
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0, v0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getReturnPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deleteDirectory(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->Logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "deleteDirectory: %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->deleteDir(Ljava/io/File;)V

    return-void
.end method

.method public deleteEmptyParentFolders(Ljava/lang/String;)V
    .locals 3

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    sget-object v0, Lcom/mb/android/sync/data/AndroidFileRepository;->EMBY_DOWNLOADS_ALBUM:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    .line 106
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 120
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x0

    new-instance v2, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$kxXJGyvmjrGbuHII_IwGO2-7eu4;

    invoke-direct {v2, p0}, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$kxXJGyvmjrGbuHII_IwGO2-7eu4;-><init>(Lcom/mb/android/sync/data/AndroidFileRepository;)V

    invoke-static {v0, v1, p1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_4
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->Logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "deleteFile: %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public finishMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 473
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-instance v1, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$EbJowUbZxbKTSK7175WOdkHCKro;

    invoke-direct {v1, p0, p1, p2}, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$EbJowUbZxbKTSK7175WOdkHCKro;-><init>(Lcom/mb/android/sync/data/AndroidFileRepository;Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public getFullLegacyMetadataPathIfExists([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 321
    invoke-direct {p0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getLegacyBaseMetadataPath()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 324
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 325
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 326
    new-instance v2, Ljava/io/File;

    aget-object v3, p1, v1

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_0
    new-instance v2, Ljava/io/File;

    aget-object v3, p1, v1

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    move-object v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 336
    invoke-direct {p0, v0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getReturnPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFullPath(Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p2, "##"

    .line 344
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getBaseMetadataPath()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getBasePath()Landroid/net/Uri;

    move-result-object p2

    .line 348
    :goto_0
    array-length p3, p1

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_1

    aget-object v0, p1, p4

    .line 349
    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 352
    :cond_1
    invoke-direct {p0, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->getReturnPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemFileSize(Ljava/lang/String;)J
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 587
    invoke-direct {p0, p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 588
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    iget-object v5, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->Logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "getItemFileSize: file exists: %s"

    invoke-interface {v5, p1, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    :try_start_0
    invoke-direct {p0, v0}, Lcom/mb/android/sync/data/AndroidFileRepository;->checkIsStillDownloading(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-wide v2

    .line 602
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 604
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->Logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "Error in getItemFileSize"

    invoke-interface {v0, v4, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-wide v2

    .line 589
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->Logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "getItemFileSize: file does not exist: %s"

    invoke-interface {v0, p1, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v2
.end method

.method public getParentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 544
    invoke-direct {p0, p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 546
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 548
    invoke-direct {p0, p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getReturnPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValidFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_0

    .line 151
    invoke-static {p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/mb/android/sync/data/AndroidFileRepository;->trimEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertNewMediaStoreItem(Landroid/content/Context;Landroid/net/Uri;Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 436
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 440
    :cond_0
    invoke-direct {p0, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->resolveMediaStoreCollection(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 441
    invoke-direct {p0, v3, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->getRelativeFile(Landroid/net/Uri;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 443
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 444
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "_display_name"

    .line 445
    invoke-virtual {p2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "relative_path"

    .line 446
    invoke-virtual {p2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p3}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 449
    invoke-virtual {p3}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/dto/MediaSourceInfo;

    .line 450
    invoke-virtual {v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getVideoStream()Lcom/mb/android/model/entities/MediaStream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p3, "video/*"

    goto :goto_0

    :cond_2
    const-string p3, "audio/*"

    :goto_0
    const-string v0, "mime_type"

    .line 456
    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, v3, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 459
    invoke-direct/range {v0 .. v5}, Lcom/mb/android/sync/data/AndroidFileRepository;->resolveContentUriPath(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 463
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 464
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 465
    :catch_0
    invoke-static {p1}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string p2, "insertNewMediaStoreItem Failed to open output stream at %s"

    invoke-interface {p1, p2, p3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_1
    return-object p3
.end method

.method public synthetic lambda$deleteEmptyParentFolders$0$AndroidFileRepository(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 121
    iget-object p2, p0, Lcom/mb/android/sync/data/AndroidFileRepository;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MediaScannerConnection scanned %s"

    invoke-interface {p2, p1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$finishMediaStoreInsert$1$AndroidFileRepository(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 474
    invoke-static {p1}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string p3, "finishMediaStoreInsert scanned %s"

    invoke-interface {v0, p3, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p4, :cond_0

    .line 476
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->finishMediaStoreInsertFallback(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$removeMediaStoreInsert$2$AndroidFileRepository(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 507
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p4, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4

    .line 508
    invoke-static {p1}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const-string v2, "removeMediaStoreInsert deleted %d row(s) for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v3, v0

    aput-object p2, v3, p3

    invoke-interface {v1, v2, v3}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 511
    invoke-static {p1}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v0

    const-string v2, "removeMediaStoreInsert Failed for %s"

    .line 512
    invoke-static {v2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    .line 511
    invoke-interface {v1, p3, p4, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 513
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->removeMediaStoreInsertFallback(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->removeMediaStoreInsertFallback(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removeMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 504
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-instance v1, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$OcCZae52W7RHoN5GxNUocpwq7jM;

    invoke-direct {v1, p0, p1, p2}, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$OcCZae52W7RHoN5GxNUocpwq7jM;-><init>(Lcom/mb/android/sync/data/AndroidFileRepository;Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method
