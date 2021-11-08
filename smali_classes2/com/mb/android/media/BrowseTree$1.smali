.class Lcom/mb/android/media/BrowseTree$1;
.super Landroid/content/BroadcastReceiver;
.source "BrowseTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/BrowseTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/BrowseTree;


# direct methods
.method constructor <init>(Lcom/mb/android/media/BrowseTree;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mb/android/media/BrowseTree$1;->this$0:Lcom/mb/android/media/BrowseTree;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.mb.android.ACTION_FAVORITES_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/mb/android/media/BrowseTree$1;->this$0:Lcom/mb/android/media/BrowseTree;

    invoke-static {p1}, Lcom/mb/android/media/BrowseTree;->access$000(Lcom/mb/android/media/BrowseTree;)V

    :cond_0
    return-void
.end method
