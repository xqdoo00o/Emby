.class public final Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;
.super Landroid/media/AudioTrack;
.source "DolbyPassthroughAudioTrack.java"


# static fields
.field private static final BUFFER_COUNT:I = 0x2

.field private static final MSG_FLUSH_TRACK:I = 0x4

.field private static final MSG_PAUSE_TRACK:I = 0x2

.field private static final MSG_PLAY_TRACK:I = 0x3

.field private static final MSG_RELEASE_TRACK:I = 0x6

.field private static final MSG_STOP_TRACK:I = 0x5

.field private static final MSG_WRITE_TO_TRACK:I = 0x1

.field private static final TRACK_HANDLER_THREAD_NAME:Ljava/lang/String; = "dolbyTrackHandlerThread"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private audioBuffer:[[B

.field private nextBufferIndex:I

.field private pendingWriteSem:Ljava/util/concurrent/Semaphore;

.field private trackHandler:Landroid/os/Handler;

.field private trackHandlerGate:Landroid/os/ConditionVariable;

.field private trackHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 70
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 78
    invoke-direct/range {p0 .. p7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 36
    const-class p1, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerThread:Landroid/os/HandlerThread;

    .line 41
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    .line 56
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->pendingWriteSem:Ljava/util/concurrent/Semaphore;

    .line 57
    check-cast p1, [[B

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->audioBuffer:[[B

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->nextBufferIndex:I

    .line 80
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 36
    const-class p1, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerThread:Landroid/os/HandlerThread;

    .line 41
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    .line 56
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->pendingWriteSem:Ljava/util/concurrent/Semaphore;

    .line 57
    check-cast p1, [[B

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->audioBuffer:[[B

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->nextBufferIndex:I

    .line 64
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)[[B
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->audioBuffer:[[B

    return-object p0
.end method

.method static synthetic access$1001(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method static synthetic access$101(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;[BII)I
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p0

    return p0
.end method

.method static synthetic access$1101(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V
    .locals 0

    .line 34
    invoke-super {p0}, Landroid/media/AudioTrack;->release()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->pendingWriteSem:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$401(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Landroid/os/ConditionVariable;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$601(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Landroid/media/AudioTrack;->play()V

    return-void
.end method

.method static synthetic access$701(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V
    .locals 0

    .line 34
    invoke-super {p0}, Landroid/media/AudioTrack;->flush()V

    return-void
.end method

.method static synthetic access$801(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method static synthetic access$901(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)I
    .locals 0

    .line 34
    invoke-super {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p0

    return p0
.end method

.method private initialize()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dolbyTrackHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerThread:Landroid/os/HandlerThread;

    .line 87
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->pendingWriteSem:Ljava/util/concurrent/Semaphore;

    .line 88
    new-array v0, v1, [[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->audioBuffer:[[B

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;-><init>(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "flush"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerThread:Landroid/os/HandlerThread;

    .line 272
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    .line 273
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    .line 274
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->pendingWriteSem:Ljava/util/concurrent/Semaphore;

    .line 275
    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->audioBuffer:[[B

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "already in stopped state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandlerGate:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public write([BII)I
    .locals 4

    .line 230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 231
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->TAG:Ljava/lang/String;

    const-string p2, "not in play state..not writing buffer now..."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->pendingWriteSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->audioBuffer:[[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->nextBufferIndex:I

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v0, v0, v2

    array-length v0, v0

    if-ge v0, p3, :cond_3

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->audioBuffer:[[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->nextBufferIndex:I

    new-array v3, p3, [B

    aput-object v3, v0, v2

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->audioBuffer:[[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->nextBufferIndex:I

    aget-object v0, v0, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    iget p2, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->nextBufferIndex:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 249
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->trackHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    iget p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->nextBufferIndex:I

    add-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->nextBufferIndex:I

    return p3
.end method
