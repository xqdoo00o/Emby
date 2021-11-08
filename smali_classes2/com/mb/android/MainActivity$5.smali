.class Lcom/mb/android/MainActivity$5;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/mb/android/MainActivity$5;->this$0:Lcom/mb/android/MainActivity;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 657
    iget-object v0, p0, Lcom/mb/android/MainActivity$5;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v0}, Lcom/mb/android/MainActivity;->access$200(Lcom/mb/android/MainActivity;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MediaBrowserCompat.onConnected"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/MainActivity$5;->this$0:Lcom/mb/android/MainActivity;

    iget-object v2, p0, Lcom/mb/android/MainActivity$5;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v2}, Lcom/mb/android/MainActivity;->access$800(Lcom/mb/android/MainActivity;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mb/android/MainActivity;->access$900(Lcom/mb/android/MainActivity;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 661
    iget-object v2, p0, Lcom/mb/android/MainActivity$5;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v2}, Lcom/mb/android/MainActivity;->access$200(Lcom/mb/android/MainActivity;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Could not connect media controller"

    invoke-interface {v2, v3, v0, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 662
    iget-object v0, p0, Lcom/mb/android/MainActivity$5;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v0}, Lcom/mb/android/MainActivity;->access$1000(Lcom/mb/android/MainActivity;)V

    :goto_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 3

    .line 668
    invoke-super {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    .line 670
    iget-object v0, p0, Lcom/mb/android/MainActivity$5;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v0}, Lcom/mb/android/MainActivity;->access$200(Lcom/mb/android/MainActivity;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MediaBrowserCompat.onConnectionFailed"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
