.class Lcom/mb/android/media/StreamRecord$2;
.super Lcom/mb/android/apiinteraction/Response;
.source "StreamRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/StreamRecord;->afterDetermineServerUrl(Lcom/mb/android/apiinteraction/ApiClient;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Lcom/mb/android/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/StreamRecord;

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$tmpFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/mb/android/media/StreamRecord;Ljava/io/File;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    iput-object p2, p0, Lcom/mb/android/media/StreamRecord$2;->val$tmpFile:Ljava/io/File;

    iput-object p3, p0, Lcom/mb/android/media/StreamRecord$2;->val$filename:Ljava/lang/String;

    iput-object p4, p0, Lcom/mb/android/media/StreamRecord$2;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    invoke-static {v0}, Lcom/mb/android/media/StreamRecord;->access$100(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Stream record: Failed to get library item from server."

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 214
    iget-object p1, p0, Lcom/mb/android/media/StreamRecord$2;->val$tmpFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onResponse(Lcom/mb/android/model/dto/BaseItemDto;)V
    .locals 10

    if-nez p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mb/android/media/StreamRecord$2;->val$tmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    invoke-static {v0}, Lcom/mb/android/media/StreamRecord;->access$200(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/sync/data/LocalAssetHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/data/LocalAssetHelper;->getDirectoryPath(Lcom/mb/android/model/dto/BaseItemDto;)Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    invoke-static {v1}, Lcom/mb/android/media/StreamRecord;->access$200(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/sync/data/LocalAssetHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/mb/android/media/StreamRecord$2;->val$filename:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/mb/android/sync/data/LocalAssetHelper;->getLocalFileName(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "##"

    .line 190
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    invoke-static {v1}, Lcom/mb/android/media/StreamRecord;->access$300(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/sync/data/AndroidFileRepository;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/mb/android/sync/data/AndroidFileRepository;->getFullPath(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 194
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 195
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 197
    :cond_1
    iget-object v4, p0, Lcom/mb/android/media/StreamRecord$2;->val$tmpFile:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    invoke-static {v4}, Lcom/mb/android/media/StreamRecord;->access$100(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v5, "Could not move temp file to %s. Attempting to copy."

    invoke-interface {v4, v5, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v2, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    iget-object v4, p0, Lcom/mb/android/media/StreamRecord$2;->val$tmpFile:Ljava/io/File;

    invoke-static {v2, v4, v1}, Lcom/mb/android/media/StreamRecord;->access$400(Lcom/mb/android/media/StreamRecord;Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 202
    iget-object p1, p0, Lcom/mb/android/media/StreamRecord$2;->val$tmpFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    invoke-static {v1}, Lcom/mb/android/media/StreamRecord;->access$100(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Stream record finished successfully. Reporting download to server..."

    invoke-interface {v1, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    new-instance v1, Lcom/mb/android/sync/MediaSync;

    iget-object v2, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    invoke-static {v2}, Lcom/mb/android/media/StreamRecord;->access$500(Lcom/mb/android/media/StreamRecord;)Landroid/content/Context;

    move-result-object v5

    iget-object v2, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    invoke-static {v2}, Lcom/mb/android/media/StreamRecord;->access$100(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v6

    iget-object v7, p0, Lcom/mb/android/media/StreamRecord$2;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v2, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    invoke-static {v2}, Lcom/mb/android/media/StreamRecord;->access$600(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    move-result-object v8

    iget-object v2, p0, Lcom/mb/android/media/StreamRecord$2;->this$0:Lcom/mb/android/media/StreamRecord;

    invoke-static {v2}, Lcom/mb/android/media/StreamRecord;->access$200(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/sync/data/LocalAssetHelper;

    move-result-object v9

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/mb/android/sync/MediaSync;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/data/database/AndroidLocalDatabase;Lcom/mb/android/sync/data/LocalAssetHelper;)V

    invoke-virtual {v1, p1, v0}, Lcom/mb/android/sync/MediaSync;->reportItemSynced(Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Lcom/mb/android/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/StreamRecord$2;->onResponse(Lcom/mb/android/model/dto/BaseItemDto;)V

    return-void
.end method
