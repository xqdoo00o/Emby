.class final Lcom/google/android/gms/internal/cast/zzeo;
.super Lcom/google/android/gms/internal/cast/zzer;


# instance fields
.field private final synthetic zzzu:Lcom/google/android/gms/internal/cast/zzen;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzeo;->zzzu:Lcom/google/android/gms/internal/cast/zzen;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzer;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzeo;->zzzu:Lcom/google/android/gms/internal/cast/zzen;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzen;->zza(Lcom/google/android/gms/internal/cast/zzen;)I

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzeo;->zzzu:Lcom/google/android/gms/internal/cast/zzen;

    iget-object p2, p1, Lcom/google/android/gms/internal/cast/zzen;->animator:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzem;->zzb(Landroid/animation/Animator;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzeo;->zzzu:Lcom/google/android/gms/internal/cast/zzen;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzen;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzeo;->zzzu:Lcom/google/android/gms/internal/cast/zzen;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzen;->zzb(Lcom/google/android/gms/internal/cast/zzen;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzeo;->zzzu:Lcom/google/android/gms/internal/cast/zzen;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzen;->zzc(Lcom/google/android/gms/internal/cast/zzen;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzeo;->zzzu:Lcom/google/android/gms/internal/cast/zzen;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzen;->zzc(Lcom/google/android/gms/internal/cast/zzen;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzeo;->zzzu:Lcom/google/android/gms/internal/cast/zzen;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzen;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method
