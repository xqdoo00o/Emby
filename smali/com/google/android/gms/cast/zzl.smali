.class final Lcom/google/android/gms/cast/zzl;
.super Lcom/google/android/gms/internal/cast/zzcz;


# instance fields
.field private final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/cast/zzl;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzcz;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/cast/zzco;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcz;->zza(Lcom/google/android/gms/internal/cast/zzco;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzco;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/zzl;->val$sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x7d1

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    const-string v2, "IllegalArgument: sessionId cannot be null or empty"

    invoke-direct {p1, v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzl;->val$sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/cast/zzco;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cast/zzcg;->zzk(I)V

    return-void
.end method
