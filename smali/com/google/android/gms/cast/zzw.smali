.class final Lcom/google/android/gms/cast/zzw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final synthetic zzaf:Ljava/lang/String;

.field private final synthetic zzci:Lcom/google/android/gms/cast/CastDevice;

.field private final synthetic zzcj:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;

.field private final synthetic zzck:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

.field private final synthetic zzcl:Landroid/content/Context;

.field private final synthetic zzcm:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzw;->zzaf:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzw;->zzci:Lcom/google/android/gms/cast/CastDevice;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzw;->zzcj:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;

    iput-object p4, p0, Lcom/google/android/gms/cast/zzw;->zzck:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    iput-object p5, p0, Lcom/google/android/gms/cast/zzw;->zzcl:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/cast/zzw;->zzcm:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .line 2
    check-cast p2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zza;

    .line 3
    iget-object v0, p2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zza;->zzch:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/cast/zzw;->zzaf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzw;->zzci:Lcom/google/android/gms/cast/CastDevice;

    iget-object v3, p0, Lcom/google/android/gms/cast/zzw;->zzcj:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;

    iget-object v4, p0, Lcom/google/android/gms/cast/zzw;->zzck:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    iget-object v5, p0, Lcom/google/android/gms/cast/zzw;->zzcl:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/cast/zzw;->zzcm:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    move-object v6, p0

    .line 6
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zze()Lcom/google/android/gms/internal/cast/zzdh;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "Connected but unable to get the service instance"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/cast/zzw;->zzcm:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x898

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;->onRemoteDisplaySessionError(Lcom/google/android/gms/common/api/Status;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzf()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/cast/zzw;->zzcl:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 13
    :catch_0
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zze()Lcom/google/android/gms/internal/cast/zzdh;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "No need to unbind service, already unbound"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/cast/zzdh;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 15
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zze()Lcom/google/android/gms/internal/cast/zzdh;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onServiceDisconnected"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/cast/zzdh;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/cast/zzw;->zzcm:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x899

    const-string v3, "Service Disconnected"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;->onRemoteDisplaySessionError(Lcom/google/android/gms/common/api/Status;)V

    .line 17
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzf()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/cast/zzw;->zzcl:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 21
    :catch_0
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zze()Lcom/google/android/gms/internal/cast/zzdh;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No need to unbind service, already unbound"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdh;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
