.class Lcom/mb/android/download/exo/ExoDownloadTracker$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "ExoDownloadTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/download/exo/ExoDownloadTracker;->lambda$onSuccessfulDownload$0(Lcom/google/android/exoplayer2/offline/Download;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/download/exo/ExoDownloadTracker;

.field final synthetic val$localItem:Lcom/mb/android/sync/data/database/LocalItem;


# direct methods
.method constructor <init>(Lcom/mb/android/download/exo/ExoDownloadTracker;Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker$1;->this$0:Lcom/mb/android/download/exo/ExoDownloadTracker;

    iput-object p2, p0, Lcom/mb/android/download/exo/ExoDownloadTracker$1;->val$localItem:Lcom/mb/android/sync/data/database/LocalItem;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 128
    iget-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker$1;->this$0:Lcom/mb/android/download/exo/ExoDownloadTracker;

    invoke-static {p1}, Lcom/mb/android/download/exo/ExoDownloadTracker;->access$000(Lcom/mb/android/download/exo/ExoDownloadTracker;)Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker$1;->val$localItem:Lcom/mb/android/sync/data/database/LocalItem;

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->CompletedWithError:Lcom/mb/android/sync/data/SyncJobStatus;

    invoke-virtual {p1, v0, v1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->updateSyncStatusForItem(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/sync/data/SyncJobStatus;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mb/android/download/exo/ExoDownloadTracker$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 123
    iget-object p1, p0, Lcom/mb/android/download/exo/ExoDownloadTracker$1;->this$0:Lcom/mb/android/download/exo/ExoDownloadTracker;

    invoke-static {p1}, Lcom/mb/android/download/exo/ExoDownloadTracker;->access$000(Lcom/mb/android/download/exo/ExoDownloadTracker;)Lcom/mb/android/sync/data/database/AndroidLocalDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/mb/android/download/exo/ExoDownloadTracker$1;->val$localItem:Lcom/mb/android/sync/data/database/LocalItem;

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->Completed:Lcom/mb/android/sync/data/SyncJobStatus;

    invoke-virtual {p1, v0, v1}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->updateSyncStatusForItem(Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/sync/data/SyncJobStatus;)V

    return-void
.end method
