.class public Lcom/mb/android/sync/data/database/Converters;
.super Ljava/lang/Object;
.source "Converters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateToLong(Ljava/util/Date;)Ljava/lang/Long;
    .locals 2
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .line 30
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static fromInt(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;
    .locals 0
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .line 15
    invoke-static {p0}, Lcom/mb/android/sync/data/SyncJobStatus;->fromValue(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object p0

    return-object p0
.end method

.method public static fromLong(Ljava/lang/Long;)Ljava/util/Date;
    .locals 3
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .line 25
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static itemFromJson(Ljava/lang/String;)Lcom/mb/android/model/dto/BaseItemDto;
    .locals 2
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .line 35
    new-instance v0, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    .line 36
    const-class v1, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-interface {v0, p0, v1}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mb/android/model/dto/BaseItemDto;

    return-object p0
.end method

.method public static itemToJson(Lcom/mb/android/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .line 41
    new-instance v0, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    .line 42
    invoke-interface {v0, p0}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static syncJobStatusToInteger(Lcom/mb/android/sync/data/SyncJobStatus;)Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    if-nez p0, :cond_0

    .line 20
    sget-object p0, Lcom/mb/android/sync/data/SyncJobStatus;->None:Lcom/mb/android/sync/data/SyncJobStatus;

    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
