.class final Lcom/google/android/gms/internal/cast/zzbn;
.super Lcom/google/android/gms/internal/cast/zzbv;


# instance fields
.field final synthetic zzut:Lcom/google/android/gms/internal/cast/zzbm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbm;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzbv;-><init>(Lcom/google/android/gms/internal/cast/zzbm;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzbm;->zzb(Lcom/google/android/gms/internal/cast/zzbm;)Lcom/google/android/gms/cast/Cast$CastApi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzbm;->zza(Lcom/google/android/gms/internal/cast/zzbm;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/zzcn;->getNamespace()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/cast/zzbo;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/cast/zzbo;-><init>(Lcom/google/android/gms/internal/cast/zzbn;)V

    .line 5
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzbm;->zzc(Lcom/google/android/gms/internal/cast/zzbm;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzbm;->zzd(Lcom/google/android/gms/internal/cast/zzbm;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbn;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    const/16 v2, 0x44c

    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbu;->zzva:Lcom/google/android/gms/internal/cast/zzdn;

    .line 17
    invoke-static {v1, v0, v2, v0, v3}, Lcom/google/android/gms/internal/cast/zzbm;->zza(Lcom/google/android/gms/internal/cast/zzbm;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/cast/zzdn;)V

    return-void

    .line 9
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbu;->zzva:Lcom/google/android/gms/internal/cast/zzdn;

    const-wide/16 v2, -0x1

    const/16 v4, 0x8

    .line 11
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/cast/zzdn;->zza(JILjava/lang/Object;)V

    return-void
.end method
