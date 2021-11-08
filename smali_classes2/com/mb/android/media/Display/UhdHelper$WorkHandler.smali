.class Lcom/mb/android/media/Display/UhdHelper$WorkHandler;
.super Landroid/os/Handler;
.source "UhdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/Display/UhdHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field private mCallbackListener:Lcom/mb/android/media/Display/UhdHelperListener;

.field private mRequestedModeId:I

.field final synthetic this$0:Lcom/mb/android/media/Display/UhdHelper;


# direct methods
.method public constructor <init>(Lcom/mb/android/media/Display/UhdHelper;Landroid/os/Looper;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    .line 97
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mb/android/media/Display/UhdHelper$WorkHandler;Lcom/mb/android/media/Display/UhdHelperListener;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->setCallbackListener(Lcom/mb/android/media/Display/UhdHelperListener;)V

    return-void
.end method

.method private doPostModeSetCleanup()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {v0}, Lcom/mb/android/media/Display/UhdHelper;->access$400(Lcom/mb/android/media/Display/UhdHelper;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/mb/android/media/Display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Tearing down the overlay Post mode switch attempt."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {v0, v1}, Lcom/mb/android/media/Display/UhdHelper;->access$402(Lcom/mb/android/media/Display/UhdHelper;I)I

    .line 167
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {v0}, Lcom/mb/android/media/Display/UhdHelper;->access$500(Lcom/mb/android/media/Display/UhdHelper;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {v0}, Lcom/mb/android/media/Display/UhdHelper;->access$600(Lcom/mb/android/media/Display/UhdHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    const/4 v2, 0x2

    .line 172
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->removeMessages(I)V

    .line 173
    iget-object v2, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    iget-boolean v2, v2, Lcom/mb/android/media/Display/UhdHelper;->isReceiversRegistered:Z

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    iget-object v2, v2, Lcom/mb/android/media/Display/UhdHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    iget-object v3, v3, Lcom/mb/android/media/Display/UhdHelper;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 175
    iget-object v2, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    iget-object v2, v2, Lcom/mb/android/media/Display/UhdHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {v3}, Lcom/mb/android/media/Display/UhdHelper;->access$700(Lcom/mb/android/media/Display/UhdHelper;)Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    iget-object v2, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    iput-boolean v1, v2, Lcom/mb/android/media/Display/UhdHelper;->isReceiversRegistered:Z

    :cond_1
    const/4 v2, 0x1

    .line 178
    invoke-virtual {p0, v2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->removeMessages(I)V

    const/4 v2, 0x0

    .line 179
    iput-object v2, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->mCallbackListener:Lcom/mb/android/media/Display/UhdHelperListener;

    .line 180
    iget-object v2, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {v2}, Lcom/mb/android/media/Display/UhdHelper;->access$600(Lcom/mb/android/media/Display/UhdHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeDoACallback(Lcom/mb/android/media/Display/Display$Mode;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->mCallbackListener:Lcom/mb/android/media/Display/UhdHelperListener;

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/mb/android/media/Display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending callback to listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->mCallbackListener:Lcom/mb/android/media/Display/UhdHelperListener;

    invoke-interface {v0, p1}, Lcom/mb/android/media/Display/UhdHelperListener;->onModeChanged(Lcom/mb/android/media/Display/Display$Mode;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {}, Lcom/mb/android/media/Display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can\'t issue callback as no listener registered"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setCallbackListener(Lcom/mb/android/media/Display/UhdHelperListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->mCallbackListener:Lcom/mb/android/media/Display/UhdHelperListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {p1}, Lcom/mb/android/media/Display/UhdHelper;->access$200(Lcom/mb/android/media/Display/UhdHelper;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 143
    invoke-static {}, Lcom/mb/android/media/Display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Didn\'t received any broadcast for interstitial text fade till time out, starting the mode change."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {p1, v1}, Lcom/mb/android/media/Display/UhdHelper;->access$202(Lcom/mb/android/media/Display/UhdHelper;Z)Z

    .line 145
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    iget v0, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->mRequestedModeId:I

    invoke-static {p1, v0, v3}, Lcom/mb/android/media/Display/UhdHelper;->access$300(Lcom/mb/android/media/Display/UhdHelper;ILjava/lang/reflect/Field;)V

    goto/16 :goto_0

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {p1}, Lcom/mb/android/media/Display/UhdHelper;->access$200(Lcom/mb/android/media/Display/UhdHelper;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 136
    invoke-static {}, Lcom/mb/android/media/Display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Broadcast for text fade received, Initializing the mode change."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {p1, v1}, Lcom/mb/android/media/Display/UhdHelper;->access$202(Lcom/mb/android/media/Display/UhdHelper;Z)Z

    .line 138
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    iget v0, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->mRequestedModeId:I

    invoke-static {p1, v0, v3}, Lcom/mb/android/media/Display/UhdHelper;->access$300(Lcom/mb/android/media/Display/UhdHelper;ILjava/lang/reflect/Field;)V

    goto/16 :goto_0

    .line 129
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mb/android/media/Display/Display$Mode;

    invoke-direct {p0, v0}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->maybeDoACallback(Lcom/mb/android/media/Display/Display$Mode;)V

    .line 130
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_7

    .line 131
    invoke-direct {p0}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->doPostModeSetCleanup()V

    goto :goto_0

    .line 124
    :cond_3
    invoke-static {}, Lcom/mb/android/media/Display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Time out without mode change"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, v3}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->maybeDoACallback(Lcom/mb/android/media/Display/Display$Mode;)V

    .line 126
    invoke-direct {p0}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->doPostModeSetCleanup()V

    goto :goto_0

    .line 109
    :cond_4
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-virtual {p1}, Lcom/mb/android/media/Display/UhdHelper;->getMode()Lcom/mb/android/media/Display/Display$Mode;

    move-result-object p1

    if-nez p1, :cond_5

    .line 111
    invoke-static {}, Lcom/mb/android/media/Display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mode query returned null after onDisplayChanged callback"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_5
    invoke-virtual {p1}, Lcom/mb/android/media/Display/Display$Mode;->getModeId()I

    move-result v0

    iget v1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->mRequestedModeId:I

    if-ne v0, v1, :cond_6

    .line 115
    invoke-static {}, Lcom/mb/android/media/Display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback for expected change Id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->mRequestedModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, p1}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->maybeDoACallback(Lcom/mb/android/media/Display/Display$Mode;)V

    .line 117
    invoke-direct {p0}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->doPostModeSetCleanup()V

    goto :goto_0

    .line 119
    :cond_6
    invoke-static {}, Lcom/mb/android/media/Display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback received but not expected mode. Mode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " expected= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->mRequestedModeId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method

.method public setExpectedMode(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->mRequestedModeId:I

    return-void
.end method
