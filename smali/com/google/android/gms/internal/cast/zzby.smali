.class final Lcom/google/android/gms/internal/cast/zzby;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;


# instance fields
.field private final zzgt:Lcom/google/android/gms/common/api/Status;

.field private final zzvd:Ljava/lang/String;

.field private final zzve:J

.field private final zzvf:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzby;->zzgt:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzby;->zzvd:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/internal/cast/zzby;->zzve:J

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzby;->zzvf:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final getExtraMessageData()Lorg/json/JSONObject;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzby;->zzvf:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzby;->zzvd:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestId()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzby;->zzve:J

    return-wide v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzby;->zzgt:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
