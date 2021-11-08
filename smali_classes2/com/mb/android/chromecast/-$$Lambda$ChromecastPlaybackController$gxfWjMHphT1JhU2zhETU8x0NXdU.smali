.class public final synthetic Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$gxfWjMHphT1JhU2zhETU8x0NXdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

.field private final synthetic f$1:Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$gxfWjMHphT1JhU2zhETU8x0NXdU;->f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    iput-object p2, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$gxfWjMHphT1JhU2zhETU8x0NXdU;->f$1:Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$gxfWjMHphT1JhU2zhETU8x0NXdU;->f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    iget-object v1, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$gxfWjMHphT1JhU2zhETU8x0NXdU;->f$1:Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;

    invoke-virtual {v0, v1}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->lambda$startVolumeListener$6$ChromecastPlaybackController(Lcom/mb/android/chromecast/ChromecastPlaybackController$VolumeChangedListener;)V

    return-void
.end method
