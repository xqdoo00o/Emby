.class Lcom/mb/android/media/MediaService$4;
.super Landroid/content/BroadcastReceiver;
.source "MediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/MediaService;->registerCarConnectionReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/MediaService;


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaService;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/mb/android/media/MediaService$4;->this$0:Lcom/mb/android/media/MediaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "media_connection_status"

    .line 671
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 672
    iget-object p2, p0, Lcom/mb/android/media/MediaService$4;->this$0:Lcom/mb/android/media/MediaService;

    const-string v0, "media_connected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/mb/android/media/MediaService;->access$202(Lcom/mb/android/media/MediaService;Z)Z

    .line 673
    iget-object p2, p0, Lcom/mb/android/media/MediaService$4;->this$0:Lcom/mb/android/media/MediaService;

    invoke-static {p2}, Lcom/mb/android/media/MediaService;->access$300(Lcom/mb/android/media/MediaService;)Lcom/mb/android/media/PlaybackManager;

    move-result-object p2

    iget-object v0, p0, Lcom/mb/android/media/MediaService$4;->this$0:Lcom/mb/android/media/MediaService;

    invoke-static {v0}, Lcom/mb/android/media/MediaService;->access$200(Lcom/mb/android/media/MediaService;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mb/android/media/PlaybackManager;->setIsCarPlay(Z)V

    .line 674
    iget-object p2, p0, Lcom/mb/android/media/MediaService$4;->this$0:Lcom/mb/android/media/MediaService;

    invoke-static {p2}, Lcom/mb/android/media/MediaService;->access$000(Lcom/mb/android/media/MediaService;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v1, " isConnectedToCar="

    aput-object v1, v0, p1

    iget-object p1, p0, Lcom/mb/android/media/MediaService$4;->this$0:Lcom/mb/android/media/MediaService;

    invoke-static {p1}, Lcom/mb/android/media/MediaService;->access$200(Lcom/mb/android/media/MediaService;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "Connection event to Android Auto: "

    invoke-interface {p2, p1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
