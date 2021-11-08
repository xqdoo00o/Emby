.class public Lcom/google/android/gms/cast/framework/PrecacheManager;
.super Ljava/lang/Object;


# instance fields
.field private final zzbe:Lcom/google/android/gms/internal/cast/zzdh;

.field private final zzhj:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final zzhn:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zziu:Lcom/google/android/gms/internal/cast/zzci;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/cast/zzci;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/cast/framework/CastOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/cast/framework/SessionManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/cast/zzci;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdh;

    const-string v1, "PrecacheManager"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdh;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzhn:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzhj:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zziu:Lcom/google/android/gms/internal/cast/zzci;

    return-void
.end method


# virtual methods
.method public precache(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzhj:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentSession()Lcom/google/android/gms/cast/framework/Session;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zziu:Lcom/google/android/gms/internal/cast/zzci;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzhn:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 14
    invoke-virtual {v0, v3, p1, v1}, Lcom/google/android/gms/internal/cast/zzci;->zza([Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 15
    :cond_0
    instance-of v3, v0, Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v3, :cond_2

    .line 16
    check-cast v0, Lcom/google/android/gms/cast/framework/CastSession;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    return-void

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Failed to get RemoteMediaClient from current cast session."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/PrecacheManager;->zzbe:Lcom/google/android/gms/internal/cast/zzdh;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Current session is not a CastSession. Precache is not supported."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdh;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No precache data found to be precached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
