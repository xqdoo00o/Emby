.class Lcom/mb/android/sync/ServerSync$1;
.super Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;
.source "ServerSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/ServerSync;->startSync(Lcom/mb/android/sync/ServerSync$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/sync/ServerSync;

.field final synthetic val$callback:Lcom/mb/android/sync/ServerSync$Callback;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/ServerSync;Lcom/mb/android/sync/ServerSync$Callback;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mb/android/sync/ServerSync$1;->this$0:Lcom/mb/android/sync/ServerSync;

    iput-object p2, p0, Lcom/mb/android/sync/ServerSync$1;->val$callback:Lcom/mb/android/sync/ServerSync$Callback;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerConnectionFailed(Lcom/mb/android/model/apiclient/ServerInfo;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/mb/android/sync/ServerSync$1;->val$callback:Lcom/mb/android/sync/ServerSync$Callback;

    invoke-interface {p1}, Lcom/mb/android/sync/ServerSync$Callback;->onFailure()V

    return-void
.end method

.method public onUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/mb/android/sync/ServerSync$1;->this$0:Lcom/mb/android/sync/ServerSync;

    iget-object p2, p0, Lcom/mb/android/sync/ServerSync$1;->val$callback:Lcom/mb/android/sync/ServerSync$Callback;

    invoke-static {p1, p2}, Lcom/mb/android/sync/ServerSync;->access$000(Lcom/mb/android/sync/ServerSync;Lcom/mb/android/sync/ServerSync$Callback;)V

    return-void
.end method
