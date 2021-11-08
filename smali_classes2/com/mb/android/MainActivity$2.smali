.class Lcom/mb/android/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity;->createPullToRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/MainActivity;

.field final synthetic val$pullToRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/mb/android/MainActivity$2;->this$0:Lcom/mb/android/MainActivity;

    iput-object p2, p0, Lcom/mb/android/MainActivity$2;->val$pullToRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/mb/android/MainActivity$2;->this$0:Lcom/mb/android/MainActivity;

    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Lcom/mb/android/MainActivity;->sendCommand(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/mb/android/MainActivity$2;->val$pullToRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
