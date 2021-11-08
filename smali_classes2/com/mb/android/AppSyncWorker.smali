.class public Lcom/mb/android/AppSyncWorker;
.super Landroidx/work/ListenableWorker;
.source "AppSyncWorker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EmbyAppSync"


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 30
    iput-object p1, p0, Lcom/mb/android/AppSyncWorker;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/AppSyncWorker;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/mb/android/AppSyncWorker;->context:Landroid/content/Context;

    return-object p0
.end method

.method private isPeriodic()Ljava/lang/Boolean;
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/mb/android/AppSyncWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "is_work_periodic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$startWork$0$AppSyncWorker(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/mb/android/AppSyncWorker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v0

    .line 39
    new-instance v6, Lcom/mb/android/sync/AppSettings;

    iget-object v1, p0, Lcom/mb/android/AppSyncWorker;->context:Landroid/content/Context;

    invoke-direct {v6, v1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/mb/android/AppSyncWorker;->isPeriodic()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v7, "App Sync"

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v6}, Lcom/mb/android/sync/AppSettings;->getSyncActive()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-object v7

    :cond_0
    const/4 v8, 0x0

    .line 49
    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "AppSyncWorker: Start executing job."

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lcom/mb/android/AppSyncWorker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/mb/android/MainApp;

    invoke-virtual {v1}, Lcom/mb/android/MainApp;->getConnectionManager()Lcom/mb/android/apiinteraction/android/ConnectionManager;

    move-result-object v1

    .line 52
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {v1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->getApiClients()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/apiinteraction/ApiClient;

    .line 54
    invoke-virtual {v2}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 55
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 60
    new-instance v10, Lcom/mb/android/AppSyncWorker$1;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/mb/android/AppSyncWorker$1;-><init>(Lcom/mb/android/AppSyncWorker;ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/sync/AppSettings;)V

    .line 91
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mb/android/apiinteraction/ApiClient;

    .line 92
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/mb/android/AppSyncWorker$2;

    invoke-direct {v4, p0, v2, v0, v10}, Lcom/mb/android/AppSyncWorker$2;-><init>(Lcom/mb/android/AppSyncWorker;Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/sync/ServerSync$Callback;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 100
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 102
    new-array p1, v8, [Ljava/lang/Object;

    const-string v1, "AppSyncWorker: No available servers found -- Exit SUCCESS"

    invoke-interface {v0, v1, p1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-object v7
.end method

.method public startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/mb/android/-$$Lambda$AppSyncWorker$8rovqGWUc7YBMRXgkov9lcHi-9A;

    invoke-direct {v0, p0}, Lcom/mb/android/-$$Lambda$AppSyncWorker$8rovqGWUc7YBMRXgkov9lcHi-9A;-><init>(Lcom/mb/android/AppSyncWorker;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
