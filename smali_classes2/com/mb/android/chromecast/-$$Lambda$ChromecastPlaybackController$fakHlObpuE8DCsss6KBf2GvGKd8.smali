.class public final synthetic Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$fakHlObpuE8DCsss6KBf2GvGKd8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

.field private final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$fakHlObpuE8DCsss6KBf2GvGKd8;->f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    iput-wide p2, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$fakHlObpuE8DCsss6KBf2GvGKd8;->f$1:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$fakHlObpuE8DCsss6KBf2GvGKd8;->f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    iget-wide v1, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$fakHlObpuE8DCsss6KBf2GvGKd8;->f$1:D

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->lambda$setReceiverVolume$1$ChromecastPlaybackController(D)V

    return-void
.end method
