.class public Lcom/mb/android/chromecast/ChromecastMessage;
.super Ljava/lang/Object;
.source "ChromecastMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/chromecast/ChromecastMessage$Builder;
    }
.end annotation


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final command:Ljava/lang/String;

.field private final deviceId:Ljava/lang/String;

.field private final maxBitrate:I

.field private final options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final receiverName:Ljava/lang/String;

.field private final serverAddress:Ljava/lang/String;

.field private final serverId:Ljava/lang/String;

.field private final serverVersion:Ljava/lang/String;

.field private final subtitleAppearance:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->access$100(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastMessage;->command:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->access$200(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastMessage;->options:Ljava/util/HashMap;

    .line 71
    invoke-static {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->access$300(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastMessage;->userId:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->access$400(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastMessage;->deviceId:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->access$500(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastMessage;->accessToken:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->access$600(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastMessage;->serverId:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->access$700(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastMessage;->serverVersion:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->access$800(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastMessage;->serverAddress:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->access$900(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastMessage;->receiverName:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->access$1000(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/chromecast/ChromecastMessage;->subtitleAppearance:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/mb/android/chromecast/ChromecastMessage$Builder;->access$1100(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)I

    move-result p1

    iput p1, p0, Lcom/mb/android/chromecast/ChromecastMessage;->maxBitrate:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mb/android/chromecast/ChromecastMessage$Builder;Lcom/mb/android/chromecast/ChromecastMessage$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/mb/android/chromecast/ChromecastMessage;-><init>(Lcom/mb/android/chromecast/ChromecastMessage$Builder;)V

    return-void
.end method
