.class Lcom/mb/android/media/WakeWifiLockManager;
.super Ljava/lang/Object;
.source "WakeWifiLockManager.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private final powerManager:Landroid/os/PowerManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mb/android/media/WakeWifiLockManager;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/mb/android/media/WakeWifiLockManager;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/mb/android/media/WakeWifiLockManager;->powerManager:Landroid/os/PowerManager;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public acquireNetworkLock()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/mb/android/media/WakeWifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v2, "Acquiring network lock"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x3

    const-string v3, "emby:MediaService"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 80
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 85
    iget-object v2, p0, Lcom/mb/android/media/WakeWifiLockManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Error acquiring network lock"

    invoke-interface {v2, v3, v1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public acquireWakeLock()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WakelockTimeout"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/mb/android/media/WakeWifiLockManager;->powerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v2, "Acquiring partial wake lock"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_2

    const-string v1, "emby:MediaService"

    .line 43
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Huawei"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "AudioMix"

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/mb/android/media/WakeWifiLockManager;->powerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 48
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 53
    iget-object v2, p0, Lcom/mb/android/media/WakeWifiLockManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Error acquiring wake lock"

    invoke-interface {v2, v3, v1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public releaseNetworkLock()V
    .locals 4

    const/4 v0, 0x0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v2, "Releasing network lock"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 98
    iget-object v2, p0, Lcom/mb/android/media/WakeWifiLockManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Error releasing network lock"

    invoke-interface {v2, v3, v1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public releaseWakeLock()V
    .locals 4

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->logger:Lcom/mb/android/model/logging/ILogger;

    const-string v2, "Releasing wake lock"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/mb/android/media/WakeWifiLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 66
    iget-object v2, p0, Lcom/mb/android/media/WakeWifiLockManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Error releasing wake lock"

    invoke-interface {v2, v3, v1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
