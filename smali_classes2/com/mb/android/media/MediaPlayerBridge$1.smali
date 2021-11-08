.class Lcom/mb/android/media/MediaPlayerBridge$1;
.super Ljava/lang/Object;
.source "MediaPlayerBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/MediaPlayerBridge;->setVideoBrightness(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/MediaPlayerBridge;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaPlayerBridge;F)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/mb/android/media/MediaPlayerBridge$1;->this$0:Lcom/mb/android/media/MediaPlayerBridge;

    iput p2, p0, Lcom/mb/android/media/MediaPlayerBridge$1;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/media/MediaPlayerBridge$1;->this$0:Lcom/mb/android/media/MediaPlayerBridge;

    invoke-static {v0}, Lcom/mb/android/media/MediaPlayerBridge;->access$000(Lcom/mb/android/media/MediaPlayerBridge;)Lcom/mb/android/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mb/android/MainActivity;->getVideoManager()Lcom/mb/android/media/VideoManager;

    move-result-object v0

    iget v1, p0, Lcom/mb/android/media/MediaPlayerBridge$1;->val$value:F

    invoke-virtual {v0, v1}, Lcom/mb/android/media/VideoManager;->setBrightness(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    iget-object v1, p0, Lcom/mb/android/media/MediaPlayerBridge$1;->this$0:Lcom/mb/android/media/MediaPlayerBridge;

    invoke-static {v1}, Lcom/mb/android/media/MediaPlayerBridge;->access$100(Lcom/mb/android/media/MediaPlayerBridge;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error sending command %s to Vlc"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
