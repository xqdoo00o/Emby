.class Lcom/mb/android/apiinteraction/ApiClient$1;
.super Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/apiinteraction/ApiClient;->lambda$tryBackgroundReconnect$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/apiinteraction/ApiClient;


# direct methods
.method constructor <init>(Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$1;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerConnectionFailed(Lcom/mb/android/model/apiclient/ServerInfo;)V
    .locals 0

    return-void
.end method

.method public onUrlDetermined(Lcom/mb/android/model/apiclient/ServerInfo;Ljava/lang/String;Lcom/mb/android/model/apiclient/ConnectionMode;)V
    .locals 0

    return-void
.end method
