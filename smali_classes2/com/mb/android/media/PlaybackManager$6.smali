.class Lcom/mb/android/media/PlaybackManager$6;
.super Ljava/lang/Object;
.source "PlaybackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager;->playMediaPlaylist(Ljava/lang/String;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/PlaybackManager;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$items:Ljava/lang/String;

.field final synthetic val$startIndex:I


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$6;->this$0:Lcom/mb/android/media/PlaybackManager;

    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$6;->val$items:Ljava/lang/String;

    iput p3, p0, Lcom/mb/android/media/PlaybackManager$6;->val$startIndex:I

    iput-object p4, p0, Lcom/mb/android/media/PlaybackManager$6;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 715
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$6;->this$0:Lcom/mb/android/media/PlaybackManager;

    monitor-enter v0

    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$6;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$900(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/QueueManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$6;->val$items:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mb/android/media/QueueManager;->buildMetadataFromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 719
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$6;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v2}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v2

    iget v3, p0, Lcom/mb/android/media/PlaybackManager$6;->val$startIndex:I

    iget-object v4, p0, Lcom/mb/android/media/PlaybackManager$6;->val$extras:Landroid/os/Bundle;

    invoke-interface {v2, v1, v3, v4}, Lcom/mb/android/media/Playback;->play(Ljava/util/List;ILandroid/os/Bundle;)V

    .line 720
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
