.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$ggx54Bdp-yzeftpxPbgsKIg0T-k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$ggx54Bdp-yzeftpxPbgsKIg0T-k;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$ggx54Bdp-yzeftpxPbgsKIg0T-k;->f$0:I

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$7(ILcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
