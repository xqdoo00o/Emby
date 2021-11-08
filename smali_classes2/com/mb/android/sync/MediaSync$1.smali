.class Lcom/mb/android/sync/MediaSync$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/MediaSync;->reportNewMedia(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Lcom/mb/android/model/sync/SyncJobCreationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/MediaSync;

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$item:Lcom/mb/android/model/dto/BaseItemDto;

.field final synthetic val$localPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/mb/android/sync/MediaSync$1;->this$0:Lcom/mb/android/sync/MediaSync;

    iput-object p2, p0, Lcom/mb/android/sync/MediaSync$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p3, p0, Lcom/mb/android/sync/MediaSync$1;->val$item:Lcom/mb/android/model/dto/BaseItemDto;

    iput-object p4, p0, Lcom/mb/android/sync/MediaSync$1;->val$localPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method

.method private syncDataNoCallback()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$1;->this$0:Lcom/mb/android/sync/MediaSync;

    iget-object v1, p0, Lcom/mb/android/sync/MediaSync$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    new-instance v2, Lcom/mb/android/sync/MediaSync$1$1;

    invoke-direct {v2, p0}, Lcom/mb/android/sync/MediaSync$1$1;-><init>(Lcom/mb/android/sync/MediaSync$1;)V

    invoke-static {v0, v1, v2}, Lcom/mb/android/sync/MediaSync;->access$400(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$1;->this$0:Lcom/mb/android/sync/MediaSync;

    invoke-static {v0}, Lcom/mb/android/sync/MediaSync;->access$300(Lcom/mb/android/sync/MediaSync;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSync: Error in reportNewMedia"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0}, Lcom/mb/android/sync/MediaSync$1;->syncDataNoCallback()V

    return-void
.end method

.method public onResponse(Lcom/mb/android/model/sync/SyncJobCreationResult;)V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$1;->this$0:Lcom/mb/android/sync/MediaSync;

    iget-object v1, p0, Lcom/mb/android/sync/MediaSync$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v2, p0, Lcom/mb/android/sync/MediaSync$1;->val$item:Lcom/mb/android/model/dto/BaseItemDto;

    iget-object p1, p1, Lcom/mb/android/model/sync/SyncJobCreationResult;->Job:Lcom/mb/android/model/sync/SyncJob;

    iget-wide v3, p1, Lcom/mb/android/model/sync/SyncJob;->Id:J

    long-to-int v3, v3

    sget-object v4, Lcom/mb/android/sync/data/SyncJobStatus;->Completed:Lcom/mb/android/sync/data/SyncJobStatus;

    iget-object v6, p0, Lcom/mb/android/sync/MediaSync$1;->val$localPath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/mb/android/sync/MediaSync;->access$000(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;ILcom/mb/android/sync/data/SyncJobStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/mb/android/sync/data/database/LocalItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$1;->this$0:Lcom/mb/android/sync/MediaSync;

    iget-object v1, p0, Lcom/mb/android/sync/MediaSync$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v0, v1, p1}, Lcom/mb/android/sync/MediaSync;->access$100(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/data/database/LocalItem;)V

    .line 141
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync$1;->this$0:Lcom/mb/android/sync/MediaSync;

    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v1, p0, Lcom/mb/android/sync/MediaSync$1;->val$item:Lcom/mb/android/model/dto/BaseItemDto;

    invoke-static {p1, v0, v1}, Lcom/mb/android/sync/MediaSync;->access$200(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/dto/BaseItemDto;)V

    .line 142
    invoke-direct {p0}, Lcom/mb/android/sync/MediaSync$1;->syncDataNoCallback()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Lcom/mb/android/model/sync/SyncJobCreationResult;

    invoke-virtual {p0, p1}, Lcom/mb/android/sync/MediaSync$1;->onResponse(Lcom/mb/android/model/sync/SyncJobCreationResult;)V

    return-void
.end method
