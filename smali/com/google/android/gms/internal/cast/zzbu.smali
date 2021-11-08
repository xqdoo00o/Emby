.class public abstract Lcom/google/android/gms/internal/cast/zzbu;
.super Lcom/google/android/gms/internal/cast/zzcg;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/cast/zzcg<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected zzva:Lcom/google/android/gms/internal/cast/zzdn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzbm;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbm;->zza(Lcom/google/android/gms/internal/cast/zzbm;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzbu;->execute()V

    return-void
.end method

.method public abstract execute()V
.end method
