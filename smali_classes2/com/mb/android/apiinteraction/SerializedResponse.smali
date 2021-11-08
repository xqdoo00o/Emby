.class public Lcom/mb/android/apiinteraction/SerializedResponse;
.super Lcom/mb/android/apiinteraction/Response;
.source "SerializedResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mb/android/apiinteraction/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final innerResponse:Lcom/mb/android/apiinteraction/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mb/android/apiinteraction/Response<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/mb/android/apiinteraction/Response;Lcom/mb/android/model/serialization/IJsonSerializer;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mb/android/apiinteraction/Response<",
            "TT;>;",
            "Lcom/mb/android/model/serialization/IJsonSerializer;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mb/android/apiinteraction/SerializedResponse;->innerResponse:Lcom/mb/android/apiinteraction/Response;

    .line 13
    iput-object p2, p0, Lcom/mb/android/apiinteraction/SerializedResponse;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    .line 14
    iput-object p3, p0, Lcom/mb/android/apiinteraction/SerializedResponse;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mb/android/apiinteraction/SerializedResponse;->innerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/SerializedResponse;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/apiinteraction/SerializedResponse;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    iget-object v1, p0, Lcom/mb/android/apiinteraction/SerializedResponse;->type:Ljava/lang/Class;

    invoke-interface {v0, p1, v1}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/mb/android/apiinteraction/SerializedResponse;->onSerializedResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    iget-object v0, p0, Lcom/mb/android/apiinteraction/SerializedResponse;->innerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected onSerializedResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/mb/android/apiinteraction/SerializedResponse;->innerResponse:Lcom/mb/android/apiinteraction/Response;

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
