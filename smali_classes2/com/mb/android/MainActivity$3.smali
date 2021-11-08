.class Lcom/mb/android/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity;->setPullToRefreshEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/MainActivity;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity;Z)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/mb/android/MainActivity$3;->this$0:Lcom/mb/android/MainActivity;

    iput-boolean p2, p0, Lcom/mb/android/MainActivity$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/mb/android/MainActivity$3;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v0}, Lcom/mb/android/MainActivity;->access$100(Lcom/mb/android/MainActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/MainActivity$3;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v0}, Lcom/mb/android/MainActivity;->access$100(Lcom/mb/android/MainActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mb/android/MainActivity$3;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 508
    iget-object v1, p0, Lcom/mb/android/MainActivity$3;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v1}, Lcom/mb/android/MainActivity;->access$200(Lcom/mb/android/MainActivity;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error in swipeRefreshLayout.setEnabled"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
