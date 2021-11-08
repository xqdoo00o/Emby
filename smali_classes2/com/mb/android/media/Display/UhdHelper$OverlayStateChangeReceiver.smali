.class Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UhdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/Display/UhdHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayStateChangeReceiver"
.end annotation


# instance fields
.field private final OVERLAY_FADE_COMPLETE_EXTRA:I

.field final synthetic this$0:Lcom/mb/android/media/Display/UhdHelper;


# direct methods
.method private constructor <init>(Lcom/mb/android/media/Display/UhdHelper;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x3

    .line 191
    iput p1, p0, Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;->OVERLAY_FADE_COMPLETE_EXTRA:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mb/android/media/Display/UhdHelper;Lcom/mb/android/media/Display/UhdHelper$1;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;-><init>(Lcom/mb/android/media/Display/UhdHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 194
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    const-string v0, "com.amazon.tv.notification.modeswitch_overlay.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/mb/android/media/Display/UhdHelper;->access$402(Lcom/mb/android/media/Display/UhdHelper;I)I

    .line 195
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {p1}, Lcom/mb/android/media/Display/UhdHelper;->access$400(Lcom/mb/android/media/Display/UhdHelper;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {p1}, Lcom/mb/android/media/Display/UhdHelper;->access$200(Lcom/mb/android/media/Display/UhdHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {p1}, Lcom/mb/android/media/Display/UhdHelper;->access$800(Lcom/mb/android/media/Display/UhdHelper;)Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->removeMessages(I)V

    .line 197
    iget-object p1, p0, Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {p1}, Lcom/mb/android/media/Display/UhdHelper;->access$800(Lcom/mb/android/media/Display/UhdHelper;)Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/mb/android/media/Display/UhdHelper$OverlayStateChangeReceiver;->this$0:Lcom/mb/android/media/Display/UhdHelper;

    invoke-static {p2}, Lcom/mb/android/media/Display/UhdHelper;->access$800(Lcom/mb/android/media/Display/UhdHelper;)Lcom/mb/android/media/Display/UhdHelper$WorkHandler;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/media/Display/UhdHelper$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    invoke-static {}, Lcom/mb/android/media/Display/UhdHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Got the Interstitial text fade broadcast, Starting the mode change"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
