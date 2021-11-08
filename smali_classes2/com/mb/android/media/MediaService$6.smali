.class Lcom/mb/android/media/MediaService$6;
.super Ljava/lang/Object;
.source "MediaService.java"

# interfaces
.implements Lcom/mb/android/media/MediaService$UIMessenger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/MediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/MediaService;


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaService;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/mb/android/media/MediaService$6;->this$0:Lcom/mb/android/media/MediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCommand(Ljava/lang/String;)V
    .locals 2

    .line 713
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mb.android.ACTION_SEND_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    .line 714
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    iget-object p1, p0, Lcom/mb/android/media/MediaService$6;->this$0:Lcom/mb/android/media/MediaService;

    invoke-virtual {p1}, Lcom/mb/android/media/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 716
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 2

    .line 705
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mb.android.ACTION_SEND_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    .line 706
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    iget-object p1, p0, Lcom/mb/android/media/MediaService$6;->this$0:Lcom/mb/android/media/MediaService;

    invoke-virtual {p1}, Lcom/mb/android/media/MediaService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 708
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
