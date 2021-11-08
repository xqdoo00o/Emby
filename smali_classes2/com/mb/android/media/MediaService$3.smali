.class Lcom/mb/android/media/MediaService$3;
.super Lcom/mb/android/media/MediaSource$SearchResultCallback;
.source "MediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/MediaService;->onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/MediaService;

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

.field final synthetic val$resultsSent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaService;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/mb/android/media/MediaService$3;->this$0:Lcom/mb/android/media/MediaService;

    iput-object p2, p0, Lcom/mb/android/media/MediaService$3;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p3, p0, Lcom/mb/android/media/MediaService$3;->val$resultsSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/mb/android/media/MediaService$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-direct {p0}, Lcom/mb/android/media/MediaSource$SearchResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onAllUpdated(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    iget-object v1, p0, Lcom/mb/android/media/MediaService$3;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {v1, p4}, Lcom/mb/android/media/MediaSource;->convertToMetadataList(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "android.media.browse.CONTENT_STYLE_GROUP_TITLE_HINT"

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaMetadataCompat;

    .line 569
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "Playlists"

    .line 570
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {v1, v4}, Lcom/mb/android/media/MediaSource;->descriptionFromMetadata(Landroid/support/v4/media/MediaMetadataCompat;Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    .line 572
    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v3, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 574
    :cond_0
    iget-object p4, p0, Lcom/mb/android/media/MediaService$3;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p4, p2}, Lcom/mb/android/media/MediaSource;->convertToMetadataList(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/support/v4/media/MediaMetadataCompat;

    .line 575
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "Artists"

    .line 576
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {p4, v1}, Lcom/mb/android/media/MediaSource;->descriptionFromMetadata(Landroid/support/v4/media/MediaMetadataCompat;Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p4

    .line 578
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v1, p4, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 580
    :cond_1
    iget-object p2, p0, Lcom/mb/android/media/MediaService$3;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p2, p3}, Lcom/mb/android/media/MediaSource;->convertToMetadataList(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/media/MediaMetadataCompat;

    .line 581
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Albums"

    .line 582
    invoke-virtual {p4, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static {p3, p4}, Lcom/mb/android/media/MediaSource;->descriptionFromMetadata(Landroid/support/v4/media/MediaMetadataCompat;Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p3

    .line 584
    new-instance p4, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {p4, p3, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 586
    :cond_2
    iget-object p2, p0, Lcom/mb/android/media/MediaService$3;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p2, p1}, Lcom/mb/android/media/MediaSource;->convertToMetadataList(Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/MediaMetadataCompat;

    .line 587
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "Songs"

    .line 588
    invoke-virtual {p3, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {p2, p3}, Lcom/mb/android/media/MediaSource;->descriptionFromMetadata(Landroid/support/v4/media/MediaMetadataCompat;Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p2

    .line 590
    new-instance p3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    const/4 p4, 0x2

    invoke-direct {p3, p2, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 592
    :cond_3
    iget-object p1, p0, Lcom/mb/android/media/MediaService$3;->val$resultsSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 593
    iget-object p1, p0, Lcom/mb/android/media/MediaService$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method

.method onError(Ljava/lang/Exception;)V
    .locals 1

    .line 597
    iget-object p1, p0, Lcom/mb/android/media/MediaService$3;->val$resultsSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 598
    iget-object p1, p0, Lcom/mb/android/media/MediaService$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method
