.class Lcom/mb/android/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity;->enterFullscreen()V
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

    .line 920
    iput-object p1, p0, Lcom/mb/android/MainActivity$7;->this$0:Lcom/mb/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 926
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/MainActivity$7;->this$0:Lcom/mb/android/MainActivity;

    invoke-virtual {v0}, Lcom/mb/android/MainActivity;->resetWindow()V

    .line 928
    iget-object v0, p0, Lcom/mb/android/MainActivity$7;->this$0:Lcom/mb/android/MainActivity;

    invoke-virtual {v0}, Lcom/mb/android/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 930
    iget-object v1, p0, Lcom/mb/android/MainActivity$7;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v1}, Lcom/mb/android/MainActivity;->access$1400(Lcom/mb/android/MainActivity;)V

    .line 931
    iget-object v1, p0, Lcom/mb/android/MainActivity$7;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v1}, Lcom/mb/android/MainActivity;->access$1500(Lcom/mb/android/MainActivity;)V

    .line 932
    iget-object v1, p0, Lcom/mb/android/MainActivity$7;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v1}, Lcom/mb/android/MainActivity;->access$000(Lcom/mb/android/MainActivity;)V

    .line 934
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/mb/android/MainActivity$7$1;

    invoke-direct {v2, p0}, Lcom/mb/android/MainActivity$7$1;-><init>(Lcom/mb/android/MainActivity$7;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 947
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mb/android/MainActivity$7$2;

    invoke-direct {v1, p0}, Lcom/mb/android/MainActivity$7$2;-><init>(Lcom/mb/android/MainActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
