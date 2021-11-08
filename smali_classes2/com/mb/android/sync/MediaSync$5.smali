.class Lcom/mb/android/sync/MediaSync$5;
.super Lcom/mb/android/apiinteraction/Response;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/MediaSync;->syncData(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/sync/ServerSync$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Lcom/mb/android/model/sync/SyncDataResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/MediaSync;

.field final synthetic val$callback:Lcom/mb/android/sync/ServerSync$Callback;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/mb/android/sync/MediaSync$5;->this$0:Lcom/mb/android/sync/MediaSync;

    iput-object p2, p0, Lcom/mb/android/sync/MediaSync$5;->val$callback:Lcom/mb/android/sync/ServerSync$Callback;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$5;->this$0:Lcom/mb/android/sync/MediaSync;

    invoke-static {v0}, Lcom/mb/android/sync/MediaSync;->access$300(Lcom/mb/android/sync/MediaSync;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSync: Error in syncData"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 564
    iget-object p1, p0, Lcom/mb/android/sync/MediaSync$5;->val$callback:Lcom/mb/android/sync/ServerSync$Callback;

    invoke-interface {p1}, Lcom/mb/android/sync/ServerSync$Callback;->onFailure()V

    return-void
.end method

.method public onResponse(Lcom/mb/android/model/sync/SyncDataResponse;)V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$5;->this$0:Lcom/mb/android/sync/MediaSync;

    invoke-static {v0}, Lcom/mb/android/sync/MediaSync;->access$300(Lcom/mb/android/sync/MediaSync;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaSync: Exit syncData"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/mb/android/sync/MediaSync$5;->this$0:Lcom/mb/android/sync/MediaSync;

    iget-object v1, p0, Lcom/mb/android/sync/MediaSync$5;->val$callback:Lcom/mb/android/sync/ServerSync$Callback;

    invoke-static {v0, p1, v1}, Lcom/mb/android/sync/MediaSync;->access$800(Lcom/mb/android/sync/MediaSync;Lcom/mb/android/model/sync/SyncDataResponse;Lcom/mb/android/sync/ServerSync$Callback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 552
    check-cast p1, Lcom/mb/android/model/sync/SyncDataResponse;

    invoke-virtual {p0, p1}, Lcom/mb/android/sync/MediaSync$5;->onResponse(Lcom/mb/android/model/sync/SyncDataResponse;)V

    return-void
.end method
