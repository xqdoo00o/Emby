.class Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/PlaybackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field private logger:Lcom/mb/android/model/logging/ILogger;

.field final synthetic this$0:Lcom/mb/android/media/PlaybackManager;


# direct methods
.method private constructor <init>(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    .line 759
    iput-object p2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->logger:Lcom/mb/android/model/logging/ILogger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/PlaybackManager$1;)V
    .locals 0

    .line 754
    invoke-direct {p0, p1, p2}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;-><init>(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/model/logging/ILogger;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method private handleFavoriteAction()V
    .locals 6

    .line 930
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->getCurrentItem()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CUSTOM_ACTION_FAVORITE: currentItem is null."

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 935
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "/"

    .line 936
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-array v2, v1, [Ljava/lang/String;

    .line 937
    :goto_0
    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 938
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "CUSTOM_ACTION_FAVORITE: Invalid mediaId %s"

    invoke-interface {v2, v0, v3}, Lcom/mb/android/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 941
    :cond_2
    aget-object v3, v2, v1

    .line 942
    array-length v4, v2

    sub-int/2addr v4, v5

    aget-object v2, v2, v4

    .line 943
    iget-object v4, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v4}, Lcom/mb/android/media/PlaybackManager;->access$1400(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClient(Ljava/lang/String;)Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v3

    if-nez v3, :cond_3

    .line 945
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "CUSTOM_ACTION_FAVORITE: Could not find ApiClient for %s"

    invoke-interface {v2, v0, v3}, Lcom/mb/android/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 948
    :cond_3
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "onCustomAction: FavoriteItem"

    invoke-interface {v0, v4, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$2100(Lcom/mb/android/media/PlaybackManager;)Z

    move-result v0

    xor-int/2addr v0, v5

    new-instance v1, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$2;

    invoke-direct {v1, p0}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$2;-><init>(Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;)V

    invoke-virtual {v3, v2, v0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->favoriteItem(Ljava/lang/String;ZLcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method private handleSetRepeatModeAction()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$2200(Lcom/mb/android/media/PlaybackManager;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1001
    :goto_0
    invoke-static {v1}, Lcom/mb/android/media/MediaPlayerBridge;->playbackStateRepeatModeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1002
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v2}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mb/android/media/Playback;->setRepeatMode(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0, v1}, Lcom/mb/android/media/PlaybackManager;->access$2202(Lcom/mb/android/media/PlaybackManager;I)I

    .line 1004
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$2300(Lcom/mb/android/media/PlaybackManager;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    return-void
.end method

.method private playRandom()V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$1400(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getLastUsedApiClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 784
    :cond_0
    new-instance v1, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;

    invoke-direct {v1, p0, v0}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$1;-><init>(Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;Lcom/mb/android/apiinteraction/ApiClient;)V

    invoke-virtual {v0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->determineServerUrl(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    return-void
.end method


# virtual methods
.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 901
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "PlaybackManager.onCustomAction %s"

    invoke-interface {v0, v4, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.mb.android.EXTRA_PLAYER_ID"

    .line 903
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 904
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v2, v0}, Lcom/mb/android/media/PlaybackManager;->access$2000(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;)Lcom/mb/android/media/Playback;

    move-result-object v0

    const-string v2, "com.emby.playpause"

    .line 906
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p1, v0}, Lcom/mb/android/media/PlaybackManager;->handlePlayPauseRequest(Lcom/mb/android/media/Playback;)V

    goto :goto_0

    :cond_0
    const-string v2, "com.emby.stop"

    .line 909
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "destroyplayer"

    .line 911
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    invoke-static {p1, p2}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 913
    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "onCustomAction: Stop destroyPlayer: %s"

    invoke-interface {p2, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 915
    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p2, v0, v1, p1}, Lcom/mb/android/media/PlaybackManager;->handleStopRequest(Lcom/mb/android/media/Playback;ZZ)V

    goto :goto_0

    :cond_1
    const-string p2, "com.emby.shuffle"

    .line 918
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 919
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p1}, Lcom/mb/android/media/PlaybackManager;->toggleShuffle()V

    goto :goto_0

    :cond_2
    const-string p2, "com.mb.android.FAVORITE"

    .line 921
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 922
    invoke-direct {p0}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->handleFavoriteAction()V

    goto :goto_0

    :cond_3
    const-string p2, "com.emby.setrepeat"

    .line 924
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 925
    invoke-direct {p0}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->handleSetRepeatModeAction()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onFastForward()V
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->fastForward()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v0}, Lcom/mb/android/media/PlaybackManager;->handlePauseRequest()V

    return-void
.end method

.method public onPlay()V
    .locals 7

    .line 765
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$1200(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/ForwardingRemotePlayback;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mb/android/media/Playback;->hasMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 769
    :cond_0
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$700(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getLastPlayedQueue()Ljava/lang/String;

    move-result-object v0

    .line 770
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$1300(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/model/serialization/IJsonSerializer;

    move-result-object v1

    const-class v2, Lcom/mb/android/media/PlayQueueState;

    invoke-interface {v1, v0, v2}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/media/PlayQueueState;

    if-nez v0, :cond_1

    .line 772
    invoke-direct {p0}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->playRandom()V

    return-void

    .line 775
    :cond_1
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    iget-object v2, v0, Lcom/mb/android/media/PlayQueueState;->serverId:Ljava/lang/String;

    iget-object v3, v0, Lcom/mb/android/media/PlayQueueState;->playQueueIds:Ljava/util/List;

    iget v4, v0, Lcom/mb/android/media/PlayQueueState;->playQueueIndex:I

    iget-wide v5, v0, Lcom/mb/android/media/PlayQueueState;->playbackPosition:J

    invoke-virtual/range {v1 .. v6}, Lcom/mb/android/media/PlaybackManager;->playMediaPlaylist(Ljava/lang/String;Ljava/util/List;IJ)V

    goto :goto_1

    .line 766
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->unPause()V

    :goto_1
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "item"

    .line 828
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    iget-object p2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p2, p1}, Lcom/mb/android/media/PlaybackManager;->playFromMediaId(Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p1, p2}, Lcom/mb/android/media/PlaybackManager;->playFromExtrasBundle(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    const/4 v0, 0x0

    const-string v1, "reportEvents"

    .line 1023
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1024
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/mb/android/media/PlaybackManager;->setIsCarPlay(Z)V

    .line 1026
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v3, "PlaybackManager.onPlayFromSearch %s"

    invoke-interface {v1, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mb/android/media/Playback;->stop(Z)V

    .line 1030
    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$1400(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getLastUsedApiClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1031
    invoke-virtual {v3}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.extra.focus"

    .line 1038
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/artist"

    .line 1039
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.extra.title"

    .line 1040
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "android.intent.extra.artist"

    .line 1041
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "android.intent.extra.album"

    .line 1042
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "android.intent.extra.genre"

    .line 1043
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "android.intent.extra.playlist"

    .line 1044
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1046
    new-instance v11, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$3;

    invoke-direct {v11, p0, v3, v0}, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback$3;-><init>(Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;Lcom/mb/android/apiinteraction/ApiClient;Z)V

    .line 1057
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V

    .line 1059
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {p1}, Lcom/mb/android/media/PlaybackManager;->access$1700(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/MediaSource;

    move-result-object p1

    const-string p2, "Audio"

    invoke-virtual {p1, v3, p2, v11}, Lcom/mb/android/media/MediaSource;->getRandomItemsWithType(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void

    .line 1066
    :cond_1
    iget-object v2, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    move-object v4, p1

    move-object v10, p2

    invoke-static/range {v2 .. v11}, Lcom/mb/android/media/PlaybackManager;->access$2400(Lcom/mb/android/media/PlaybackManager;Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/mb/android/apiinteraction/Response;)V

    return-void

    .line 1032
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "onPlayFromSearch Failed. User is not signed in."

    invoke-interface {p1, v0, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    iget-object p1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    const-string p2, "Failed to connect to server"

    invoke-static {p1, p2}, Lcom/mb/android/media/PlaybackManager;->access$1100(Lcom/mb/android/media/PlaybackManager;Ljava/lang/String;)V

    return-void
.end method

.method public onRewind()V
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mb/android/media/Playback;->rewind()V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v0

    long-to-int p2, p1

    int-to-long p1, p2

    invoke-interface {v0, p1, p2}, Lcom/mb/android/media/Playback;->seekTo(J)V

    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setPlaybackRate(F)V

    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v0

    invoke-static {p1}, Lcom/mb/android/media/MediaPlayerBridge;->playbackStateRepeatModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mb/android/media/Playback;->setRepeatMode(Ljava/lang/String;)V

    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 0

    return-void
.end method

.method public onSkipToNext()V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$1800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 854
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v0}, Lcom/mb/android/media/PlaybackManager;->skipToNext()V

    goto :goto_0

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$1900(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/MediaService$UIMessenger;

    move-result-object v0

    const-string v1, "nexttrack"

    invoke-interface {v0, v1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v0

    iget-object v1, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v1}, Lcom/mb/android/media/PlaybackManager;->access$1800(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/Playback;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 865
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v0}, Lcom/mb/android/media/PlaybackManager;->skipToPrevious()V

    goto :goto_0

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    invoke-static {v0}, Lcom/mb/android/media/PlaybackManager;->access$1900(Lcom/mb/android/media/PlaybackManager;)Lcom/mb/android/media/MediaService$UIMessenger;

    move-result-object v0

    const-string v1, "previoustrack"

    invoke-interface {v0, v1}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Lcom/mb/android/media/PlaybackManager;->skipToIndex(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/mb/android/media/PlaybackManager$MediaSessionCallback;->this$0:Lcom/mb/android/media/PlaybackManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/mb/android/media/PlaybackManager;->handleStopRequest(ZZ)V

    return-void
.end method
