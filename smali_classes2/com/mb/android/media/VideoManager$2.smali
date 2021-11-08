.class Lcom/mb/android/media/VideoManager$2;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 378
    iput-object p1, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {v0}, Lcom/mb/android/media/VideoManager;->access$100(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoManager.surfaceChanged"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {v0, p1}, Lcom/mb/android/media/VideoManager;->access$502(Lcom/mb/android/media/VideoManager;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 396
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {v0}, Lcom/mb/android/media/VideoManager;->access$400(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/MainActivity;

    move-result-object v0

    const-class v2, Lcom/mb/android/media/MediaService;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.example.android.uamp.ACTION_CMD"

    .line 397
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CMD_NAME"

    const-string v2, "HANDLE_SURFACE_CHANGED"

    .line 399
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "format"

    .line 400
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "width"

    .line 401
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "height"

    .line 402
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    iget-object p2, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {p2}, Lcom/mb/android/media/VideoManager;->access$400(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/MainActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 407
    iget-object p2, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {p2}, Lcom/mb/android/media/VideoManager;->access$100(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "Error in surfaceChanged"

    invoke-interface {p2, p4, p1, p3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {v0}, Lcom/mb/android/media/VideoManager;->access$100(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoManager.surfaceCreated"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {v0, p1}, Lcom/mb/android/media/VideoManager;->access$502(Lcom/mb/android/media/VideoManager;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 384
    iget-object v0, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mb/android/media/VideoManager;->access$600(Lcom/mb/android/media/VideoManager;Landroid/view/Surface;)V

    .line 385
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mb/android/media/VideoManager;->access$702(Lcom/mb/android/media/VideoManager;Z)Z

    .line 386
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {p1, v1}, Lcom/mb/android/media/VideoManager;->access$800(Lcom/mb/android/media/VideoManager;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 414
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {p1}, Lcom/mb/android/media/VideoManager;->access$100(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoManager.surfaceDestroyed"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$2;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {p1}, Lcom/mb/android/media/VideoManager;->access$900(Lcom/mb/android/media/VideoManager;)V

    return-void
.end method
