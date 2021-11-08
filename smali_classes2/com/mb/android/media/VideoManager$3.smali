.class Lcom/mb/android/media/VideoManager$3;
.super Landroid/content/BroadcastReceiver;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/VideoManager;


# direct methods
.method constructor <init>(Lcom/mb/android/media/VideoManager;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/mb/android/media/VideoManager$3;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$VideoManager$3(Landroid/content/Intent;)V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/mb/android/media/VideoManager$3;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {v0}, Lcom/mb/android/media/VideoManager;->access$1000(Lcom/mb/android/media/VideoManager;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    const-string v1, "aspectRatio"

    const v2, 0x3fe38e39

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 423
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "videoAspectChanged"

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$3;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {p1}, Lcom/mb/android/media/VideoManager;->access$400(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/MainActivity;

    move-result-object p1

    new-instance v0, Lcom/mb/android/media/-$$Lambda$VideoManager$3$ew84qY3xNiypMfIb-fNImFRxtcg;

    invoke-direct {v0, p0, p2}, Lcom/mb/android/media/-$$Lambda$VideoManager$3$ew84qY3xNiypMfIb-fNImFRxtcg;-><init>(Lcom/mb/android/media/VideoManager$3;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/mb/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
