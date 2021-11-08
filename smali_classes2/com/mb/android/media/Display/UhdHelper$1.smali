.class Lcom/mb/android/media/Display/UhdHelper$1;
.super Ljava/lang/Object;
.source "UhdHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/Display/UhdHelper;->setPreferredDisplayModeId(Landroid/view/Window;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/Display/UhdHelper;


# direct methods
.method constructor <init>(Lcom/mb/android/media/Display/UhdHelper;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$1;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper$1;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    iget-object v0, v0, Lcom/mb/android/media/Display/UhdHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 425
    invoke-static {}, Lcom/mb/android/media/Display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged. id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 425
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$1;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {p1}, Lcom/mb/android/media/Display/UhdHelper;->access$800(Lcom/mb/android/media/Display/UhdHelper;)Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
