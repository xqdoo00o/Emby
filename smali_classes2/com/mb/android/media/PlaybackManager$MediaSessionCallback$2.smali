.class Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$2;
.super Lcom/mb/android/apiinteraction/Response;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->handleFavoriteAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Lcom/mb/android/model/dto/UserItemDataDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;


# direct methods
.method constructor <init>(Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$2;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 980
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$2;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->access$1500(Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CUSTOM_ACTION_FAVORITE: Failed to favorite item"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/mb/android/model/dto/UserItemDataDto;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$2;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    iget-object v0, v0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$900(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/QueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/media/QueueManager;->getCurrentMusic()Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 959
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.media.metadata.USER_RATING"

    if-eqz v1, :cond_2

    .line 960
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 962
    invoke-virtual {p1}, Lcom/mb/android/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result p1

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object p1

    .line 961
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 966
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 967
    invoke-virtual {p1}, Lcom/mb/android/model/dto/UserItemDataDto;->getIsFavorite()Z

    move-result p1

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 968
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$2;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    iget-object p1, p1, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {p1}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object p1

    invoke-interface {p1}, Lcom/mb/android/media/Playback;->getCurrentItem()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/mb/android/media/MediaSource;->descriptionFromMetadata(Landroid/support/v4/media/MediaMetadataCompat;Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    .line 969
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 972
    :goto_0
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$2;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    iget-object p1, p1, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {p1}, Lcom/mb/android/media/PlaybackManager;->access$900(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/QueueManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mb/android/media/QueueManager;->setCurrentMedia(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)V

    .line 974
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$2;->this$1:Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;

    iget-object p1, p1, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {p1}, Lcom/mb/android/media/PlaybackManager;->access$700(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mb.android.ACTION_FAVORITES_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 949
    check-cast p1, Lcom/mb/android/model/dto/UserItemDataDto;

    invoke-virtual {p0, p1}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$2;->onResponse(Lcom/mb/android/model/dto/UserItemDataDto;)V

    return-void
.end method
