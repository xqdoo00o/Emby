.class Lcom/mb/android/chromecast/Chromecast$2;
.super Ljava/lang/Object;
.source "Chromecast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/chromecast/Chromecast;->selectRoute(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/chromecast/Chromecast;

.field final synthetic val$routeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/chromecast/Chromecast;Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/mb/android/chromecast/Chromecast$2;->this$0:Lcom/mb/android/chromecast/Chromecast;

    iput-object p2, p0, Lcom/mb/android/chromecast/Chromecast$2;->val$routeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast$2;->this$0:Lcom/mb/android/chromecast/Chromecast;

    invoke-static {v0}, Lcom/mb/android/chromecast/Chromecast;->access$000(Lcom/mb/android/chromecast/Chromecast;)Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mb/android/chromecast/Chromecast$2;->this$0:Lcom/mb/android/chromecast/Chromecast;

    invoke-static {v1}, Lcom/mb/android/chromecast/Chromecast;->access$100(Lcom/mb/android/chromecast/Chromecast;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mb/android/chromecast/Chromecast$2;->val$routeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/mb/android/chromecast/Chromecast$2;->this$0:Lcom/mb/android/chromecast/Chromecast;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mb/android/chromecast/Chromecast;->onConnectedToSession(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast$2;->this$0:Lcom/mb/android/chromecast/Chromecast;

    invoke-static {v0}, Lcom/mb/android/chromecast/Chromecast;->access$100(Lcom/mb/android/chromecast/Chromecast;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 138
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mb/android/chromecast/Chromecast$2;->val$routeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast$2;->this$0:Lcom/mb/android/chromecast/Chromecast;

    invoke-static {v0}, Lcom/mb/android/chromecast/Chromecast;->access$100(Lcom/mb/android/chromecast/Chromecast;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
