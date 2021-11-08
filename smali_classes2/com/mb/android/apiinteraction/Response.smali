.class public Lcom/mb/android/apiinteraction/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lcom/mb/android/apiinteraction/IResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mb/android/apiinteraction/IResponse;"
    }
.end annotation


# instance fields
.field private innerResponse:Lcom/mb/android/apiinteraction/IResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mb/android/apiinteraction/IResponse;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/mb/android/apiinteraction/Response;->innerResponse:Lcom/mb/android/apiinteraction/IResponse;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mb/android/apiinteraction/Response;->innerResponse:Lcom/mb/android/apiinteraction/IResponse;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1}, Lcom/mb/android/apiinteraction/IResponse;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/Response;->triggerInnerResponse()V

    return-void
.end method

.method protected triggerInnerResponse()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/mb/android/apiinteraction/Response;->innerResponse:Lcom/mb/android/apiinteraction/IResponse;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mb/android/apiinteraction/EmptyResponse;

    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Lcom/mb/android/apiinteraction/EmptyResponse;

    .line 24
    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/EmptyResponse;->onResponse()V

    :cond_0
    return-void
.end method
