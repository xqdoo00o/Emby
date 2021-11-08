.class public final synthetic Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$PlayerListener$Fz_jG0SM52A2CAOVaoBISdPotvk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$PlayerListener$Fz_jG0SM52A2CAOVaoBISdPotvk;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$LocalPlaybackExoPlayer$PlayerListener$Fz_jG0SM52A2CAOVaoBISdPotvk;->f$0:Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;

    invoke-virtual {v0}, Lcom/mb/android/media/LocalPlaybackExoPlayer$PlayerListener;->lambda$onPlaybackStart$0$LocalPlaybackExoPlayer$PlayerListener()V

    return-void
.end method
