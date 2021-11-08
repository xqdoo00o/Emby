.class public Lcom/mb/android/chromecast/ChromecastSessionManagerListener;
.super Ljava/lang/Object;
.source "ChromecastSessionManagerListener.java"

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;


# instance fields
.field private callback:Lcom/mb/android/chromecast/Chromecast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastSessionManagerListener;->callback:Lcom/mb/android/chromecast/Chromecast;

    return-void
.end method


# virtual methods
.method public onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastSessionManagerListener;->callback:Lcom/mb/android/chromecast/Chromecast;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/mb/android/chromecast/Chromecast;->onSessionEndedWithError(Lcom/google/android/gms/cast/framework/Session;I)V

    :cond_0
    return-void
.end method

.method public onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    return-void
.end method

.method public onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastSessionManagerListener;->callback:Lcom/mb/android/chromecast/Chromecast;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/mb/android/chromecast/Chromecast;->onConnectToSessionFailed(Lcom/google/android/gms/cast/framework/Session;I)V

    :cond_0
    return-void
.end method

.method public onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 1

    .line 36
    iget-object p2, p0, Lcom/mb/android/chromecast/ChromecastSessionManagerListener;->callback:Lcom/mb/android/chromecast/Chromecast;

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/mb/android/chromecast/Chromecast;->onConnectedToSession(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastSessionManagerListener;->callback:Lcom/mb/android/chromecast/Chromecast;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/mb/android/chromecast/Chromecast;->onConnectToSessionFailed(Lcom/google/android/gms/cast/framework/Session;I)V

    :cond_0
    return-void
.end method

.method public onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastSessionManagerListener;->callback:Lcom/mb/android/chromecast/Chromecast;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/mb/android/chromecast/Chromecast;->onConnectedToSession(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    return-void
.end method

.method public onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    return-void
.end method

.method public registerCallbacks(Lcom/mb/android/chromecast/Chromecast;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastSessionManagerListener;->callback:Lcom/mb/android/chromecast/Chromecast;

    return-void
.end method
