.class public Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;
.super Ljava/lang/Object;
.source "AndroidCredentialManager.java"


# instance fields
.field private final appSettings:Lcom/mb/android/sync/EncryptedAppSettings;

.field private final connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

.field private context:Landroid/content/Context;

.field private final jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private final logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method public constructor <init>(Lcom/mb/android/apiinteraction/android/ConnectionManager;Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    .line 28
    iput-object p2, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->context:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 30
    new-instance p1, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {p1}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iput-object p1, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    .line 31
    new-instance p1, Lcom/mb/android/sync/EncryptedAppSettings;

    invoke-direct {p1, p2}, Lcom/mb/android/sync/EncryptedAppSettings;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->appSettings:Lcom/mb/android/sync/EncryptedAppSettings;

    .line 33
    iget-object p1, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->appSettings:Lcom/mb/android/sync/EncryptedAppSettings;

    invoke-virtual {p1}, Lcom/mb/android/sync/EncryptedAppSettings;->getCredentialsJson()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 35
    invoke-direct {p0, p1}, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->updateConnectionManager(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateConnectionManager(Ljava/lang/String;)V
    .locals 3

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "AndroidCredentialManager: Connecting to server for the first time. Creating new credentials..."

    invoke-interface {p1, v1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 54
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v2, Lcom/mb/android/model/apiclient/NativeCredentials;

    invoke-interface {v0, p1, v2}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mb/android/model/apiclient/NativeCredentials;

    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->connectionManager:Lcom/mb/android/apiinteraction/android/ConnectionManager;

    invoke-virtual {p1}, Lcom/mb/android/model/apiclient/NativeCredentials;->getServers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->updateApiClients(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AndroidCredentialManager: Failed to deserialize native credentials"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public updateCredentials(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->appSettings:Lcom/mb/android/sync/EncryptedAppSettings;

    invoke-virtual {v0, p1}, Lcom/mb/android/sync/EncryptedAppSettings;->setCredentialsJson(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->updateConnectionManager(Ljava/lang/String;)V

    .line 43
    new-instance p1, Lcom/mb/android/sync/AppSettings;

    iget-object v0, p0, Lcom/mb/android/apiinteraction/android/AndroidCredentialManager;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mb/android/sync/AppSettings;->setSyncActive(Z)V

    return-void
.end method
