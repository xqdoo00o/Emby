.class final Lcom/google/android/gms/cast/framework/media/widget/zzc;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic zztr:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

.field final synthetic zzts:Lcom/google/android/gms/cast/AdBreakClipInfo;

.field final synthetic zztt:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Lcom/google/android/gms/cast/AdBreakClipInfo;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/zzc;->zztr:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/zzc;->zzts:Lcom/google/android/gms/cast/AdBreakClipInfo;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/widget/zzc;->zztt:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/cast/zzek;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzek;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance v1, Lcom/google/android/gms/cast/framework/media/widget/zzd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzd;-><init>(Lcom/google/android/gms/cast/framework/media/widget/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
