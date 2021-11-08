.class public Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;
.super Ljava/lang/Object;
.source "AndroidLocalDatabaseBridge.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final javascriptObj:Lcom/mb/android/webviews/ISendJavaScript;

.field private final jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private final localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

.field private final logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/model/serialization/IJsonSerializer;Lcom/mb/android/webviews/ISendJavaScript;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 28
    iput-object p3, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    .line 29
    iput-object p4, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->javascriptObj:Lcom/mb/android/webviews/ISendJavaScript;

    .line 31
    new-instance p3, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;

    invoke-direct {p3, p1, p2}, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object p3, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    return-void
.end method


# virtual methods
.method public addUserAction(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AndroidLocalDatabaseBridge: addUserAction"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v2, Lcom/mb/android/sync/data/database/OfflineAction;

    invoke-interface {v0, p1, v2}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mb/android/sync/data/database/OfflineAction;

    .line 42
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->insertOfflineAction(Lcom/mb/android/sync/data/database/OfflineAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AndroidLocalDatabaseBridge: addUserAction failed"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public deleteLibraryItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "AndroidLocalDatabaseBridge: Deleting item with id %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance v0, Lcom/mb/android/sync/data/LocalAssetHelper;

    iget-object v1, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mb/android/sync/data/LocalAssetHelper;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v2, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getChildItemIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v2, p1, v1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItem(Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v0, v2}, Lcom/mb/android/sync/data/LocalAssetHelper;->removeLocalFiles(Lcom/mb/android/sync/data/database/LocalItem;)V

    .line 118
    iget-object v2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v2, p1, v1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->deleteLocalItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAllLibraryItems(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    iget-object v1, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v1, p1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getAllLocalItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLibraryItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItem(Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {p2, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getLibraryItemPathsByIds(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v1, [Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItemIdAndPaths(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {p2, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLibraryItemTypes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLibraryItemTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v0, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLibraryItems(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;

    invoke-interface {v1, p2, v2}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;

    .line 131
    iget-object v1, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v1, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItemsByQuery(Ljava/lang/String;Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;)Lcom/mb/android/sync/data/database/AndroidLocalDatabase$GetLibraryItemsResponse;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {p2, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    iget-object p2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Error in getLibraryItems"

    invoke-interface {p2, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string p1, ""

    .line 139
    :goto_0
    iget-object p2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->javascriptObj:Lcom/mb/android/webviews/ISendJavaScript;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "if(window.getLibraryItemsCallback){window.getLibraryItemsCallback(%s);}"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mb/android/webviews/ISendJavaScript;->sendJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public getLibraryItemsByIds(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v1, [Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItemsByIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 80
    iget-object p2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {p2, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLibraryItemsByType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v1, [Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->getLocalItemsByType(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {p2, p1}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateLibraryItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 95
    :try_start_0
    iget-object p1, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class p2, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mb/android/sync/data/database/LocalItem;

    .line 97
    iget-object p2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->localDatabase:Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    invoke-virtual {p2, p1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->updateLocalItem(Lcom/mb/android/sync/data/database/LocalItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    iget-object p2, p0, Lcom/mb/android/sync/data/AndroidLocalDatabaseBridge;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "AndroidLocalDatabaseBridge: updateLibraryItem failed"

    invoke-interface {p2, v0, p1, p3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
