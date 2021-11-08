.class public Lcom/mb/android/apiinteraction/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private Method:Ljava/lang/String;

.field private RequestContent:Ljava/lang/String;

.field private RequestContentType:Ljava/lang/String;

.field private RequestHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Timeout:I

.field private Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 65
    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setRequestHeaders(Ljava/util/HashMap;)V

    const/16 v0, 0x7530

    .line 67
    invoke-virtual {p0, v0}, Lcom/mb/android/apiinteraction/http/HttpRequest;->setTimeout(I)V

    return-void
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->Method:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestContent()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->RequestContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestContentType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->RequestContentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->RequestHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getTimeout()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->Timeout:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->Url:Ljava/lang/String;

    return-object v0
.end method

.method public final setMethod(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->Method:Ljava/lang/String;

    return-void
.end method

.method public final setRequestContent(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->RequestContent:Ljava/lang/String;

    return-void
.end method

.method public final setRequestContentType(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->RequestContentType:Ljava/lang/String;

    return-void
.end method

.method public final setRequestHeaders(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->RequestHeaders:Ljava/util/HashMap;

    return-void
.end method

.method public final setTimeout(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->Timeout:I

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mb/android/apiinteraction/http/HttpRequest;->Url:Ljava/lang/String;

    return-void
.end method
