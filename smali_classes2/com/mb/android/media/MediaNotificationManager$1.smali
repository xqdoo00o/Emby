.class Lcom/mb/android/media/MediaNotificationManager$1;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/MediaNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/MediaNotificationManager;


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaNotificationManager;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {v0, p1}, Lcom/mb/android/media/MediaNotificationManager;->access$702(Lcom/mb/android/media/MediaNotificationManager;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaMetadataCompat;

    .line 326
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {p1}, Lcom/mb/android/media/MediaNotificationManager;->access$600(Lcom/mb/android/media/MediaNotificationManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Received new metadata"

    invoke-interface {p1, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {p1}, Lcom/mb/android/media/MediaNotificationManager;->access$200(Lcom/mb/android/media/MediaNotificationManager;)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {v1}, Lcom/mb/android/media/MediaNotificationManager;->access$300(Lcom/mb/android/media/MediaNotificationManager;)Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x19c

    invoke-virtual {v1, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 333
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {v1}, Lcom/mb/android/media/MediaNotificationManager;->access$600(Lcom/mb/android/media/MediaNotificationManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Error in onMetadataChanged"

    invoke-interface {v1, v2, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 4
    .param p1    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 298
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {v0, p1}, Lcom/mb/android/media/MediaNotificationManager;->access$102(Lcom/mb/android/media/MediaNotificationManager;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 v0, 0x0

    .line 303
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {v1}, Lcom/mb/android/media/MediaNotificationManager;->access$200(Lcom/mb/android/media/MediaNotificationManager;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 308
    iget-object v2, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {v2}, Lcom/mb/android/media/MediaNotificationManager;->access$300(Lcom/mb/android/media/MediaNotificationManager;)Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v3, 0x19c

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 309
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 310
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {p1, v1}, Lcom/mb/android/media/MediaNotificationManager;->access$400(Lcom/mb/android/media/MediaNotificationManager;Landroid/app/Notification;)V

    goto :goto_1

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {p1, v0}, Lcom/mb/android/media/MediaNotificationManager;->access$500(Lcom/mb/android/media/MediaNotificationManager;Z)V

    goto :goto_1

    .line 304
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-virtual {p1}, Lcom/mb/android/media/MediaNotificationManager;->stopNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 318
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {v1}, Lcom/mb/android/media/MediaNotificationManager;->access$600(Lcom/mb/android/media/MediaNotificationManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Error in onPlaybackStateChanged"

    invoke-interface {v1, v2, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 4

    .line 340
    invoke-super {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {v0}, Lcom/mb/android/media/MediaNotificationManager;->access$800(Lcom/mb/android/media/MediaNotificationManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 346
    iget-object v1, p0, Lcom/mb/android/media/MediaNotificationManager$1;->this$0:Lcom/mb/android/media/MediaNotificationManager;

    invoke-static {v1}, Lcom/mb/android/media/MediaNotificationManager;->access$600(Lcom/mb/android/media/MediaNotificationManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error in updateSessionToken"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
