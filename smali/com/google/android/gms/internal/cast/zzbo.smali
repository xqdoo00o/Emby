.class final Lcom/google/android/gms/internal/cast/zzbo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# instance fields
.field private final synthetic zzuu:Lcom/google/android/gms/internal/cast/zzbn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbo;->zzuu:Lcom/google/android/gms/internal/cast/zzbn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbo;->zzuu:Lcom/google/android/gms/internal/cast/zzbn;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzbn;->zzut:Lcom/google/android/gms/internal/cast/zzbm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/cast/zzcn;->zzn(Ljava/lang/String;)V

    return-void
.end method
