.class final Lcom/google/android/gms/internal/cast/zzdt;
.super Lcom/google/android/gms/internal/cast/zzej;


# instance fields
.field private final synthetic zzzg:Lcom/google/android/gms/internal/cast/zzds;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzzg:Lcom/google/android/gms/internal/cast/zzds;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzej;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzr(I)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzds;->zzds()Lcom/google/android/gms/internal/cast/zzdh;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRemoteDisplayEnded"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdh;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzdt;->zzzg:Lcom/google/android/gms/internal/cast/zzds;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzds;->zza(Lcom/google/android/gms/internal/cast/zzds;)V

    return-void
.end method
