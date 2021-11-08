.class Lcom/mb/android/media/StreamRecord$1;
.super Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;
.source "StreamRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/StreamRecord;->saveLocalFile(Lcom/mb/android/apiinteraction/ApiClient;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/StreamRecord;

.field final synthetic val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$tmpFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/mb/android/media/StreamRecord;Lcom/mb/android/apiinteraction/ApiClient;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/mb/android/media/StreamRecord$1;->this$0:Lcom/mb/android/media/StreamRecord;

    iput-object p2, p0, Lcom/mb/android/media/StreamRecord$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p3, p0, Lcom/mb/android/media/StreamRecord$1;->val$tmpFile:Ljava/io/File;

    iput-object p4, p0, Lcom/mb/android/media/StreamRecord$1;->val$filename:Ljava/lang/String;

    iput-object p5, p0, Lcom/mb/android/media/StreamRecord$1;->val$itemId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerConnectionFailed(Lcom/mb/android/model/apiclient/ServerInfo;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/mb/android/media/StreamRecord$1;->this$0:Lcom/mb/android/media/StreamRecord;

    invoke-static {p1}, Lcom/mb/android/media/StreamRecord;->access$100(Lcom/mb/android/media/StreamRecord;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to connect to server."

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object p1, p0, Lcom/mb/android/media/StreamRecord$1;->val$tmpFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V
    .locals 2

    .line 168
    iget-object p1, p0, Lcom/mb/android/media/StreamRecord$1;->this$0:Lcom/mb/android/media/StreamRecord;

    iget-object p2, p0, Lcom/mb/android/media/StreamRecord$1;->val$apiClient:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object p3, p0, Lcom/mb/android/media/StreamRecord$1;->val$tmpFile:Ljava/io/File;

    iget-object v0, p0, Lcom/mb/android/media/StreamRecord$1;->val$filename:Ljava/lang/String;

    iget-object v1, p0, Lcom/mb/android/media/StreamRecord$1;->val$itemId:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/mb/android/media/StreamRecord;->access$000(Lcom/mb/android/media/StreamRecord;Lcom/mb/android/apiinteraction/ApiClient;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
