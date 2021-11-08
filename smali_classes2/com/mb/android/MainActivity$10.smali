.class Lcom/mb/android/MainActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 1210
    iput-object p1, p0, Lcom/mb/android/MainActivity$10;->this$0:Lcom/mb/android/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.mb.android.ACTION_SEND_MESSAGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1214
    iget-object p1, p0, Lcom/mb/android/MainActivity$10;->this$0:Lcom/mb/android/MainActivity;

    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/MainActivity;->RespondToWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 1216
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.mb.android.ACTION_SEND_COMMAND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1217
    iget-object p1, p0, Lcom/mb/android/MainActivity$10;->this$0:Lcom/mb/android/MainActivity;

    const-string v0, "command"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/MainActivity;->sendCommand(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
