.class Lcom/mb/android/media/BrowseTree$2;
.super Lcom/mb/android/apiinteraction/Response;
.source "BrowseTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/BrowseTree;->getChildren(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
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
.field final synthetic this$0:Lcom/mb/android/media/BrowseTree;

.field final synthetic val$cached:Z

.field final synthetic val$outerResponse:Lcom/mb/android/apiinteraction/Response;

.field final synthetic val$parentMediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/media/BrowseTree;Lcom/mb/android/apiinteraction/IResponse;ZLcom/mb/android/apiinteraction/Response;Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mb/android/media/BrowseTree$2;->this$0:Lcom/mb/android/media/BrowseTree;

    iput-boolean p3, p0, Lcom/mb/android/media/BrowseTree$2;->val$cached:Z

    iput-object p4, p0, Lcom/mb/android/media/BrowseTree$2;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    iput-object p5, p0, Lcom/mb/android/media/BrowseTree$2;->val$parentMediaId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/mb/android/apiinteraction/Response;-><init>(Lcom/mb/android/apiinteraction/IResponse;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/BrowseTree$2;->onResponse(Ljava/util/List;)V

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

    .line 97
    iget-boolean v0, p0, Lcom/mb/android/media/BrowseTree$2;->val$cached:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree$2;->val$outerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/BrowseTree$2;->this$0:Lcom/mb/android/media/BrowseTree;

    invoke-static {v0}, Lcom/mb/android/media/BrowseTree;->access$100(Lcom/mb/android/media/BrowseTree;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/BrowseTree$2;->val$parentMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
