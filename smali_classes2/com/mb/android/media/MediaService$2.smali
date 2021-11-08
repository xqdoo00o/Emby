.class Lcom/mb/android/media/MediaService$2;
.super Lcom/mb/android/apiinteraction/Response;
.source "MediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/MediaService;->onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Ljava/util/List<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/MediaService;

.field final synthetic val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

.field final synthetic val$resultsSent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaService;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/mb/android/media/MediaService$2;->this$0:Lcom/mb/android/media/MediaService;

    iput-object p2, p0, Lcom/mb/android/media/MediaService$2;->val$resultsSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/mb/android/media/MediaService$2;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 518
    iget-object p1, p0, Lcom/mb/android/media/MediaService$2;->val$resultsSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 521
    :try_start_0
    iget-object p1, p0, Lcom/mb/android/media/MediaService$2;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 509
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/MediaService$2;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/mb/android/media/MediaService$2;->val$resultsSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 513
    iget-object v0, p0, Lcom/mb/android/media/MediaService$2;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-virtual {v0, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method
