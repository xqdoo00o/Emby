.class final Lcom/google/android/gms/cast/zzbe;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;


# instance fields
.field private final synthetic zzfr:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private final synthetic zzfs:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final synthetic zzfx:J

.field private final synthetic zzfy:Lorg/json/JSONObject;

.field private final synthetic zzgf:Z

.field private final synthetic zzgg:[J

.field private final synthetic zzgh:Lcom/google/android/gms/cast/MediaInfo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient;ZJ[JLorg/json/JSONObject;Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzbe;->zzfr:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzbe;->zzfs:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-boolean p4, p0, Lcom/google/android/gms/cast/zzbe;->zzgf:Z

    iput-wide p5, p0, Lcom/google/android/gms/cast/zzbe;->zzfx:J

    iput-object p7, p0, Lcom/google/android/gms/cast/zzbe;->zzgg:[J

    iput-object p8, p0, Lcom/google/android/gms/cast/zzbe;->zzfy:Lorg/json/JSONObject;

    iput-object p9, p0, Lcom/google/android/gms/cast/zzbe;->zzgh:Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/cast/zzco;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->zza(Lcom/google/android/gms/internal/cast/zzco;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/cast/zzco;)V
    .locals 5

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/zzbe;->zzfr:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zze(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbe;->zzfr:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbe;->zzfs:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/gms/cast/zzbe;->zzgf:Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->setAutoplay(Z)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/cast/zzbe;->zzfx:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->setPlayPosition(J)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbe;->zzgg:[J

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->setActiveTrackIds([J)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbe;->zzfy:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->build()Lcom/google/android/gms/cast/MediaLoadOptions;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/cast/zzbe;->zzfr:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzg(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/cast/zzdi;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/cast/zzbe;->zzgr:Lcom/google/android/gms/internal/cast/zzdn;

    iget-object v4, p0, Lcom/google/android/gms/cast/zzbe;->zzgh:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/cast/zzdi;->zza(Lcom/google/android/gms/internal/cast/zzdn;Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaLoadOptions;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbe;->zzfr:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "RemoteMediaPlayer"

    const-string v3, "load - channel error"

    .line 14
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x834

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/zzbe;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbe;->zzfr:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 19
    :goto_0
    monitor-exit p1

    return-void

    .line 18
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/cast/zzbe;->zzfr:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zza;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 19
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
