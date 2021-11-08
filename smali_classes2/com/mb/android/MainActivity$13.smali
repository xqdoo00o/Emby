.class Lcom/mb/android/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity;->findServers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/MainActivity;

.field final synthetic val$timeoutMs:I


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity;I)V
    .locals 0

    .line 1796
    iput-object p1, p0, Lcom/mb/android/MainActivity$13;->this$0:Lcom/mb/android/MainActivity;

    iput p2, p0, Lcom/mb/android/MainActivity$13;->val$timeoutMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1799
    new-instance v0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;

    iget-object v1, p0, Lcom/mb/android/MainActivity$13;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v1}, Lcom/mb/android/MainActivity;->access$200(Lcom/mb/android/MainActivity;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    new-instance v2, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v2}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/mb/android/apiinteraction/discovery/ServerLocator;-><init>(Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/model/serialization/IJsonSerializer;)V

    iget v1, p0, Lcom/mb/android/MainActivity$13;->val$timeoutMs:I

    new-instance v2, Lcom/mb/android/MainActivity$13$1;

    invoke-direct {v2, p0}, Lcom/mb/android/MainActivity$13$1;-><init>(Lcom/mb/android/MainActivity$13;)V

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->FindServers(ILcom/mb/android/apiinteraction/Response;)V

    return-void
.end method
