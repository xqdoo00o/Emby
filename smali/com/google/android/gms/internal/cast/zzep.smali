.class public abstract Lcom/google/android/gms/internal/cast/zzep;
.super Ljava/lang/Object;


# static fields
.field private static final zzzv:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/android/gms/internal/cast/zzep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/cast/zzeq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzeq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzep;->zzzv:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzdu()Lcom/google/android/gms/internal/cast/zzep;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/cast/zzep;->zzzv:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzep;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/cast/zzer;)V
.end method
