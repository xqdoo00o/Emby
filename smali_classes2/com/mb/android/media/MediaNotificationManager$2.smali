.class Lcom/mb/android/media/MediaNotificationManager$2;
.super Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;
.source "MediaNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/MediaNotificationManager;->fetchBitmapFromURLAsync(Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/MediaNotificationManager;

.field final synthetic val$builder:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaNotificationManager;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/mb/android/media/MediaNotificationManager$2;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    iput-object p2, p0, Lcom/mb/android/media/MediaNotificationManager$2;->val$builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/android/AlbumArtCache$FetchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetched(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 522
    iget-object p3, p0, Lcom/mb/android/media/MediaNotificationManager$2;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {p3}, Lcom/mb/android/media/MediaNotificationManager;->access$700(Lcom/mb/android/media/MediaNotificationManager;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/mb/android/media/MediaNotificationManager$2;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {p3}, Lcom/mb/android/media/MediaNotificationManager;->access$700(Lcom/mb/android/media/MediaNotificationManager;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/mb/android/media/MediaNotificationManager$2;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    .line 523
    invoke-static {p3}, Lcom/mb/android/media/MediaNotificationManager;->access$700(Lcom/mb/android/media/MediaNotificationManager;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 526
    iget-object p3, p0, Lcom/mb/android/media/MediaNotificationManager$2;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {p3}, Lcom/mb/android/media/MediaNotificationManager;->access$600(Lcom/mb/android/media/MediaNotificationManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "fetchBitmapFromURLAsync: set bitmap to %s"

    invoke-interface {p3, p1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager$2;->val$builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 528
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager$2;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    iget-object p2, p0, Lcom/mb/android/media/MediaNotificationManager$2;->val$builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {p1, p2}, Lcom/mb/android/media/MediaNotificationManager;->access$900(Lcom/mb/android/media/MediaNotificationManager;Landroidx/core/app/NotificationCompat$Builder;)I

    .line 531
    :try_start_0
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager$2;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {p1}, Lcom/mb/android/media/MediaNotificationManager;->access$300(Lcom/mb/android/media/MediaNotificationManager;)Landroid/app/NotificationManager;

    move-result-object p1

    const/16 p2, 0x19c

    iget-object p3, p0, Lcom/mb/android/media/MediaNotificationManager$2;->val$builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 535
    iget-object p2, p0, Lcom/mb/android/media/MediaNotificationManager$2;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {p2}, Lcom/mb/android/media/MediaNotificationManager;->access$600(Lcom/mb/android/media/MediaNotificationManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "Error in mNotificationManager.notify"

    invoke-interface {p2, v0, p1, p3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
