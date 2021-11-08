.class Lcom/mb/android/sync/MediaSync$2;
.super Lcom/mb/android/apiinteraction/Response;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/MediaSync;->getNewMedia(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "[",
        "Lcom/mb/android/model/sync/SyncJobItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/MediaSync;

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$callback:Lcom/mb/android/sync/ServerSync$Callback;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/mb/android/sync/MediaSync$2;->this$0:Lcom/mb/android/sync/MediaSync;

    iput-object p2, p0, Lcom/mb/android/sync/MediaSync$2;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p3, p0, Lcom/mb/android/sync/MediaSync$2;->val$callback:Lcom/mb/android/sync/ServerSync$Callback;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$2;->this$0:Lcom/mb/android/sync/MediaSync;

    invoke-static {v0}, Lcom/mb/android/sync/MediaSync;->access$300(Lcom/mb/android/sync/MediaSync;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSync: Error in getNewMedia"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync$2;->this$0:Lcom/mb/android/sync/MediaSync;

    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$2;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v1, p0, Lcom/mb/android/sync/MediaSync$2;->val$callback:Lcom/mb/android/sync/ServerSync$Callback;

    invoke-static {p1, v0, v1}, Lcom/mb/android/sync/MediaSync;->access$400(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 166
    check-cast p1, [Lcom/mb/android/model/sync/SyncJobItem;

    invoke-virtual {p0, p1}, Lcom/mb/android/sync/MediaSync$2;->onResponse([Lcom/mb/android/model/sync/SyncJobItem;)V

    return-void
.end method

.method public onResponse([Lcom/mb/android/model/sync/SyncJobItem;)V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$2;->this$0:Lcom/mb/android/sync/MediaSync;

    invoke-static {v0}, Lcom/mb/android/sync/MediaSync;->access$300(Lcom/mb/android/sync/MediaSync;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MediaSync: getReadySyncItems returned %d items"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v1, p1, v3

    .line 171
    iget-object v2, p0, Lcom/mb/android/sync/MediaSync$2;->this$0:Lcom/mb/android/sync/MediaSync;

    iget-object v4, p0, Lcom/mb/android/sync/MediaSync$2;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v2, v1, v4}, Lcom/mb/android/sync/MediaSync;->access$500(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/model/sync/SyncJobItem;Lcom/mb/android/apiinteraction/ApiClient;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync$2;->this$0:Lcom/mb/android/sync/MediaSync;

    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$2;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v1, p0, Lcom/mb/android/sync/MediaSync$2;->val$callback:Lcom/mb/android/sync/ServerSync$Callback;

    invoke-static {p1, v0, v1}, Lcom/mb/android/sync/MediaSync;->access$400(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V

    return-void
.end method
