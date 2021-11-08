.class public Lcom/mb/android/apiinteraction/EmptyResponse;
.super Ljava/lang/Object;
.source "EmptyResponse.java"

# interfaces
.implements Lcom/mb/android/apiinteraction/IResponse;


# instance fields
.field private innerResponse:Lcom/mb/android/apiinteraction/IResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mb/android/apiinteraction/IResponse;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/mb/android/apiinteraction/EmptyResponse;->innerResponse:Lcom/mb/android/apiinteraction/IResponse;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mb/android/apiinteraction/EmptyResponse;->innerResponse:Lcom/mb/android/apiinteraction/IResponse;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1}, Lcom/mb/android/apiinteraction/IResponse;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onResponse()V
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/mb/android/apiinteraction/EmptyResponse;->triggerInnerResponse()V

    return-void
.end method

.method protected triggerInnerResponse()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/mb/android/apiinteraction/EmptyResponse;->innerResponse:Lcom/mb/android/apiinteraction/IResponse;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mb/android/apiinteraction/EmptyResponse;

    if-eqz v1, :cond_0

    .line 24
    check-cast v0, Lcom/mb/android/apiinteraction/EmptyResponse;

    .line 25
    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/EmptyResponse;->onResponse()V

    :cond_0
    return-void
.end method
