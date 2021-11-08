.class Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;
.super Landroidx/media/VolumeProviderCompat;
.source "RemotePlaybackChromecast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/chromecast/RemotePlaybackChromecast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteVolumeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/chromecast/RemotePlaybackChromecast;


# direct methods
.method public constructor <init>(Lcom/mb/android/chromecast/RemotePlaybackChromecast;III)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;->this$0:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    .line 343
    invoke-direct {p0, p2, p3, p4}, Landroidx/media/VolumeProviderCompat;-><init>(III)V

    return-void
.end method

.method private setCurrentVolumeInternal(I)V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;->this$0:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    invoke-static {v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->access$000(Lcom/mb/android/chromecast/RemotePlaybackChromecast;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RemotePlayback VolumeProvider.setCurrentVolumeInternal %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    invoke-virtual {p0, p1}, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;->setCurrentVolume(I)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;->this$0:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    invoke-static {v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->access$000(Lcom/mb/android/chromecast/RemotePlaybackChromecast;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "RemotePlayback VolumeProvider.onAdjustVolume %s"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;->this$0:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    invoke-static {v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->access$100(Lcom/mb/android/chromecast/RemotePlaybackChromecast;)Lcom/mb/android/chromecast/ChromecastPlaybackController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 375
    iget-object p1, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;->this$0:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    invoke-static {p1}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->access$100(Lcom/mb/android/chromecast/RemotePlaybackChromecast;)Lcom/mb/android/chromecast/ChromecastPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->volumeUp()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 377
    iget-object p1, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;->this$0:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    invoke-static {p1}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->access$100(Lcom/mb/android/chromecast/RemotePlaybackChromecast;)Lcom/mb/android/chromecast/ChromecastPlaybackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->volumeDown()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;->this$0:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    invoke-static {v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->access$000(Lcom/mb/android/chromecast/RemotePlaybackChromecast;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RemotePlayback VolumeProvider.onSetVolumeTo %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;->this$0:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    invoke-static {v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->access$100(Lcom/mb/android/chromecast/RemotePlaybackChromecast;)Lcom/mb/android/chromecast/ChromecastPlaybackController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;->this$0:Lcom/mb/android/chromecast/RemotePlaybackChromecast;

    invoke-static {v0}, Lcom/mb/android/chromecast/RemotePlaybackChromecast;->access$100(Lcom/mb/android/chromecast/RemotePlaybackChromecast;)Lcom/mb/android/chromecast/ChromecastPlaybackController;

    move-result-object v0

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->setReceiverVolume(D)V

    .line 359
    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/RemotePlaybackChromecast$RemoteVolumeProvider;->setCurrentVolumeInternal(I)V

    return-void
.end method
