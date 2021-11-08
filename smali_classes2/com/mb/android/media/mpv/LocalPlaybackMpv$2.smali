.class Lcom/mb/android/media/mpv/LocalPlaybackMpv$2;
.super Ljava/lang/Object;
.source "LocalPlaybackMpv.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/mpv/LocalPlaybackMpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;


# direct methods
.method constructor <init>(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$2;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 942
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$2;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$202(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)I

    goto :goto_1

    .line 956
    :cond_1
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$2;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p1, v2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$202(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)I

    goto :goto_1

    .line 951
    :cond_2
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$2;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p1, v2}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$202(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)I

    .line 952
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$2;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {}, Lcom/mb/android/media/mpv/MPVInstance;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$2;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-virtual {v0}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$302(Lcom/mb/android/media/mpv/LocalPlaybackMpv;Z)Z

    goto :goto_1

    .line 946
    :cond_4
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$2;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p1, v1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$202(Lcom/mb/android/media/mpv/LocalPlaybackMpv;I)I

    .line 961
    :goto_1
    iget-object p1, p0, Lcom/mb/android/media/mpv/LocalPlaybackMpv$2;->this$0:Lcom/mb/android/media/mpv/LocalPlaybackMpv;

    invoke-static {p1}, Lcom/mb/android/media/mpv/LocalPlaybackMpv;->access$400(Lcom/mb/android/media/mpv/LocalPlaybackMpv;)V

    return-void
.end method
