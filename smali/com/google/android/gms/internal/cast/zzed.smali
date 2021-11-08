.class final Lcom/google/android/gms/internal/cast/zzed;
.super Lcom/google/android/gms/internal/cast/zzej;


# instance fields
.field private final synthetic zzzm:Lcom/google/android/gms/internal/cast/zzei;

.field private final synthetic zzzn:Lcom/google/android/gms/internal/cast/zzec;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzec;Lcom/google/android/gms/internal/cast/zzei;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzed;->zzzn:Lcom/google/android/gms/internal/cast/zzec;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzed;->zzzm:Lcom/google/android/gms/internal/cast/zzei;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzej;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzec;->zzds()Lcom/google/android/gms/internal/cast/zzdh;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRemoteDisplayEnded"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/cast/zzdh;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzed;->zzzm:Lcom/google/android/gms/internal/cast/zzei;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzei;->zzr(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzed;->zzzn:Lcom/google/android/gms/internal/cast/zzec;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzec;->zzb(Lcom/google/android/gms/internal/cast/zzec;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzed;->zzzn:Lcom/google/android/gms/internal/cast/zzec;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzec;->zzb(Lcom/google/android/gms/internal/cast/zzec;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;->onRemoteDisplayEnded(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    return-void
.end method
