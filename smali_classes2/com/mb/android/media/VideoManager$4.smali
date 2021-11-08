.class Lcom/mb/android/media/VideoManager$4;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 515
    iput-object p1, p0, Lcom/mb/android/media/VideoManager$4;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/mb/android/media/VideoManager$4;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {v0}, Lcom/mb/android/media/VideoManager;->access$1100(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 519
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$4;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {p1}, Lcom/mb/android/media/VideoManager;->access$100(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Presentation was dismissed."

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$4;->this$0:Lcom/mb/android/media/VideoManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mb/android/media/VideoManager;->access$1102(Lcom/mb/android/media/VideoManager;Lcom/mb/android/media/VideoManager$SecondaryDisplay;)Lcom/mb/android/media/VideoManager$SecondaryDisplay;

    :cond_0
    return-void
.end method
