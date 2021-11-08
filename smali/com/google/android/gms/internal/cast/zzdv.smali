.class final Lcom/google/android/gms/internal/cast/zzdv;
.super Lcom/google/android/gms/internal/cast/zzdx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzds;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdx;-><init>(Lcom/google/android/gms/internal/cast/zzds;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/cast/zzec;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdx;->zza(Lcom/google/android/gms/internal/cast/zzec;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzdz;-><init>(Lcom/google/android/gms/internal/cast/zzdx;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzec;->zza(Lcom/google/android/gms/internal/cast/zzee;)V

    return-void
.end method
