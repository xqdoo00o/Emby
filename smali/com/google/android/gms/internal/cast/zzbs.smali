.class public abstract Lcom/google/android/gms/internal/cast/zzbs;
.super Lcom/google/android/gms/internal/cast/zzbu;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzbu<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzut:Lcom/google/android/gms/internal/cast/zzbm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzbm;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbs;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzbu;-><init>(Lcom/google/android/gms/internal/cast/zzbm;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzbt;-><init>(Lcom/google/android/gms/internal/cast/zzbs;Lcom/google/android/gms/internal/cast/zzbm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbs;->zzva:Lcom/google/android/gms/internal/cast/zzdn;

    return-void
.end method

.method public static a_(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;
    .locals 7

    .line 4
    new-instance v6, Lcom/google/android/gms/internal/cast/zzby;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/zzby;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-object v6
.end method


# virtual methods
.method public synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzbs;->a_(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p1

    return-object p1
.end method
