.class Lcom/mb/android/apiinteraction/ApiClientEx$1;
.super Ljava/lang/Object;
.source "ApiClientEx.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/apiinteraction/ApiClientEx;->getItem(Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Lcom/mb/android/sync/data/database/LocalItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/apiinteraction/ApiClientEx;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$response:Lcom/mb/android/apiinteraction/Response;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/apiinteraction/ApiClientEx;Lcom/mb/android/apiinteraction/Response;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->this$0:Lcom/mb/android/apiinteraction/ApiClientEx;

    iput-object p2, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->val$response:Lcom/mb/android/apiinteraction/Response;

    iput-object p3, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 67
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->this$0:Lcom/mb/android/apiinteraction/ApiClientEx;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->val$userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->val$response:Lcom/mb/android/apiinteraction/Response;

    invoke-static {p1, v0, v1, v2}, Lcom/mb/android/apiinteraction/ApiClientEx;->access$101(Lcom/mb/android/apiinteraction/ApiClientEx;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    return-void
.end method

.method public onSuccess(Lcom/mb/android/sync/data/database/LocalItem;)V
    .locals 3
    .param p1    # Lcom/mb/android/sync/data/database/LocalItem;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->val$response:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {p1}, Lcom/mb/android/sync/data/database/LocalItem;->getItem()Lcom/mb/android/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->this$0:Lcom/mb/android/apiinteraction/ApiClientEx;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->val$userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/mb/android/apiinteraction/ApiClientEx$1;->val$response:Lcom/mb/android/apiinteraction/Response;

    invoke-static {p1, v0, v1, v2}, Lcom/mb/android/apiinteraction/ApiClientEx;->access$001(Lcom/mb/android/apiinteraction/ApiClientEx;Ljava/lang/String;Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 54
    check-cast p1, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/ApiClientEx$1;->onSuccess(Lcom/mb/android/sync/data/database/LocalItem;)V

    return-void
.end method
