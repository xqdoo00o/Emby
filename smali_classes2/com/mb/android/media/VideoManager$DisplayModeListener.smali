.class final Lcom/mb/android/media/VideoManager$DisplayModeListener;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lcom/mb/android/media/Display/UhdHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayModeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/VideoManager;


# direct methods
.method private constructor <init>(Lcom/mb/android/media/VideoManager;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/mb/android/media/VideoManager$DisplayModeListener;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mb/android/media/VideoManager;Lcom/mb/android/media/VideoManager$1;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Lcom/mb/android/media/VideoManager$DisplayModeListener;-><init>(Lcom/mb/android/media/VideoManager;)V

    return-void
.end method


# virtual methods
.method public onModeChanged(Lcom/mb/android/media/Display/Display$Mode;)V
    .locals 3

    const/4 p1, 0x0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/VideoManager$DisplayModeListener;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {v0}, Lcom/mb/android/media/VideoManager;->access$100(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const-string v1, "VideoManager.onModeChanged"

    new-array v2, p1, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mb/android/media/VideoManager$DisplayModeListener;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {v1}, Lcom/mb/android/media/VideoManager;->access$400(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/MainActivity;

    move-result-object v1

    const-class v2, Lcom/mb/android/media/MediaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.example.android.uamp.ACTION_CMD"

    .line 366
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CMD_NAME"

    const-string v2, "HANDLE_DISPLAY_MODE_CHANGED"

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/mb/android/media/VideoManager$DisplayModeListener;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {v1}, Lcom/mb/android/media/VideoManager;->access$400(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mb/android/MainActivity;->tryStartService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 373
    iget-object v1, p0, Lcom/mb/android/media/VideoManager$DisplayModeListener;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {v1}, Lcom/mb/android/media/VideoManager;->access$100(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "Error in onModeChanged"

    invoke-interface {v1, v2, v0, p1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
