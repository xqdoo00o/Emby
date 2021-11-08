.class Lcom/mb/android/AppSyncWorker$1;
.super Ljava/lang/Object;
.source "AppSyncWorker.java"

# interfaces
.implements Lcom/mb/android/sync/ServerSync$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/AppSyncWorker;->lambda$startWork$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field nErrors:I

.field nSuccesses:I

.field final synthetic this$0:Lcom/mb/android/AppSyncWorker;

.field final synthetic val$appSettings:Lcom/mb/android/sync/AppSettings;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field final synthetic val$logger:Lcom/mb/android/model/logging/ILogger;

.field final synthetic val$nServers:I


# direct methods
.method constructor <init>(Lcom/mb/android/AppSyncWorker;ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/sync/AppSettings;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mb/android/AppSyncWorker$1;->this$0:Lcom/mb/android/AppSyncWorker;

    iput p2, p0, Lcom/mb/android/AppSyncWorker$1;->val$nServers:I

    iput-object p3, p0, Lcom/mb/android/AppSyncWorker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p4, p0, Lcom/mb/android/AppSyncWorker$1;->val$logger:Lcom/mb/android/model/logging/ILogger;

    iput-object p5, p0, Lcom/mb/android/AppSyncWorker$1;->val$appSettings:Lcom/mb/android/sync/AppSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/mb/android/AppSyncWorker$1;->nErrors:I

    .line 62
    iput p1, p0, Lcom/mb/android/AppSyncWorker$1;->nSuccesses:I

    return-void
.end method

.method private setSuccesses()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/mb/android/AppSyncWorker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/mb/android/AppSyncWorker$1;->val$logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AppSyncWorker: Exit SUCCESS"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/mb/android/AppSyncWorker$1;->val$appSettings:Lcom/mb/android/sync/AppSettings;

    invoke-virtual {v0, v1}, Lcom/mb/android/sync/AppSettings;->setSyncActive(Z)V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    .line 73
    iget v0, p0, Lcom/mb/android/AppSyncWorker$1;->nErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mb/android/AppSyncWorker$1;->nErrors:I

    iget v1, p0, Lcom/mb/android/AppSyncWorker$1;->nSuccesses:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/mb/android/AppSyncWorker$1;->val$nServers:I

    if-lt v0, v2, :cond_1

    if-lez v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/mb/android/AppSyncWorker$1;->setSuccesses()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/mb/android/AppSyncWorker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/mb/android/AppSyncWorker$1;->val$logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AppSyncWorker: Exit FAILED"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 66
    iget v0, p0, Lcom/mb/android/AppSyncWorker$1;->nSuccesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mb/android/AppSyncWorker$1;->nSuccesses:I

    iget v1, p0, Lcom/mb/android/AppSyncWorker$1;->nErrors:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/mb/android/AppSyncWorker$1;->val$nServers:I

    if-lt v0, v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/mb/android/AppSyncWorker$1;->setSuccesses()V

    :cond_0
    return-void
.end method
