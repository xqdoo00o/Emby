.class final Lcom/google/android/gms/internal/cast/zzbw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzdn;


# instance fields
.field private final synthetic zzuy:Lcom/google/android/gms/internal/cast/zzbm;

.field private final synthetic zzvc:Lcom/google/android/gms/internal/cast/zzbv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbv;Lcom/google/android/gms/internal/cast/zzbm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzvc:Lcom/google/android/gms/internal/cast/zzbv;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzuy:Lcom/google/android/gms/internal/cast/zzbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 5

    const-string p1, "1.0.0"

    const/4 p2, 0x0

    if-nez p4, :cond_0

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzvc:Lcom/google/android/gms/internal/cast/zzbv;

    new-instance p4, Lcom/google/android/gms/internal/cast/zzbx;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p3, p2, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzvc:Lcom/google/android/gms/internal/cast/zzbv;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzbv;->zza(Lcom/google/android/gms/internal/cast/zzbv;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object p2

    invoke-direct {p4, v0, p2}, Lcom/google/android/gms/internal/cast/zzbx;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    .line 7
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/cast/zzbv;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .line 9
    :cond_0
    check-cast p4, Lcom/google/android/gms/internal/cast/zzca;

    .line 11
    iget-object v0, p4, Lcom/google/android/gms/internal/cast/zzca;->zzvu:Lcom/google/android/gms/internal/cast/zzbz;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzbz;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/cast/zzcv;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzvc:Lcom/google/android/gms/internal/cast/zzbv;

    iget-object p3, p3, Lcom/google/android/gms/internal/cast/zzbv;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/cast/zzbm;->zza(Lcom/google/android/gms/internal/cast/zzbm;Lcom/google/android/gms/internal/cast/zzbz;)Lcom/google/android/gms/internal/cast/zzbz;

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzvc:Lcom/google/android/gms/internal/cast/zzbv;

    new-instance p3, Lcom/google/android/gms/common/api/Status;

    const/16 p4, 0x866

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Incorrect Game Manager SDK version. Receiver: %s Sender: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzbz;->getVersion()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    .line 19
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 20
    invoke-static {p3}, Lcom/google/android/gms/internal/cast/zzbv;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p1

    .line 21
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzbv;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzvc:Lcom/google/android/gms/internal/cast/zzbv;

    new-instance v0, Lcom/google/android/gms/internal/cast/zzbx;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 24
    iget-object p4, p4, Lcom/google/android/gms/internal/cast/zzca;->zzvk:Ljava/lang/String;

    .line 25
    invoke-direct {v1, p3, p4, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzvc:Lcom/google/android/gms/internal/cast/zzbv;

    .line 26
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzbv;->zza(Lcom/google/android/gms/internal/cast/zzbv;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzbx;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzbv;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 30
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzvc:Lcom/google/android/gms/internal/cast/zzbv;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0xd

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzbv;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzbv;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zzb(J)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzvc:Lcom/google/android/gms/internal/cast/zzbv;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x837

    invoke-direct {p2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzbv;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzbv;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
