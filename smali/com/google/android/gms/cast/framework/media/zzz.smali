.class final Lcom/google/android/gms/cast/framework/media/zzz;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;


# instance fields
.field private final synthetic zzfx:J

.field private final synthetic zzfy:Lorg/json/JSONObject;

.field private final synthetic zzga:I

.field private final synthetic zzgb:Lcom/google/android/gms/cast/MediaQueueItem;

.field private final synthetic zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaQueueItem;IJLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzgb:Lcom/google/android/gms/cast/MediaQueueItem;

    iput p4, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzga:I

    iput-wide p5, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzfx:J

    iput-object p7, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzfy:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/cast/zzco;)V
    .locals 10

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzf(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzpe:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/cast/zzdi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzgr:Lcom/google/android/gms/internal/cast/zzdn;

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzgb:Lcom/google/android/gms/cast/MediaQueueItem;

    aput-object v4, v3, v0

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzga:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzfx:J

    iget-object v9, p0, Lcom/google/android/gms/cast/framework/media/zzz;->zzfy:Lorg/json/JSONObject;

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/cast/zzdi;->zza(Lcom/google/android/gms/internal/cast/zzdn;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzz;->setResult(Lcom/google/android/gms/common/api/Result;)V

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
