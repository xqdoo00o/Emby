.class final Lcom/google/android/gms/internal/cast/zzba;
.super Lcom/google/android/gms/cast/Cast$Listener;


# instance fields
.field private final synthetic zzrv:Lcom/google/android/gms/internal/cast/zzaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzaz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzba;->zzrv:Lcom/google/android/gms/internal/cast/zzaz;

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVolumeChanged()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzba;->zzrv:Lcom/google/android/gms/internal/cast/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzaz;->zzcp()V

    return-void
.end method
