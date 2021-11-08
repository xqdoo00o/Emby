.class Lcom/mb/android/apiinteraction/ApiClient$2;
.super Ljava/util/TimerTask;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/apiinteraction/ApiClient;->scheduleTest(Ljava/util/Timer;ILcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/apiinteraction/ApiClient;

.field final synthetic val$callback:Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$testInfo:Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;


# direct methods
.method constructor <init>(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$2;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    iput-object p2, p0, Lcom/mb/android/apiinteraction/ApiClient$2;->val$testInfo:Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;

    iput-object p3, p0, Lcom/mb/android/apiinteraction/ApiClient$2;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/mb/android/apiinteraction/ApiClient$2;->val$callback:Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClient$2;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClient$2;->val$testInfo:Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClient$2;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/mb/android/apiinteraction/ApiClient$2;->val$callback:Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/mb/android/apiinteraction/ApiClient;->access$300(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient$ConnectionCallback;)V

    return-void
.end method
