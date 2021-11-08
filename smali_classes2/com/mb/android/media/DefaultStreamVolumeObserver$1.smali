.class Lcom/mb/android/media/DefaultStreamVolumeObserver$1;
.super Landroid/database/ContentObserver;
.source "DefaultStreamVolumeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/DefaultStreamVolumeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/DefaultStreamVolumeObserver;


# direct methods
.method constructor <init>(Lcom/mb/android/media/DefaultStreamVolumeObserver;Landroid/os/Handler;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver$1;->this$0:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 21
    iget-object p1, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver$1;->this$0:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    invoke-static {p1}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->access$000(Lcom/mb/android/media/DefaultStreamVolumeObserver;)I

    move-result p1

    .line 22
    iget-object v0, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver$1;->this$0:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    invoke-static {v0}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->access$100(Lcom/mb/android/media/DefaultStreamVolumeObserver;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver$1;->this$0:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    invoke-static {v0, p1}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->access$102(Lcom/mb/android/media/DefaultStreamVolumeObserver;I)I

    .line 24
    iget-object v0, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver$1;->this$0:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    invoke-virtual {v0}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->getMaxVolume()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    mul-float p1, p1, v1

    .line 25
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 26
    iget-object v0, p0, Lcom/mb/android/media/DefaultStreamVolumeObserver$1;->this$0:Lcom/mb/android/media/DefaultStreamVolumeObserver;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcom/mb/android/media/DefaultStreamVolumeObserver;->onVolumeChanged(II)V

    :cond_0
    return-void
.end method
