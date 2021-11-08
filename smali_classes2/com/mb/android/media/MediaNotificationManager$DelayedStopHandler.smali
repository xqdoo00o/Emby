.class Lcom/mb/android/media/MediaNotificationManager$DelayedStopHandler;
.super Landroid/os/Handler;
.source "MediaNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/MediaNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedStopHandler"
.end annotation


# instance fields
.field private final weakNotificationManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mb/android/media/MediaNotificationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mb/android/media/MediaNotificationManager;)V
    .locals 1

    .line 567
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 568
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mb/android/media/MediaNotificationManager$DelayedStopHandler;->weakNotificationManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mb/android/media/MediaNotificationManager;Lcom/mb/android/media/MediaNotificationManager$1;)V
    .locals 0

    .line 564
    invoke-direct {p0, p1}, Lcom/mb/android/media/MediaNotificationManager$DelayedStopHandler;-><init>(Lcom/mb/android/media/MediaNotificationManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 573
    iget-object p1, p0, Lcom/mb/android/media/MediaNotificationManager$DelayedStopHandler;->weakNotificationManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mb/android/media/MediaNotificationManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 575
    invoke-static {p1, v0}, Lcom/mb/android/media/MediaNotificationManager;->access$500(Lcom/mb/android/media/MediaNotificationManager;Z)V

    :cond_0
    return-void
.end method
