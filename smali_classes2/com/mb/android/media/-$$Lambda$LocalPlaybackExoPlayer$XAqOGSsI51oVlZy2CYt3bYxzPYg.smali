.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$XAqOGSsI51oVlZy2CYt3bYxzPYg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$XAqOGSsI51oVlZy2CYt3bYxzPYg;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iput-object p2, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$XAqOGSsI51oVlZy2CYt3bYxzPYg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$XAqOGSsI51oVlZy2CYt3bYxzPYg;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer;

    iget-object v1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$XAqOGSsI51oVlZy2CYt3bYxzPYg;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mb/android/media/LocalPlaybackExoPlayer;->lambda$setRepeatMode$17$LocalPlaybackExoPlayer(Ljava/lang/String;)V

    return-void
.end method
