.class public Lcom/mb/android/sync/CameraRoll;
.super Ljava/lang/Object;
.source "CameraRoll.java"


# instance fields
.field private context:Landroid/content/Context;

.field private json:Lcom/mb/android/model/serialization/IJsonSerializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iput-object v0, p0, Lcom/mb/android/sync/CameraRoll;->json:Lcom/mb/android/model/serialization/IJsonSerializer;

    .line 29
    iput-object p1, p0, Lcom/mb/android/sync/CameraRoll;->context:Landroid/content/Context;

    return-void
.end method

.method private getLocalMedia(Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v4, p2

    const-string v5, "_id"

    const-string v6, "bucket_display_name"

    const-string v7, "datetaken"

    const-string v8, "mime_type"

    const-string v9, "title"

    const-string v10, "_display_name"

    const-string v11, "_size"

    const-string v12, "_data"

    .line 102
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_3

    .line 115
    array-length v0, v4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "bucket_id=?"

    goto :goto_1

    .line 118
    :cond_0
    array-length v0, v4

    if-lez v0, :cond_2

    const-string v0, "bucket_id IN (?"

    .line 120
    :goto_0
    array-length v3, v4

    if-ge v1, v3, :cond_1

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move-object/from16 v6, p0

    move-object v3, v0

    .line 131
    iget-object v0, v6, Lcom/mb/android/sync/CameraRoll;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "bucket_display_name"

    .line 149
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "datetaken"

    .line 152
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "_id"

    .line 155
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    .line 158
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v7, "_display_name"

    .line 161
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "mime_type"

    .line 164
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "_data"

    .line 167
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "_size"

    .line 170
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 175
    :goto_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 176
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 177
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 178
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 179
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 180
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 181
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 p2, v2

    move/from16 v16, v3

    .line 182
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move/from16 v17, v4

    move/from16 v18, v5

    .line 184
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v12, p1

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 186
    new-instance v5, Lcom/mb/android/model/devices/LocalFileInfo;

    invoke-direct {v5}, Lcom/mb/android/model/devices/LocalFileInfo;-><init>()V

    .line 188
    invoke-virtual {v5, v11}, Lcom/mb/android/model/devices/LocalFileInfo;->setAlbum(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v5, v15}, Lcom/mb/android/model/devices/LocalFileInfo;->setId(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v5, v4}, Lcom/mb/android/model/devices/LocalFileInfo;->setUri(Landroid/net/Uri;)V

    .line 191
    invoke-virtual {v5, v14}, Lcom/mb/android/model/devices/LocalFileInfo;->setMimeType(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v5, v13}, Lcom/mb/android/model/devices/LocalFileInfo;->setName(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v5, v2, v3}, Lcom/mb/android/model/devices/LocalFileInfo;->setSize(J)V

    .line 195
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v2, p2

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    goto :goto_2

    .line 201
    :cond_5
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method


# virtual methods
.method public getBuckets(Landroid/net/Uri;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/mb/android/sync/data/AndroidFileRepository;->supportsPublicDownloads()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 70
    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mb/android/sync/CameraRoll;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "owner_package_name !=? OR owner_package_name IS NULL"

    move-object v5, v0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v5, v1

    move-object v6, v5

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/mb/android/sync/CameraRoll;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "bucket_display_name"

    const-string v1, "bucket_id"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 81
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 86
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 90
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getLocalPhotos()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mb/android/sync/CameraRoll;->getLocalMedia(Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPhotos([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/mb/android/sync/CameraRoll;->getLocalMedia(Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getLocalVideos()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mb/android/sync/CameraRoll;->getLocalMedia(Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLocalVideos([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/mb/android/sync/CameraRoll;->getLocalMedia(Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMediaBuckets()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/mb/android/sync/CameraRoll;->getBuckets(Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 52
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/mb/android/sync/CameraRoll;->getBuckets(Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 55
    new-instance v3, Lcom/mb/android/model/dto/NameIdPair;

    invoke-direct {v3}, Lcom/mb/android/model/dto/NameIdPair;-><init>()V

    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mb/android/model/dto/NameIdPair;->setId(Ljava/lang/String;)V

    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/mb/android/model/dto/NameIdPair;->setName(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/CameraRoll;->json:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v0, v1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
