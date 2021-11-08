.class Lcom/mb/android/AppSyncWorker$2;
.super Ljava/lang/Object;
.source "AppSyncWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/AppSyncWorker;->lambda$startWork$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/AppSyncWorker;

.field final synthetic val$callback:Lcom/mb/android/sync/ServerSync$Callback;

.field final synthetic val$client:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method constructor <init>(Lcom/mb/android/AppSyncWorker;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/mb/android/AppSyncWorker$2;->this$0:Lcom/mb/android/AppSyncWorker;

    iput-object p2, p0, Lcom/mb/android/AppSyncWorker$2;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p3, p0, Lcom/mb/android/AppSyncWorker$2;->val$logger:Lcom/mb/android/model/logging/ILogger;

    iput-object p4, p0, Lcom/mb/android/AppSyncWorker$2;->val$callback:Lcom/mb/android/sync/ServerSync$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 95
    new-instance v0, Lcom/mb/android/sync/ServerSync;

    iget-object v1, p0, Lcom/mb/android/AppSyncWorker$2;->val$client:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v2, p0, Lcom/mb/android/AppSyncWorker$2;->this$0:Lcom/mb/android/AppSyncWorker;

    invoke-static {v2}, Lcom/mb/android/AppSyncWorker;->access$000(Lcom/mb/android/AppSyncWorker;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mb/android/AppSyncWorker$2;->val$logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/mb/android/sync/ServerSync;-><init>(Lcom/mb/android/apiinteraction/ApiClient;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iget-object v1, p0, Lcom/mb/android/AppSyncWorker$2;->val$callback:Lcom/mb/android/sync/ServerSync$Callback;

    invoke-virtual {v0, v1}, Lcom/mb/android/sync/ServerSync;->startSync(Lcom/mb/android/sync/ServerSync$Callback;)V

    return-void
.end method
