.class public final Lcom/mb/android/chromecast/ChromecastMessage$Builder;
.super Ljava/lang/Object;
.source "ChromecastMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/chromecast/ChromecastMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private maxBitrate:I

.field private options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private receiverName:Ljava/lang/String;

.field private serverAddress:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private serverVersion:Ljava/lang/String;

.field private subtitleAppearance:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->command:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Lcom/mb/android/apiinteraction/ApiClient;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->userId:Ljava/lang/String;

    .line 29
    invoke-virtual {p2}, Lcom/mb/android/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->deviceId:Ljava/lang/String;

    .line 30
    invoke-virtual {p2}, Lcom/mb/android/apiinteraction/ApiClient;->getServerCredentials()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->accessToken:Ljava/lang/String;

    .line 31
    invoke-virtual {p2}, Lcom/mb/android/apiinteraction/ApiClient;->getServerId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->serverId:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lcom/mb/android/apiinteraction/ApiClient;->getServerAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->serverAddress:Ljava/lang/String;

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->options:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->command:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->subtitleAppearance:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->maxBitrate:I

    return p0
.end method

.method static synthetic access$200(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/util/HashMap;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->options:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->serverId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->serverVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->serverAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->receiverName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addOption(Ljava/lang/String;Ljava/lang/Object;)Lcom/mb/android/chromecast/ChromecastMessage$Builder;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->options:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/mb/android/chromecast/ChromecastMessage;
    .locals 2

    .line 49
    new-instance v0, Lcom/mb/android/chromecast/ChromecastMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mb/android/chromecast/ChromecastMessage;-><init>(Lcom/mb/android/chromecast/ChromecastMessage$Builder;Lcom/mb/android/chromecast/ChromecastMessage$1;)V

    return-object v0
.end method

.method public setReceiverName(Ljava/lang/String;)Lcom/mb/android/chromecast/ChromecastMessage$Builder;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->receiverName:Ljava/lang/String;

    return-object p0
.end method
