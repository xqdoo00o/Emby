.class Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;
.super Landroidx/media/VolumeProviderCompat;
.source "RemotePlaybackDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/RemotePlaybackDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteVolumeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/RemotePlaybackDefault;


# direct methods
.method public constructor <init>(Lcom/mb/android/media/RemotePlaybackDefault;III)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;->this$0:Lcom/mb/android/media/RemotePlaybackDefault;

    .line 267
    invoke-direct {p0, p2, p3, p4}, Landroidx/media/VolumeProviderCompat;-><init>(III)V

    return-void
.end method

.method private setCurrentVolumeInternal(I)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;->this$0:Lcom/mb/android/media/RemotePlaybackDefault;

    invoke-static {v0}, Lcom/mb/android/media/RemotePlaybackDefault;->access$000(Lcom/mb/android/media/RemotePlaybackDefault;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RemotePlayback VolumeProvider.setCurrentVolumeInternal %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-virtual {p0, p1}, Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;->setCurrentVolume(I)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;->this$0:Lcom/mb/android/media/RemotePlaybackDefault;

    invoke-static {v0}, Lcom/mb/android/media/RemotePlaybackDefault;->access$000(Lcom/mb/android/media/RemotePlaybackDefault;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "RemotePlayback VolumeProvider.onAdjustVolume %s"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 298
    iget-object p1, p0, Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;->this$0:Lcom/mb/android/media/RemotePlaybackDefault;

    invoke-static {p1}, Lcom/mb/android/media/RemotePlaybackDefault;->access$100(Lcom/mb/android/media/RemotePlaybackDefault;)Lcom/mb/android/media/MediaService$UIMessenger;

    move-result-object p1

    const-string v0, "volumeup"

    invoke-interface {p1, v0}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 300
    iget-object p1, p0, Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;->this$0:Lcom/mb/android/media/RemotePlaybackDefault;

    invoke-static {p1}, Lcom/mb/android/media/RemotePlaybackDefault;->access$100(Lcom/mb/android/media/RemotePlaybackDefault;)Lcom/mb/android/media/MediaService$UIMessenger;

    move-result-object p1

    const-string v0, "volumedown"

    invoke-interface {p1, v0}, Lcom/mb/android/media/MediaService$UIMessenger;->sendCommand(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;->this$0:Lcom/mb/android/media/RemotePlaybackDefault;

    invoke-static {v0}, Lcom/mb/android/media/RemotePlaybackDefault;->access$000(Lcom/mb/android/media/RemotePlaybackDefault;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RemotePlayback VolumeProvider.onSetVolumeTo %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "require([\'playbackManager\'], function(playbackManager){playbackManager.setVolume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;->this$0:Lcom/mb/android/media/RemotePlaybackDefault;

    invoke-static {v1}, Lcom/mb/android/media/RemotePlaybackDefault;->access$100(Lcom/mb/android/media/RemotePlaybackDefault;)Lcom/mb/android/media/MediaService$UIMessenger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mb/android/media/MediaService$UIMessenger;->sendMessage(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/mb/android/media/RemotePlaybackDefault$RemoteVolumeProvider;->setCurrentVolumeInternal(I)V

    return-void
.end method
