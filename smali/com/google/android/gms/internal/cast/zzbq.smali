.class final Lcom/google/android/gms/internal/cast/zzbq;
.super Lcom/google/android/gms/internal/cast/zzbs;


# instance fields
.field private final synthetic zzut:Lcom/google/android/gms/internal/cast/zzbm;

.field private final synthetic zzuv:Ljava/lang/String;

.field private final synthetic zzuw:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbm;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzuv:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzuw:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzbs;-><init>(Lcom/google/android/gms/internal/cast/zzbm;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzuv:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzuw:Lorg/json/JSONObject;

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbu;->zzva:Lcom/google/android/gms/internal/cast/zzdn;

    const/4 v4, 0x6

    .line 4
    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/cast/zzbm;->zza(Lcom/google/android/gms/internal/cast/zzbm;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/cast/zzdn;)V

    return-void
.end method
