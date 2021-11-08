.class Lcom/mb/android/media/QueueManager$1;
.super Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;
.source "QueueManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/QueueManager;->updateMetadata(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;Landroid/support/v4/media/MediaMetadataCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/QueueManager;

.field final synthetic val$metadata:Landroid/support/v4/media/MediaMetadataCompat;

.field final synthetic val$musicId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/media/QueueManager;Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/mb/android/media/QueueManager$1;->this$0:Lcom/mb/android/media/QueueManager;

    iput-object p2, p0, Lcom/mb/android/media/QueueManager$1;->val$metadata:Landroid/support/v4/media/MediaMetadataCompat;

    iput-object p3, p0, Lcom/mb/android/media/QueueManager$1;->val$musicId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetched(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 230
    iget-object p1, p0, Lcom/mb/android/media/QueueManager$1;->this$0:Lcom/mb/android/media/QueueManager;

    iget-object v0, p0, Lcom/mb/android/media/QueueManager$1;->val$metadata:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v1, p0, Lcom/mb/android/media/QueueManager$1;->val$musicId:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2, p3}, Lcom/mb/android/media/QueueManager;->access$000(Lcom/mb/android/media/QueueManager;Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method
