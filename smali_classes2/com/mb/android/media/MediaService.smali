.class public Lcom/mb/android/media/MediaService;
.super Landroidx/media/MediaBrowserServiceCompat;
.source "MediaService.java"

# interfaces
.implements Lcom/mb/android/media/PlaybackManager$PlaybackServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/MediaService$UIMessenger;
    }
.end annotation


# static fields
.field public static final ACTION_CMD:Ljava/lang/String; = "com.example.android.uamp.ACTION_CMD"

.field public static final ACTION_REPORT:Ljava/lang/String; = "com.example.android.uamp.ACTION_REPORT"

.field public static final ACTION_REPORT_REMOTE_PLAYBACK_STOPPED:Ljava/lang/String; = "com.example.android.uamp.ACTION_REPORT_REMOTE_PLAYBACK_STOPPED"

.field public static final ACTION_SEND_COMMAND:Ljava/lang/String; = "com.mb.android.ACTION_SEND_COMMAND"

.field public static final ACTION_SEND_MESSAGE:Ljava/lang/String; = "com.mb.android.ACTION_SEND_MESSAGE"

.field public static final ACTION_SET_PLAYBACK_SPEED:J = 0x400000L

.field public static final ACTION_START_PLAYBACK:Ljava/lang/String; = "com.mb.android.ACTION_START_PLAYBACK"

.field public static final ATTACH_SURFACE:Ljava/lang/String; = "ATTACH_SURFACE"

.field public static final CMD_NAME:Ljava/lang/String; = "CMD_NAME"

.field public static final CMD_PAUSE:Ljava/lang/String; = "CMD_PAUSE"

.field public static final CMD_STOP_CASTING:Ljava/lang/String; = "CMD_STOP_CASTING"

.field public static final DETACH_SURFACE:Ljava/lang/String; = "DETACH_SURFACE"

.field public static final EXTRA_CONNECTED_CAST:Ljava/lang/String; = "com.example.android.uamp.CAST_NAME"

.field public static final EXTRA_PLAYER_ID:Ljava/lang/String; = "com.mb.android.EXTRA_PLAYER_ID"

.field public static final HANDLE_APP_PAUSE:Ljava/lang/String; = "HANDLE_APP_PAUSE"

.field public static final HANDLE_CONFIGURATION_CHANGED:Ljava/lang/String; = "HANDLE_CONFIGURATION_CHANGED"

.field public static final HANDLE_DISPLAY_MODE_CHANGED:Ljava/lang/String; = "HANDLE_DISPLAY_MODE_CHANGED"

.field public static final HANDLE_SURFACE_CHANGED:Ljava/lang/String; = "HANDLE_SURFACE_CHANGED"

.field public static final MEDIA_ID_EMPTY_ROOT:Ljava/lang/String; = "__EMPTY_ROOT__"

.field public static final MEDIA_ID_FOLDERS:Ljava/lang/String; = "__FOLDERS__"

.field public static final MEDIA_ID_MUSIC:Ljava/lang/String; = "__MUSIC__"

.field public static final MEDIA_ID_PLAYLIST:Ljava/lang/String; = "__PLAYLIST__"

.field public static final MEDIA_ID_ROOT:Ljava/lang/String; = "__ROOT__"

.field public static final SET_PLAYBACK:Ljava/lang/String; = "SET_PLAYBACK"

.field public static final SET_VIDEO_ENABLED:Ljava/lang/String; = "SET_VIDEO_ENABLED"

.field private static final STOP_DELAY:I = 0x7530


# instance fields
.field private browseTree:Lcom/mb/android/media/BrowseTree;

.field private connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private mCarConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mIsConnectedToCar:Z

.field private mMediaNotificationManager:Lcom/mb/android/media/MediaNotificationManager;

.field private mMediaNotificationReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

.field private mPackageValidator:Lcom/mb/android/media/PackageValidator;

.field private mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

.field private mSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mSessionExtras:Landroid/os/Bundle;

.field private mediaSource:Lcom/mb/android/media/MediaSource;

.field private final messenger:Lcom/mb/android/media/MediaService$UIMessenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    .line 702
    new-instance v0, Lcom/mb/android/media/MediaService$6;

    invoke-direct {v0, p0}, Lcom/mb/android/media/MediaService$6;-><init>(Lcom/mb/android/media/MediaService;)V

    iput-object v0, p0, Lcom/mb/android/media/MediaService;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/MediaService;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/media/MediaService;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mb/android/media/MediaService;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/mb/android/media/MediaService;->mIsConnectedToCar:Z

    return p0
.end method

.method static synthetic access$202(Lcom/mb/android/media/MediaService;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/mb/android/media/MediaService;->mIsConnectedToCar:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mb/android/media/MediaService;)Lcom/mb/android/media/PlaybackManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mb/android/media/MediaService;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaService;->handleStopRequest(Z)V

    return-void
.end method

.method private handlePauseRequest()V
    .locals 4

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v0}, Lcom/mb/android/media/PlaybackManager;->handlePauseRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 378
    iget-object v1, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error in playbackManager.handlePauseRequest"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private handleStopRequest(Z)V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaService.handleStopRequest"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/mb/android/media/PlaybackManager;->handleStopRequest(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 389
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in playbackManager.handleStopRequest"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private registerCarConnectionReceiver()V
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaService.registerCarConnectionReceiver"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.car.media.STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 668
    new-instance v1, Lcom/mb/android/media/MediaService$4;

    invoke-direct {v1, p0}, Lcom/mb/android/media/MediaService$4;-><init>(Lcom/mb/android/media/MediaService;)V

    iput-object v1, p0, Lcom/mb/android/media/MediaService;->mCarConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 677
    iget-object v1, p0, Lcom/mb/android/media/MediaService;->mCarConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mb/android/media/MediaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerMediaNotificationReceiver()V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaService.registerMediaNotificationReceiver"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.emby.stop"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 685
    new-instance v1, Lcom/mb/android/media/MediaService$5;

    invoke-direct {v1, p0}, Lcom/mb/android/media/MediaService$5;-><init>(Lcom/mb/android/media/MediaService;)V

    iput-object v1, p0, Lcom/mb/android/media/MediaService;->mMediaNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 691
    iget-object v1, p0, Lcom/mb/android/media/MediaService;->mMediaNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mb/android/media/MediaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterCarConnectionReceiver()V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mCarConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mb/android/media/MediaService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterMediaNotificationReceiver()V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mMediaNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mb/android/media/MediaService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updatePlaybackState(ILjava/lang/String;)V
    .locals 2

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/media/PlaybackManager;->updatePlaybackState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 399
    iget-object p2, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error in playbackManager.updatePlaybackState"

    invoke-interface {p2, v1, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 11

    .line 124
    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onCreate()V

    .line 127
    invoke-virtual {p0}, Lcom/mb/android/media/MediaService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/mb/android/MainApp;

    invoke-virtual {v0}, Lcom/mb/android/MainApp;->getConnectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/MediaService;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    .line 129
    invoke-virtual {p0}, Lcom/mb/android/media/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 131
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaService.onCreate"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance v0, Lcom/mb/android/media/MediaSource;

    iget-object v2, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v0, p0, v2}, Lcom/mb/android/media/MediaSource;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/media/MediaService;->mediaSource:Lcom/mb/android/media/MediaSource;

    .line 134
    new-instance v0, Lcom/mb/android/media/BrowseTree;

    iget-object v2, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    iget-object v3, p0, Lcom/mb/android/media/MediaService;->mediaSource:Lcom/mb/android/media/MediaSource;

    invoke-direct {v0, p0, v2, v3}, Lcom/mb/android/media/BrowseTree;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaSource;)V

    iput-object v0, p0, Lcom/mb/android/media/MediaService;->browseTree:Lcom/mb/android/media/BrowseTree;

    .line 136
    new-instance v0, Lcom/mb/android/media/PackageValidator;

    invoke-direct {v0, p0}, Lcom/mb/android/media/PackageValidator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mb/android/media/MediaService;->mPackageValidator:Lcom/mb/android/media/PackageValidator;

    .line 138
    new-instance v5, Lcom/mb/android/media/QueueManager;

    new-instance v0, Lcom/mb/android/media/MediaService$1;

    invoke-direct {v0, p0}, Lcom/mb/android/media/MediaService$1;-><init>(Lcom/mb/android/media/MediaService;)V

    new-instance v2, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v2}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iget-object v3, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v5, v0, v2, v3}, Lcom/mb/android/media/QueueManager;-><init>(Lcom/mb/android/media/QueueManager$MetadataUpdateListener;Lcom/mb/android/model/serialization/IJsonSerializer;Lcom/mb/android/model/logging/ILogger;)V

    .line 165
    invoke-static {p0}, Lcom/mb/android/media/CarHelper;->isCarUiMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mb/android/media/MediaService;->mIsConnectedToCar:Z

    .line 167
    new-instance v7, Lcom/mb/android/media/ForwardingLocalPlayback;

    invoke-virtual {p0}, Lcom/mb/android/media/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    iget-object v3, p0, Lcom/mb/android/media/MediaService;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    iget-boolean v4, p0, Lcom/mb/android/media/MediaService;->mIsConnectedToCar:Z

    const/4 v10, 0x1

    xor-int/2addr v4, v10

    invoke-direct {v7, v0, v2, v3, v4}, Lcom/mb/android/media/ForwardingLocalPlayback;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/media/MediaService$UIMessenger;Z)V

    .line 169
    new-instance v0, Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p0}, Lcom/mb/android/media/MediaService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, p0, Lcom/mb/android/media/MediaService;->mediaSource:Lcom/mb/android/media/MediaSource;

    iget-object v8, p0, Lcom/mb/android/media/MediaService;->messenger:Lcom/mb/android/media/MediaService$UIMessenger;

    iget-object v9, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/mb/android/media/PlaybackManager;-><init>(Lcom/mb/android/media/MediaService;Landroid/content/res/Resources;Lcom/mb/android/media/QueueManager;Lcom/mb/android/media/MediaSource;Lcom/mb/android/media/Playback;Lcom/mb/android/media/MediaService$UIMessenger;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    .line 173
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaService starting a new MediaSession"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v2, "MediaService"

    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 175
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mb/android/media/MediaService;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 176
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v2, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v2}, Lcom/mb/android/media/PlaybackManager;->getMediaSessionCallback()Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 177
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 179
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/mb/android/media/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mb/android/MainActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x63

    const/high16 v4, 0x8000000

    .line 183
    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 185
    iget-object v2, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mb/android/media/MediaService;->mSessionExtras:Landroid/os/Bundle;

    .line 188
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaService setting up CarHelper and WearHelper"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSessionExtras:Landroid/os/Bundle;

    invoke-static {v0, v10, v10, v10}, Lcom/mb/android/media/CarHelper;->setSlotReservationFlags(Landroid/os/Bundle;ZZZ)V

    .line 190
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSessionExtras:Landroid/os/Bundle;

    invoke-static {v0, v10, v10}, Lcom/mb/android/media/WearHelper;->setSlotReservationFlags(Landroid/os/Bundle;ZZ)V

    .line 191
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSessionExtras:Landroid/os/Bundle;

    invoke-static {v0, v10}, Lcom/mb/android/media/WearHelper;->setUseBackgroundFromTheme(Landroid/os/Bundle;Z)V

    .line 192
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v2, p0, Lcom/mb/android/media/MediaService;->mSessionExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setExtras(Landroid/os/Bundle;)V

    .line 194
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-static {p0}, Lcom/mb/android/media/CarHelper;->isCarUiMode(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mb/android/media/PlaybackManager;->setIsCarPlay(Z)V

    .line 196
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaService calling updatePlaybackState"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, v1, v0}, Lcom/mb/android/media/MediaService;->updatePlaybackState(ILjava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaService creating MediaNotificationManager"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :try_start_0
    new-instance v0, Lcom/mb/android/media/MediaNotificationManager;

    iget-object v2, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v0, p0, v2}, Lcom/mb/android/media/MediaNotificationManager;-><init>(Lcom/mb/android/media/MediaService;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v0, p0, Lcom/mb/android/media/MediaService;->mMediaNotificationManager:Lcom/mb/android/media/MediaNotificationManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 216
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaService getting MediaRouter"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0}, Lcom/mb/android/media/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/MediaService;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 219
    invoke-direct {p0}, Lcom/mb/android/media/MediaService;->registerCarConnectionReceiver()V

    .line 220
    invoke-direct {p0}, Lcom/mb/android/media/MediaService;->registerMediaNotificationReceiver()V

    return-void

    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create a MediaNotificationManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 5

    .line 418
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaService.onDestroy"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    invoke-direct {p0}, Lcom/mb/android/media/MediaService;->unregisterCarConnectionReceiver()V

    .line 420
    invoke-direct {p0}, Lcom/mb/android/media/MediaService;->unregisterMediaNotificationReceiver()V

    .line 423
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mb/android/media/MediaService;->handleStopRequest(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 426
    iget-object v2, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Error in handleStopRequest"

    invoke-interface {v2, v4, v0, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 430
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mMediaNotificationManager:Lcom/mb/android/media/MediaNotificationManager;

    invoke-virtual {v0}, Lcom/mb/android/media/MediaNotificationManager;->stopNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 433
    iget-object v2, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Error in stopNotification"

    invoke-interface {v2, v4, v0, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 442
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 445
    iget-object v2, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Error releasing media session"

    invoke-interface {v2, v4, v0, v3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 448
    :goto_2
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->browseTree:Lcom/mb/android/media/BrowseTree;

    invoke-virtual {v0}, Lcom/mb/android/media/BrowseTree;->release()V

    .line 450
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaService.onDestroy complete"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 457
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MediaService.onGetRoot"

    invoke-interface {p3, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPackageValidator:Lcom/mb/android/media/PackageValidator;

    invoke-virtual {p3, p0, p1, p2}, Lcom/mb/android/media/PackageValidator;->isCallerAllowed(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 469
    new-instance p1, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    const/4 p2, 0x0

    const-string p3, "__EMPTY_ROOT__"

    invoke-direct {p1, p3, p2}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1

    .line 472
    :cond_0
    invoke-static {p1}, Lcom/mb/android/media/CarHelper;->isValidCarPackage(Ljava/lang/String;)Z

    .line 480
    invoke-static {p1}, Lcom/mb/android/media/WearHelper;->isValidWearCompanionPackage(Ljava/lang/String;)Z

    .line 486
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x1

    const-string p3, "android.media.browse.AUTO_TABS_OPT_IN_HINT"

    .line 487
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "android.media.browse.CONTENT_STYLE_SUPPORTED"

    .line 488
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "android.media.browse.SEARCH_SUPPORTED"

    .line 489
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p3, 0x2

    const-string v0, "android.media.browse.CONTENT_STYLE_BROWSABLE_HINT"

    .line 490
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "android.media.browse.CONTENT_STYLE_PLAYABLE_HINT"

    .line 491
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 494
    new-instance p2, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string p3, "__ROOT__"

    invoke-direct {p2, p3, p1}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "MediaService.OnLoadChildren: parentMediaId=%s"

    invoke-interface {v0, v3, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "__EMPTY_ROOT__"

    .line 503
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 508
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 509
    iget-object v1, p0, Lcom/mb/android/media/MediaService;->browseTree:Lcom/mb/android/media/BrowseTree;

    new-instance v2, Lcom/mb/android/media/MediaService$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/mb/android/media/MediaService$2;-><init>(Lcom/mb/android/media/MediaService;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    invoke-virtual {v1, p1, v2}, Lcom/mb/android/media/BrowseTree;->getChildren(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    .line 529
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 530
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNotificationRequired()V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mMediaNotificationManager:Lcom/mb/android/media/MediaNotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mb/android/media/MediaNotificationManager;->startNotification(Z)V

    return-void
.end method

.method public onPlaybackStart()V
    .locals 4

    .line 612
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 615
    invoke-static {p0}, Lcom/mb/android/media/CarHelper;->isCarUiMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mb/android/media/MediaService;->mIsConnectedToCar:Z

    .line 621
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mb/android/media/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mb/android/media/MediaService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 626
    iget-object v1, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error in onPlaybackStart"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onPlaybackStateUpdated(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 659
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error in mediaSession.setPlaybackState"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onPlaybackStop()V
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaService.onPlaybackStop"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 639
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    .line 640
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    const/4 v0, 0x1

    .line 642
    invoke-virtual {p0, v0}, Lcom/mb/android/media/MediaService;->stopForeground(Z)V

    .line 643
    invoke-virtual {p0}, Lcom/mb/android/media/MediaService;->stopSelf()V

    return-void
.end method

.method public onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 539
    iget-object v3, v0, Lcom/mb/android/media/MediaService;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v6, "MediaService.onSearch: query=\'%s\'"

    invoke-interface {v3, v6, v4}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    iget-object v1, v0, Lcom/mb/android/media/MediaService;->browseTree:Lcom/mb/android/media/BrowseTree;

    invoke-virtual {v1}, Lcom/mb/android/media/BrowseTree;->getRoot()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v3, "android.intent.extra.title"

    .line 553
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.artist"

    .line 554
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.intent.extra.album"

    .line 555
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.extra.genre"

    .line 556
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.extra.playlist"

    .line 557
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    move-object v9, v3

    move-object v10, v4

    move-object v11, v6

    move-object v12, v7

    goto :goto_0

    :cond_1
    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    .line 560
    :goto_0
    iget-object v1, v0, Lcom/mb/android/media/MediaService;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {v1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getLastUsedApiClient()Lcom/mb/android/apiinteraction/ApiClient;

    move-result-object v7

    .line 562
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 563
    iget-object v6, v0, Lcom/mb/android/media/MediaService;->mediaSource:Lcom/mb/android/media/MediaSource;

    new-instance v14, Lcom/mb/android/media/MediaService$3;

    invoke-direct {v14, p0, v7, v1, v2}, Lcom/mb/android/media/MediaService$3;-><init>(Lcom/mb/android/media/MediaService;Lcom/mb/android/apiinteraction/ApiClient;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v14}, Lcom/mb/android/media/MediaSource;->getAllSearchResults(Lcom/mb/android/apiinteraction/ApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/media/MediaSource$SearchResultCallback;)Z

    .line 602
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 603
    invoke-virtual/range {p3 .. p3}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 p2, 0x1

    if-eqz p1, :cond_20

    .line 230
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CMD_NAME"

    .line 231
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.example.android.uamp.ACTION_CMD"

    .line 232
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1f

    const-string p3, "CMD_PAUSE"

    .line 233
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/mb/android/media/MediaService;->handlePauseRequest()V

    goto/16 :goto_0

    :cond_0
    const-string p3, "CMD_STOP_CASTING"

    .line 235
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p3, "SET_PLAYBACK"

    .line 238
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "isLocalPlayer"

    .line 239
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    const-string v0, "playerId"

    .line 240
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v2, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    xor-int/2addr p3, p2

    iget-object v3, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v2, p3, v0, v3}, Lcom/mb/android/media/PlaybackManager;->setPlayback(ZLjava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat;)V

    goto/16 :goto_0

    :cond_2
    const-string p3, "com.example.android.uamp.ACTION_REPORT_REMOTE_PLAYBACK_STOPPED"

    .line 242
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 243
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p3}, Lcom/mb/android/media/PlaybackManager;->reportRemotePlaybackStopped()V

    goto/16 :goto_0

    :cond_3
    const-string p3, "com.example.android.uamp.ACTION_REPORT"

    .line 245
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 246
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p3, p1}, Lcom/mb/android/media/PlaybackManager;->reportRemotePlayback(Landroid/content/Intent;)V

    .line 247
    invoke-virtual {p0}, Lcom/mb/android/media/MediaService;->onPlaybackStart()V

    goto/16 :goto_0

    :cond_4
    const-string p3, "SET_VIDEO_ENABLED"

    .line 248
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "checkHasVideo"

    .line 250
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 251
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    const-string v0, "Video"

    invoke-virtual {p3, v0}, Lcom/mb/android/media/PlaybackManager;->hasMedia(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 252
    :cond_5
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    const-string v0, "enabled"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/mb/android/media/PlaybackManager;->setVideoOutputEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    const-string p3, "ATTACH_SURFACE"

    .line 254
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "surface"

    .line 256
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/view/Surface;

    .line 257
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v0, p3}, Lcom/mb/android/media/PlaybackManager;->attachSurface(Landroid/view/Surface;)V

    goto/16 :goto_0

    :cond_7
    const-string p3, "HANDLE_CONFIGURATION_CHANGED"

    .line 259
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 261
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p3}, Lcom/mb/android/media/PlaybackManager;->onConfigurationChanged()V

    goto/16 :goto_0

    :cond_8
    const-string p3, "DETACH_SURFACE"

    .line 263
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 264
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p3}, Lcom/mb/android/media/PlaybackManager;->detachSurface()V

    goto/16 :goto_0

    :cond_9
    const-string p3, "destroyPlayer"

    .line 265
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    const-string p3, "com.mb.android.EXTRA_PLAYER_ID"

    .line 267
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 268
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v0, p3}, Lcom/mb/android/media/PlaybackManager;->destroyPlayer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string p3, "HANDLE_APP_PAUSE"

    .line 269
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    const-string p3, "continuePlayback"

    .line 270
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    .line 271
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v0, p3}, Lcom/mb/android/media/PlaybackManager;->handleAppPause(Z)V

    goto/16 :goto_0

    :cond_b
    const-string p3, "playMedia"

    .line 272
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 274
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/mb/android/media/PlaybackManager;->playFromExtrasBundle(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_c
    const-string p3, "playAudioPlaylist"

    .line 275
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-string v2, "items"

    if-eqz p3, :cond_d

    .line 277
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "startIndex"

    .line 278
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 279
    iget-object v2, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, p3, v0, v3}, Lcom/mb/android/media/PlaybackManager;->playMediaPlaylist(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_d
    const-string p3, "setVideoAspectRatio"

    .line 281
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 283
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/mb/android/media/PlaybackManager;->setVideoAspectRatio(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string p3, "setAudioStreamIndex"

    .line 285
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-string v3, "index"

    const/4 v4, -0x1

    if-eqz p3, :cond_f

    .line 287
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/mb/android/media/PlaybackManager;->setAudioStreamIndex(I)V

    goto/16 :goto_0

    :cond_f
    const-string p3, "setSubtitleStreamIndex"

    .line 289
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 291
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/mb/android/media/PlaybackManager;->setSubtitleStreamIndex(I)V

    goto/16 :goto_0

    :cond_10
    const-string p3, "com.emby.playpause"

    .line 293
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 295
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p3}, Lcom/mb/android/media/PlaybackManager;->handlePlayPauseRequest()V

    goto/16 :goto_0

    :cond_11
    const-string p3, "HANDLE_SURFACE_CHANGED"

    .line 297
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 299
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    const-string v0, "format"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "width"

    .line 300
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "height"

    .line 301
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 299
    invoke-virtual {p3, v0, v2, v3}, Lcom/mb/android/media/PlaybackManager;->surfaceChanged(III)V

    goto/16 :goto_0

    :cond_12
    const-string p3, "HANDLE_DISPLAY_MODE_CHANGED"

    .line 303
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 305
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p3}, Lcom/mb/android/media/PlaybackManager;->displayModeChanged()V

    goto/16 :goto_0

    :cond_13
    const-string p3, "com.emby.next"

    .line 307
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 309
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p3}, Lcom/mb/android/media/PlaybackManager;->skipToNext()V

    goto/16 :goto_0

    :cond_14
    const-string p3, "com.emby.prev"

    .line 311
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 313
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p3}, Lcom/mb/android/media/PlaybackManager;->skipToPrevious()V

    goto/16 :goto_0

    :cond_15
    const-string p3, "playAtIndex"

    .line 315
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 317
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/mb/android/media/PlaybackManager;->skipToIndex(I)V

    goto/16 :goto_0

    :cond_16
    const-string p3, "movePlaylistItem"

    .line 319
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_17

    const-string p3, "oldIndex"

    .line 321
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-string v0, "newIndex"

    .line 322
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 323
    iget-object v2, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v2, p3, v0}, Lcom/mb/android/media/PlaybackManager;->movePlaylistItem(II)V

    goto/16 :goto_0

    :cond_17
    const-string p3, "removePlaylistItem"

    .line 325
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 327
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    .line 328
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v0, p3}, Lcom/mb/android/media/PlaybackManager;->removePlaylistItem(I)V

    goto/16 :goto_0

    :cond_18
    const-string p3, "queueItems"

    .line 330
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 332
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "queueNext"

    .line 333
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 334
    iget-object v2, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v2, p3, v0}, Lcom/mb/android/media/PlaybackManager;->queueItems(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_19
    const-string p3, "setRepeatMode"

    .line 336
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1a

    const-string p3, "mode"

    .line 338
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 339
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v0, p3}, Lcom/mb/android/media/PlaybackManager;->setRepeatMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1a
    const-string p3, "setPlaybackRate"

    .line 341
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1b

    const/4 p3, 0x0

    const-string v0, "rate"

    .line 342
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p3

    .line 343
    iget-object v0, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {v0, p3}, Lcom/mb/android/media/PlaybackManager;->setPlaybackRate(F)V

    goto :goto_0

    :cond_1b
    const-string p3, "setSubtitleOffset"

    .line 345
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-string v2, "offset"

    const-wide/16 v3, 0x0

    if-eqz p3, :cond_1c

    .line 346
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 347
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p3, v2, v3}, Lcom/mb/android/media/PlaybackManager;->setSubtitleOffset(J)V

    goto :goto_0

    :cond_1c
    const-string p3, "incrementSubtitleOffset"

    .line 349
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 350
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 351
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p3, v2, v3}, Lcom/mb/android/media/PlaybackManager;->incrementSubtitleOffset(J)V

    goto :goto_0

    :cond_1d
    const-string p3, "seekRelative"

    .line 353
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1e

    const-string p3, "offsetMs"

    .line 354
    invoke-virtual {p1, p3, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 355
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mPlaybackManager:Lcom/mb/android/media/PlaybackManager;

    invoke-virtual {p3, v2, v3}, Lcom/mb/android/media/PlaybackManager;->seekRelative(J)V

    :cond_1e
    :goto_0
    const-string p3, "startForeground"

    .line 358
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 360
    iget-object p1, p0, Lcom/mb/android/media/MediaService;->mMediaNotificationManager:Lcom/mb/android/media/MediaNotificationManager;

    invoke-virtual {p1, p2}, Lcom/mb/android/media/MediaNotificationManager;->startNotification(Z)V

    goto :goto_1

    .line 365
    :cond_1f
    iget-object p3, p0, Lcom/mb/android/media/MediaService;->mSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-static {p3, p1}, Landroidx/media/session/MediaButtonReceiver;->handleIntent(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/content/Intent;)Landroid/view/KeyEvent;

    :cond_20
    :goto_1
    return p2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 409
    invoke-super {p0, p1}, Landroidx/media/MediaBrowserServiceCompat;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method
