.class Lcom/mb/android/media/PlaybackManager$9;
.super Ljava/lang/Object;
.source "PlaybackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager;->queueItems(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/PlaybackManager;

.field final synthetic val$items:Ljava/lang/String;

.field final synthetic val$queueNext:Z


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;Z)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$9;->this$0:Lcom/mb/android/media/PlaybackManager;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$9;->val$items:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mb/android/media/PlaybackManager$9;->val$queueNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1243
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$9;->this$0:Lcom/mb/android/media/PlaybackManager;

    monitor-enter v0

    .line 1245
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$9;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$900(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/QueueManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$9;->val$items:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mb/android/media/QueueManager;->buildMetadataFromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1247
    iget-boolean v2, p0, Lcom/mb/android/media/PlaybackManager$9;->val$queueNext:Z

    if-eqz v2, :cond_0

    .line 1248
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$9;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v2}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mb/android/media/Playback;->queueItemsNext(Ljava/util/List;)V

    goto :goto_0

    .line 1250
    :cond_0
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$9;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v2}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mb/android/media/Playback;->queueItems(Ljava/util/List;)V

    .line 1252
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
