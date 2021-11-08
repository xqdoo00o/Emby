.class Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;
.super Landroid/os/Handler;
.source "DolbyPassthroughAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;Landroid/os/Looper;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 142
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$300(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "unknown message..ignoring!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$300(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "releasing track"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$901(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$300(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "not in stopped state...stopping"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$1001(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$1101(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V

    .line 138
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$500(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_0

    .line 126
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$300(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "stopping track"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$801(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V

    .line 128
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$500(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$300(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "flushing track"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$701(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V

    .line 122
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$500(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$300(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "playing track"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$601(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V

    .line 116
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$500(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 108
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$300(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pausing track"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$401(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)V

    .line 110
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$500(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 98
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 99
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$000(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)[[B

    move-result-object v2

    aget-object p1, v2, p1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$101(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;[BII)I

    .line 104
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack$1;->this$0:Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;->access$200(Lcom/google/android/exoplayer2/audio/DolbyPassthroughAudioTrack;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
