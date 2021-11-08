.class public final synthetic Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$7E_imk8AGhu0WGIl0rfrmlPe5hg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$7E_imk8AGhu0WGIl0rfrmlPe5hg;->f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    iput-boolean p2, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$7E_imk8AGhu0WGIl0rfrmlPe5hg;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$7E_imk8AGhu0WGIl0rfrmlPe5hg;->f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    iget-boolean v1, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$7E_imk8AGhu0WGIl0rfrmlPe5hg;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->lambda$setReceiverMuted$4$ChromecastPlaybackController(Z)V

    return-void
.end method
