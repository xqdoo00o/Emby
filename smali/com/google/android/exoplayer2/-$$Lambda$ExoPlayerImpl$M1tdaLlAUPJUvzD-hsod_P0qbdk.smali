.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$M1tdaLlAUPJUvzD-hsod_P0qbdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/Player;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$M1tdaLlAUPJUvzD-hsod_P0qbdk;->f$0:Lcom/google/android/exoplayer2/Player;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/MutableFlags;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$M1tdaLlAUPJUvzD-hsod_P0qbdk;->f$0:Lcom/google/android/exoplayer2/Player;

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    check-cast p2, Lcom/google/android/exoplayer2/Player$Events;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$new$0(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method
