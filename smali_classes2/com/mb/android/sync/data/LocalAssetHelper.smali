.class public Lcom/mb/android/sync/data/LocalAssetHelper;
.super Ljava/lang/Object;
.source "LocalAssetHelper.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 21
    new-instance v0, Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-static {p1}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mb/android/sync/data/AndroidFileRepository;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    invoke-direct {p0, p1, v0}, Lcom/mb/android/sync/data/LocalAssetHelper;-><init>(Landroid/content/Context;Lcom/mb/android/sync/data/AndroidFileRepository;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/sync/data/AndroidFileRepository;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->context:Landroid/content/Context;

    return-void
.end method

.method private deleteImage(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V
    .locals 1

    .line 206
    invoke-virtual {p3}, Lcom/mb/android/model/entities/ImageType;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mb/android/sync/data/LocalAssetHelper;->getLocalMetadataPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object p2, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-virtual {p2, p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method private getNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private removeImages(Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 3

    .line 182
    invoke-virtual {p1}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    .line 183
    iget-object p1, p1, Lcom/mb/android/sync/data/database/LocalItem;->ServerId:Ljava/lang/String;

    .line 185
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 187
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getHasPrimaryImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mb/android/model/entities/ImageType;->Primary:Lcom/mb/android/model/entities/ImageType;

    invoke-direct {p0, p1, v1, v2}, Lcom/mb/android/sync/data/LocalAssetHelper;->deleteImage(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 190
    :cond_0
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getHasLogo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mb/android/model/entities/ImageType;->Logo:Lcom/mb/android/model/entities/ImageType;

    invoke-direct {p0, p1, v1, v2}, Lcom/mb/android/sync/data/LocalAssetHelper;->deleteImage(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 193
    :cond_1
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getHasArtImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mb/android/model/entities/ImageType;->Art:Lcom/mb/android/model/entities/ImageType;

    invoke-direct {p0, p1, v1, v2}, Lcom/mb/android/sync/data/LocalAssetHelper;->deleteImage(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 196
    :cond_2
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getHasBanner()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mb/android/model/entities/ImageType;->Banner:Lcom/mb/android/model/entities/ImageType;

    invoke-direct {p0, p1, v1, v2}, Lcom/mb/android/sync/data/LocalAssetHelper;->deleteImage(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    .line 199
    :cond_3
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getHasThumb()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/ImageType;->Thumb:Lcom/mb/android/model/entities/ImageType;

    invoke-direct {p0, p1, v0, v1}, Lcom/mb/android/sync/data/LocalAssetHelper;->deleteImage(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/model/entities/ImageType;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getDirectoryPath(Lcom/mb/android/model/dto/BaseItemDto;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "episode"

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "game"

    const-string v6, "video"

    if-nez v4, :cond_b

    const-string v4, "series"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "season"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v4, "trailer"

    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Trailers"

    .line 46
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 47
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Videos"

    .line 49
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    const-string v4, "audio"

    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "musicalbum"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "musicartist"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const-string v4, "photo"

    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "photoalbum"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 59
    :cond_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "gamesystem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    const-string v4, "book"

    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_7
    const-string v4, "Books"

    .line 64
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    :goto_1
    const-string v4, "Games"

    .line 61
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    :goto_2
    const-string v4, "Photos"

    .line 57
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    :goto_3
    const-string v4, "Music"

    .line 53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    :goto_4
    const-string v4, "TV"

    .line 42
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_c
    :goto_5
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumArtist()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 69
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_d
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 74
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_e
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getSeasonName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 79
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_f
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbum()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 83
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_10
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getGameSystem()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 87
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getGameSystem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_11
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 91
    :cond_12
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getIsFolderItem()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 93
    :cond_13
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-virtual {v2, v1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    return-object p1
.end method

.method public getFileRepository()Lcom/mb/android/sync/data/AndroidFileRepository;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    return-object v0
.end method

.method public getImagePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "images"

    .line 114
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getLocalFileName(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p2

    .line 107
    :goto_0
    iget-object p1, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-virtual {p1, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->getValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLocalMetadataPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mb/android/sync/data/LocalAssetHelper;->getImagePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "##"

    .line 123
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 125
    iget-object p2, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p3, p3, p4}, Lcom/mb/android/sync/data/AndroidFileRepository;->getFullPath(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSubtitleSaveFileName(Lcom/mb/android/sync/data/database/LocalItem;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 130
    invoke-direct {p0, p2}, Lcom/mb/android/sync/data/LocalAssetHelper;->getNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 131
    iget-object v0, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-virtual {v0, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->getValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "."

    if-eqz p3, :cond_0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p4, :cond_1

    .line 138
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".foreign"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 141
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 143
    iget-object p3, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    iget-object p1, p1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/mb/android/sync/data/AndroidFileRepository;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object p3, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-virtual {p3, p1, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->combinePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeLocalFiles(Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 4

    .line 159
    iget-object v0, p1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    iget-object v1, p1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mb/android/sync/data/AndroidFileRepository;->deleteFile(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    iget-object v1, p1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mb/android/sync/data/AndroidFileRepository;->deleteEmptyParentFolders(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    iget-object v1, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/mb/android/sync/data/database/LocalItem;->LocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/sync/data/AndroidFileRepository;->removeMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {p1}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/dto/MediaSourceInfo;

    .line 167
    invoke-virtual {v1}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v1}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/model/entities/MediaStream;

    .line 169
    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 170
    iget-object v3, p0, Lcom/mb/android/sync/data/LocalAssetHelper;->fileRepository:Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-virtual {v2}, Lcom/mb/android/model/entities/MediaStream;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mb/android/sync/data/AndroidFileRepository;->deleteFile(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    invoke-direct {p0, p1}, Lcom/mb/android/sync/data/LocalAssetHelper;->removeImages(Lcom/mb/android/sync/data/database/LocalItem;)V

    return-void
.end method
