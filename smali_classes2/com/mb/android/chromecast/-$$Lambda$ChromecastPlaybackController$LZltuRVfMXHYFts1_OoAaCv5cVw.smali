.class public final synthetic Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$LZltuRVfMXHYFts1_OoAaCv5cVw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$LZltuRVfMXHYFts1_OoAaCv5cVw;->f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$LZltuRVfMXHYFts1_OoAaCv5cVw;->f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    invoke-virtual {v0}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->lambda$stopVolumeListener$7$ChromecastPlaybackController()V

    return-void
.end method
