.class Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;
.super Lcom/google/android/gms/internal/cast/zzcg;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzcg<",
        "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field zzgr:Lcom/google/android/gms/internal/cast/zzdn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/cast/zzbr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/zzbr;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->zzgr:Lcom/google/android/gms/internal/cast/zzdn;

    return-void
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/cast/zzbs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/zzbs;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/cast/zzco;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->zza(Lcom/google/android/gms/internal/cast/zzco;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/cast/zzco;)V
    .locals 0

    return-void
.end method
