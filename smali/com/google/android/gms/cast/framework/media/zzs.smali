.class final Lcom/google/android/gms/cast/framework/media/zzs;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;


# instance fields
.field private final synthetic zzfy:Lorg/json/JSONObject;

.field private final synthetic zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final synthetic zzpf:D


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;DLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-wide p3, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zzpf:D

    iput-object p5, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zzfy:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/cast/zzco;)V
    .locals 5

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/cast/zzdi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zzgr:Lcom/google/android/gms/internal/cast/zzdn;

    iget-wide v2, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zzpf:D

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/zzs;->zzfy:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/cast/zzdi;->zzb(Lcom/google/android/gms/internal/cast/zzdn;DLorg/json/JSONObject;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/cast/zzdl; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 6
    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzs;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 7
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
