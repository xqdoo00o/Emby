.class public Lcom/mb/android/sync/data/database/LocalItem;
.super Ljava/lang/Object;
.source "LocalItem.java"


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            unique = true
            value = {
                "ServerId",
                "ItemId"
            }
        .end subannotation,
        .subannotation Landroidx/room/Index;
            value = {
                "ServerId",
                "Type"
            }
        .end subannotation,
        .subannotation Landroidx/room/Index;
            value = {
                "ServerId",
                "ParentId"
            }
        .end subannotation
    }
    tableName = "local_item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/sync/data/database/LocalItem$ItemIdPathPair;
    }
.end annotation


# instance fields
.field private AlbumId:Ljava/lang/String;

.field private DateCreated:Ljava/util/Date;

.field public Id:J
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private IndexNumber:Ljava/lang/Integer;

.field private IsFolder:Ljava/lang/Boolean;

.field private Item:Lcom/mb/android/model/dto/BaseItemDto;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field public ItemId:Ljava/lang/String;

.field ItemJson:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "Item"
    .end annotation
.end field

.field public LocalPath:Ljava/lang/String;

.field private MediaType:Ljava/lang/String;

.field private ParentId:Ljava/lang/String;

.field private ParentIndexNumber:Ljava/lang/Integer;

.field private SeasonId:Ljava/lang/String;

.field private SeriesId:Ljava/lang/String;

.field public ServerId:Ljava/lang/String;

.field private SortName:Ljava/lang/String;

.field public Status:Lcom/mb/android/sync/data/SyncJobStatus;

.field public SyncGuid:Ljava/lang/Integer;

.field public SyncJobItemId:Ljava/lang/Integer;

.field private Type:Ljava/lang/String;

.field private transient jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->AlbumId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->AlbumId:Ljava/lang/String;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->AlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public getDateCreated()Ljava/util/Date;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->DateCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->DateCreated:Ljava/util/Date;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->DateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->IndexNumber:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->IndexNumber:Ljava/lang/Integer;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->IndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsFolder()Ljava/lang/Boolean;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->IsFolder:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->IsFolder:Ljava/lang/Boolean;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->IsFolder:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItem()Lcom/mb/android/model/dto/BaseItemDto;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    iget-object v1, p0, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    const-class v2, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-interface {v0, v1, v2}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/dto/BaseItemDto;

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->MediaType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->MediaType:Ljava/lang/String;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->MediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->ParentId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->ParentId:Ljava/lang/String;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->ParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->ParentIndexNumber:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->ParentIndexNumber:Ljava/lang/Integer;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->ParentIndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeasonId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->SeasonId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getSeasonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->SeasonId:Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->SeasonId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->SeriesId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->SeriesId:Ljava/lang/String;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->SeriesId:Ljava/lang/String;

    return-object v0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->SortName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getSortName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->SortName:Ljava/lang/String;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->SortName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Type:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Type:Ljava/lang/String;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Type:Ljava/lang/String;

    return-object v0
.end method

.method saveLibraryItem()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/mb/android/sync/data/database/LocalItem;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v1, v0}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->AlbumId:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setAlbumId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDateCreated(Ljava/util/Date;)V
    .locals 1

    .line 176
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->DateCreated:Ljava/util/Date;

    .line 177
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setDateCreated(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public setIndexNumber(Ljava/lang/Integer;)V
    .locals 1

    .line 190
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->IndexNumber:Ljava/lang/Integer;

    .line 191
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setIndexNumber(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public setIsFolder(Ljava/lang/Boolean;)V
    .locals 1

    .line 162
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->IsFolder:Ljava/lang/Boolean;

    .line 163
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setIsFolder(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public setItem(Lcom/mb/android/model/dto/BaseItemDto;)V
    .locals 1

    .line 47
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    .line 48
    iget-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-interface {p1, v0}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->ItemJson:Ljava/lang/String;

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 1

    .line 134
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->MediaType:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setMediaType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->ParentId:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setParentId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setParentIndexNumber(Ljava/lang/Integer;)V
    .locals 1

    .line 204
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->ParentIndexNumber:Ljava/lang/Integer;

    .line 205
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setParentIndexNumber(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public setSeasonId(Ljava/lang/String;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->SeasonId:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setSeasonId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSeriesId(Ljava/lang/String;)V
    .locals 1

    .line 120
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->SeriesId:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setSeriesId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSortName(Ljava/lang/String;)V
    .locals 1

    .line 148
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->SortName:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setSortName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/mb/android/sync/data/database/LocalItem;->Type:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/mb/android/sync/data/database/LocalItem;->Item:Lcom/mb/android/model/dto/BaseItemDto;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lcom/mb/android/model/dto/BaseItemDto;->setType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
