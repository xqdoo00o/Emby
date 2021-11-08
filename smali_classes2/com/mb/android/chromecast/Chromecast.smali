.class public Lcom/mb/android/chromecast/Chromecast;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "Chromecast.java"

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# static fields
.field static final NAMESPACE:Ljava/lang/String; = "urn:x-cast:com.connectsdk"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final devices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final jsContext:Lcom/mb/android/webviews/ISendJavaScript;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

.field private mSessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

.field private mSessionManagerListener:Lcom/mb/android/chromecast/ChromecastSessionManagerListener;

.field private playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

.field private reportedSessionStartResult:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mb/android/webviews/ISendJavaScript;Lcom/mb/android/model/logging/ILogger;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/mb/android/chromecast/Chromecast;->reportedSessionStartResult:Z

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->devices:Ljava/util/HashMap;

    .line 44
    iput-object p1, p0, Lcom/mb/android/chromecast/Chromecast;->activity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/mb/android/chromecast/Chromecast;->jsContext:Lcom/mb/android/webviews/ISendJavaScript;

    .line 46
    iput-object p3, p0, Lcom/mb/android/chromecast/Chromecast;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 48
    invoke-virtual {p0}, Lcom/mb/android/chromecast/Chromecast;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/chromecast/Chromecast;)Lcom/google/android/gms/cast/framework/SessionManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mb/android/chromecast/Chromecast;->mSessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/chromecast/Chromecast;)Landroidx/mediarouter/media/MediaRouter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mb/android/chromecast/Chromecast;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mb/android/chromecast/Chromecast;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/Chromecast;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static getCastContext(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 69
    :catch_0
    new-instance p0, Ljava/lang/ClassNotFoundException;

    const-string v0, "Failed to load com.google.android.gms.cast"

    invoke-direct {p0, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getLogger()Lcom/mb/android/model/logging/ILogger;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object v0
.end method

.method private isValidCastRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result p1

    return p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/mb/android/chromecast/Chromecast;->getLogger()Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private routeToJSON(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Lorg/json/JSONObject;
    .locals 3

    .line 353
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 356
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 357
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private sendJavascript(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->jsContext:Lcom/mb/android/webviews/ISendJavaScript;

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0, p1}, Lcom/mb/android/webviews/ISendJavaScript;->sendJavaScript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public endSession()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mb/android/chromecast/Chromecast$1;

    invoke-direct {v1, p0}, Lcom/mb/android/chromecast/Chromecast$1;-><init>(Lcom/mb/android/chromecast/Chromecast;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDevices()Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->devices:Ljava/util/HashMap;

    monitor-enter v0

    .line 209
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 211
    iget-object v2, p0, Lcom/mb/android/chromecast/Chromecast;->devices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 213
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "name"

    .line 216
    iget-object v6, p0, Lcom/mb/android/chromecast/Chromecast;->devices:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "id"

    .line 217
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 219
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 222
    :goto_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 226
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public initialize()V
    .locals 4

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mb/android/chromecast/Chromecast;->getCastContext(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mb/android/chromecast/Chromecast;->mSessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 79
    new-instance v1, Lcom/mb/android/chromecast/ChromecastPlaybackController;

    iget-object v2, p0, Lcom/mb/android/chromecast/Chromecast;->mSessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    iget-object v3, p0, Lcom/mb/android/chromecast/Chromecast;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v1, v2, v3}, Lcom/mb/android/chromecast/ChromecastPlaybackController;-><init>(Lcom/google/android/gms/cast/framework/SessionManager;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v1, p0, Lcom/mb/android/chromecast/Chromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    .line 81
    new-instance v1, Lcom/mb/android/chromecast/ChromecastSessionManagerListener;

    invoke-direct {v1}, Lcom/mb/android/chromecast/ChromecastSessionManagerListener;-><init>()V

    iput-object v1, p0, Lcom/mb/android/chromecast/Chromecast;->mSessionManagerListener:Lcom/mb/android/chromecast/ChromecastSessionManagerListener;

    .line 82
    iget-object v1, p0, Lcom/mb/android/chromecast/Chromecast;->mSessionManagerListener:Lcom/mb/android/chromecast/ChromecastSessionManagerListener;

    invoke-virtual {v1, p0}, Lcom/mb/android/chromecast/ChromecastSessionManagerListener;->registerCallbacks(Lcom/mb/android/chromecast/Chromecast;)V

    .line 83
    iget-object v1, p0, Lcom/mb/android/chromecast/Chromecast;->mSessionManager:Lcom/google/android/gms/cast/framework/SessionManager;

    iget-object v2, p0, Lcom/mb/android/chromecast/Chromecast;->mSessionManagerListener:Lcom/mb/android/chromecast/ChromecastSessionManagerListener;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V

    .line 85
    iget-object v1, p0, Lcom/mb/android/chromecast/Chromecast;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v1

    iput-object v1, p0, Lcom/mb/android/chromecast/Chromecast;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getMergedSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 89
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Lcom/mb/android/chromecast/Chromecast;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cast Sender API not available on this device."

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected onConnectToSessionFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    const-string p1, "Chromecast.onSessionEvent(\'failToStartSession\');"

    .line 298
    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/Chromecast;->sendJavascript(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 300
    iput-boolean p1, p0, Lcom/mb/android/chromecast/Chromecast;->reportedSessionStartResult:Z

    return-void
.end method

.method protected onConnectedToSession(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 269
    iget-boolean p1, p0, Lcom/mb/android/chromecast/Chromecast;->reportedSessionStartResult:Z

    if-nez p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/mb/android/chromecast/Chromecast;->activity:Landroid/app/Activity;

    new-instance p2, Lcom/mb/android/chromecast/Chromecast$4;

    invoke-direct {p2, p0}, Lcom/mb/android/chromecast/Chromecast$4;-><init>(Lcom/mb/android/chromecast/Chromecast;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p1, "Chromecast.onSessionEvent(\'sessionStarted\');"

    .line 286
    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/Chromecast;->sendJavascript(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lcom/mb/android/chromecast/Chromecast;->reportedSessionStartResult:Z

    :cond_0
    return-void
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "if(window.Chromecast){Chromecast.onMessageReceived("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/Chromecast;->sendJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/mb/android/chromecast/Chromecast;->refreshRoutesInternal()V

    return-void
.end method

.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 310
    iget-object p1, p0, Lcom/mb/android/chromecast/Chromecast;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "MediaRoute added %s %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    iget-object p1, p0, Lcom/mb/android/chromecast/Chromecast;->devices:Ljava/util/HashMap;

    monitor-enter p1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->devices:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/mb/android/chromecast/Chromecast;->onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 324
    iget-object p1, p0, Lcom/mb/android/chromecast/Chromecast;->devices:Ljava/util/HashMap;

    monitor-enter p1

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->devices:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    iget-object p1, p0, Lcom/mb/android/chromecast/Chromecast;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "MediaRoute removed %s %s"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "if(window.Chromecast){Chromecast.deviceRemoved("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/mb/android/chromecast/Chromecast;->routeToJSON(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/Chromecast;->sendJavascript(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    .line 326
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method protected onSessionEndedWithError(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    const-string p1, "Chromecast.onDisconnectWithError();"

    .line 305
    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/Chromecast;->sendJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public receiverVolumeDown()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->volumeDown()V

    :cond_0
    return-void
.end method

.method public receiverVolumeUp()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->volumeUp()V

    :cond_0
    return-void
.end method

.method public refreshRoutes()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mb/android/chromecast/Chromecast$3;

    invoke-direct {v1, p0}, Lcom/mb/android/chromecast/Chromecast$3;-><init>(Lcom/mb/android/chromecast/Chromecast;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshRoutesInternal()V
    .locals 9

    .line 244
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/mb/android/chromecast/Chromecast;->devices:Ljava/util/HashMap;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/mb/android/chromecast/Chromecast;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v3, "Refreshing route list"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    iget-object v2, p0, Lcom/mb/android/chromecast/Chromecast;->devices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 257
    invoke-direct {p0, v2}, Lcom/mb/android/chromecast/Chromecast;->isValidCastRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/mb/android/chromecast/Chromecast;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v5, "MediaRoute added %s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x1

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v3, p0, Lcom/mb/android/chromecast/Chromecast;->devices:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selectRoute(Ljava/lang/String;)Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mb/android/chromecast/Chromecast$2;

    invoke-direct {v1, p0, p1}, Lcom/mb/android/chromecast/Chromecast$2;-><init>(Lcom/mb/android/chromecast/Chromecast;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->sendMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setReceiverMuted(Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->setReceiverMuted(Z)V

    :cond_0
    return-void
.end method

.method public setReceiverVolumeLevel(D)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1, p2}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->setReceiverVolume(D)V

    :cond_0
    return-void
.end method

.method public startSession(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lcom/mb/android/chromecast/Chromecast;->selectRoute(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/mb/android/chromecast/Chromecast;->reportedSessionStartResult:Z

    return-void
.end method

.method public toggleRecieverMuted()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast;->playbackController:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->toggleReceiverMuted()V

    :cond_0
    return-void
.end method
