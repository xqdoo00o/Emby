.class public abstract Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;
.super Ljava/lang/Object;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/apiinteraction/ApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConnectionCallback"
.end annotation


# instance fields
.field public TotalNumTests:I

.field private lock:Ljava/util/concurrent/Semaphore;

.field nErrors:I

.field public urlDetermined:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 896
    iput v0, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->TotalNumTests:I

    const/4 v0, 0x0

    .line 898
    iput v0, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->nErrors:I

    .line 899
    iput-boolean v0, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->urlDetermined:Z

    return-void
.end method

.method static synthetic access$002(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->lock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 892
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->onUrlReached(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;Lcom/mb/android/apiinteraction/ApiClient;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Lcom/mb/android/model/apiclient/ServerInfo;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 892
    invoke-direct {p0, p1, p2}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->onAllFailedToReach(Lcom/mb/android/model/apiclient/ServerInfo;Lcom/mb/android/apiinteraction/ApiClient;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;Lcom/mb/android/model/apiclient/ServerInfo;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 892
    invoke-direct {p0, p1, p2}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->onFailedToReach(Lcom/mb/android/model/apiclient/ServerInfo;Lcom/mb/android/apiinteraction/ApiClient;)V

    return-void
.end method

.method private onAllFailedToReach(Lcom/mb/android/model/apiclient/ServerInfo;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 1

    const/4 v0, 0x0

    .line 922
    invoke-virtual {p2, v0}, Lcom/mb/android/apiinteraction/ApiClient;->setServerAddress(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->onServerConnectionFailed(Lcom/mb/android/model/apiclient/ServerInfo;)V

    .line 924
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->lock:Ljava/util/concurrent/Semaphore;

    if-eqz p1, :cond_0

    .line 925
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void
.end method

.method private onFailedToReach(Lcom/mb/android/model/apiclient/ServerInfo;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 2

    .line 915
    iget v0, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->nErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->nErrors:I

    .line 916
    iget v0, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->nErrors:I

    iget v1, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->TotalNumTests:I

    if-lt v0, v1, :cond_0

    .line 917
    invoke-direct {p0, p1, p2}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->onAllFailedToReach(Lcom/mb/android/model/apiclient/ServerInfo;Lcom/mb/android/apiinteraction/ApiClient;)V

    :cond_0
    return-void
.end method

.method private onUrlReached(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 2

    .line 902
    iget-boolean v0, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->urlDetermined:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 903
    iput-boolean v0, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->urlDetermined:Z

    .line 904
    invoke-virtual {p1, p3}, Lcom/mb/android/model/apiclient/ServerInfo;->setLastConnectionMode(Lcom/mb/android/model/apiclient/ConnectionMode;)V

    .line 905
    invoke-virtual {p4, p2}, Lcom/mb/android/apiinteraction/ApiClient;->setServerAddress(Ljava/lang/String;)V

    .line 906
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/mb/android/apiinteraction/ApiClient;->setDateLastAccessed(J)V

    .line 907
    invoke-virtual {p0, p1, p2, p3}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->onUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V

    .line 908
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;->lock:Ljava/util/concurrent/Semaphore;

    if-eqz p1, :cond_0

    .line 909
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onServerConnectionFailed(Lcom/mb/android/model/apiclient/ServerInfo;)V
    .locals 0

    return-void
.end method

.method protected onUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V
    .locals 0

    return-void
.end method
