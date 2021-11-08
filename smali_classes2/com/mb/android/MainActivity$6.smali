.class Lcom/mb/android/MainActivity$6;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
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

    .line 710
    iput-object p1, p0, Lcom/mb/android/MainActivity$6;->this$0:Lcom/mb/android/MainActivity;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .line 728
    iget-object p1, p0, Lcom/mb/android/MainActivity$6;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$200(Lcom/mb/android/MainActivity;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MediaControllerCompat.Callback.onMetadataChanged"

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    iget-object p1, p0, Lcom/mb/android/MainActivity$6;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$1200(Lcom/mb/android/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 731
    iget-object p1, p0, Lcom/mb/android/MainActivity$6;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$1300(Lcom/mb/android/MainActivity;)V

    goto :goto_0

    .line 735
    :cond_0
    iget-object p1, p0, Lcom/mb/android/MainActivity$6;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$1000(Lcom/mb/android/MainActivity;)V

    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1
    .param p1    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 714
    iget-object v0, p0, Lcom/mb/android/MainActivity$6;->this$0:Lcom/mb/android/MainActivity;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    invoke-static {v0, p1}, Lcom/mb/android/MainActivity;->access$1102(Lcom/mb/android/MainActivity;I)I

    .line 716
    iget-object p1, p0, Lcom/mb/android/MainActivity$6;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$1200(Lcom/mb/android/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 717
    iget-object p1, p0, Lcom/mb/android/MainActivity$6;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$1300(Lcom/mb/android/MainActivity;)V

    goto :goto_0

    .line 721
    :cond_0
    iget-object p1, p0, Lcom/mb/android/MainActivity$6;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$1000(Lcom/mb/android/MainActivity;)V

    :goto_0
    return-void
.end method
