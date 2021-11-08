.class public Lcom/mb/android/model/apiclient/ServerInfo;
.super Ljava/lang/Object;
.source "ServerInfo.java"


# instance fields
.field private AccessToken:Ljava/lang/String;

.field private DateLastAccessed:Ljava/lang/Long;

.field private Id:Ljava/lang/String;

.field private LastConnectionMode:Lcom/mb/android/model/apiclient/ConnectionMode;

.field private LocalAddress:Ljava/lang/String;

.field private ManualAddress:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private RemoteAddress:Ljava/lang/String;

.field private Type:Ljava/lang/String;

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mb/android/model/apiclient/ServerInfo;->AccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddress(Lcom/mb/android/model/apiclient/ConnectionMode;)Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/mb/android/model/apiclient/ServerInfo$1;->$SwitchMap$com$mb$android$model$apiclient$ConnectionMode:[I

    invoke-virtual {p1}, Lcom/mb/android/model/apiclient/ConnectionMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/mb/android/model/apiclient/ServerInfo;->getRemoteAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected ConnectionMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/mb/android/model/apiclient/ServerInfo;->getManualAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/mb/android/model/apiclient/ServerInfo;->getLocalAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDateLastAccessed()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mb/android/model/apiclient/ServerInfo;->DateLastAccessed:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mb/android/model/apiclient/ServerInfo;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastConnectionMode()Lcom/mb/android/model/apiclient/ConnectionMode;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mb/android/model/apiclient/ServerInfo;->LastConnectionMode:Lcom/mb/android/model/apiclient/ConnectionMode;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mb/android/model/apiclient/ServerInfo;->LocalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getManualAddress()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mb/android/model/apiclient/ServerInfo;->ManualAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mb/android/model/apiclient/ServerInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mb/android/model/apiclient/ServerInfo;->RemoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mb/android/model/apiclient/ServerInfo;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public setDateLastAccessed(Ljava/lang/Long;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mb/android/model/apiclient/ServerInfo;->DateLastAccessed:Ljava/lang/Long;

    return-void
.end method

.method public setLastConnectionMode(Lcom/mb/android/model/apiclient/ConnectionMode;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/mb/android/model/apiclient/ServerInfo;->LastConnectionMode:Lcom/mb/android/model/apiclient/ConnectionMode;

    return-void
.end method
