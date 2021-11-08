.class Lcom/mb/android/media/mpv/MpvEventObserver$1;
.super Lcom/mb/android/media/DefaultStreamVolumeObserver;
.source "MpvEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/mpv/MpvEventObserver;-><init>(Lcom/mb/android/model/logging/ILogger;Landroid/content/Context;Lcom/mb/android/media/MediaService$UIMessenger;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/mpv/MpvEventObserver;


# direct methods
.method constructor <init>(Lcom/mb/android/media/mpv/MpvEventObserver;Landroid/content/Context;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mb/android/media/mpv/MpvEventObserver$1;->this$0:Lcom/mb/android/media/mpv/MpvEventObserver;

    invoke-direct {p0, p2}, Lcom/mb/android/media/DefaultStreamVolumeObserver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(II)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 58
    iget-object p2, p0, Lcom/mb/android/media/mpv/MpvEventObserver$1;->this$0:Lcom/mb/android/media/mpv/MpvEventObserver;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    invoke-static {p2}, Lcom/mb/android/media/mpv/MpvEventObserver;->access$000(Lcom/mb/android/media/mpv/MpvEventObserver;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s.notifyVolumeChange(%d, true);"

    .line 58
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mb/android/media/mpv/MpvEventObserver;->access$100(Lcom/mb/android/media/mpv/MpvEventObserver;Ljava/lang/String;)V

    return-void
.end method
