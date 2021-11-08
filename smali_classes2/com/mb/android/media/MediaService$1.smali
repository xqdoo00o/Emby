.class Lcom/mb/android/media/MediaService$1;
.super Ljava/lang/Object;
.source "MediaService.java"

# interfaces
.implements Lcom/mb/android/media/QueueManager$MetadataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/MediaService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/MediaService;


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaService;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/mb/android/media/MediaService$1;->this$0:Lcom/mb/android/media/MediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 4

    const/4 v0, 0x0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/media/MediaService$1;->this$0:Lcom/mb/android/media/MediaService;

    invoke-static {v1}, Lcom/mb/android/media/MediaService;->access$000(Lcom/mb/android/media/MediaService;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const-string v2, "QueueManager.MetadataUpdateListener.onMetadataChanged"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/mb/android/media/MediaService$1;->this$0:Lcom/mb/android/media/MediaService;

    invoke-static {v1}, Lcom/mb/android/media/MediaService;->access$100(Lcom/mb/android/media/MediaService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    iget-object v1, p0, Lcom/mb/android/media/MediaService$1;->this$0:Lcom/mb/android/media/MediaService;

    invoke-static {v1}, Lcom/mb/android/media/MediaService;->access$000(Lcom/mb/android/media/MediaService;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Error in MediaSession.setMetadata"

    invoke-interface {v1, v2, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onQueueUpdated(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/mb/android/media/MediaService$1;->this$0:Lcom/mb/android/media/MediaService;

    invoke-static {v0}, Lcom/mb/android/media/MediaService;->access$000(Lcom/mb/android/media/MediaService;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "QueueManager.MetadataUpdateListener.onQueueUpdated"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/mb/android/media/MediaService$1;->this$0:Lcom/mb/android/media/MediaService;

    invoke-static {v0}, Lcom/mb/android/media/MediaService;->access$100(Lcom/mb/android/media/MediaService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    if-eqz p1, :cond_0

    .line 160
    iget-object p2, p0, Lcom/mb/android/media/MediaService$1;->this$0:Lcom/mb/android/media/MediaService;

    invoke-static {p2}, Lcom/mb/android/media/MediaService;->access$100(Lcom/mb/android/media/MediaService;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueueTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
