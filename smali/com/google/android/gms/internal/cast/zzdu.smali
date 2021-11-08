.class final Lcom/google/android/gms/internal/cast/zzdu;
.super Lcom/google/android/gms/internal/cast/zzdx;


# instance fields
.field private final synthetic zzzg:Lcom/google/android/gms/internal/cast/zzds;

.field private final synthetic zzzh:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzds;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdu;->zzzg:Lcom/google/android/gms/internal/cast/zzds;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzdu;->zzzh:Ljava/lang/String;

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

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/cast/zzec;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdx;->zza(Lcom/google/android/gms/internal/cast/zzec;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzdy;-><init>(Lcom/google/android/gms/internal/cast/zzdx;Lcom/google/android/gms/internal/cast/zzec;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzdu;->zzzg:Lcom/google/android/gms/internal/cast/zzds;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzds;->zzb(Lcom/google/android/gms/internal/cast/zzds;)Lcom/google/android/gms/internal/cast/zzei;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzdu;->zzzh:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzec;->zza(Lcom/google/android/gms/internal/cast/zzee;Lcom/google/android/gms/internal/cast/zzei;Ljava/lang/String;)V

    return-void
.end method
