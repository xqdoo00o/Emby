.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$57aKgQi1sm_7fo_ESFXtpC-BwZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$57aKgQi1sm_7fo_ESFXtpC-BwZc;->f$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iput-object p2, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$57aKgQi1sm_7fo_ESFXtpC-BwZc;->f$1:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$57aKgQi1sm_7fo_ESFXtpC-BwZc;->f$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$57aKgQi1sm_7fo_ESFXtpC-BwZc;->f$1:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$null$1$ExoPlayerImpl(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method
