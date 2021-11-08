.class public Lcom/mb/android/fcm/FcmFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FcmFirebaseMessagingService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FcmFirebaseMsgService"


# instance fields
.field private broadcaster:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private json:Lcom/mb/android/model/serialization/IJsonSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 22
    new-instance v0, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/android/GsonJsonSerializer;-><init>()V

    iput-object v0, p0, Lcom/mb/android/fcm/FcmFirebaseMessagingService;->json:Lcom/mb/android/model/serialization/IJsonSerializer;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 26
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/fcm/FcmFirebaseMessagingService;->broadcaster:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 10

    .line 51
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 56
    iget-object v1, p0, Lcom/mb/android/fcm/FcmFirebaseMessagingService;->json:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-interface {v1, v0}, Lcom/mb/android/model/serialization/IJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {p0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v6, "FCM Message: %s"

    invoke-interface {v3, v6, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "MessageType"

    .line 60
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "msg"

    const-string v5, "FcmData"

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "play"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 63
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getSentTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long p1, v6, v8

    if-gez p1, :cond_0

    .line 64
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mb/android/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, p1}, Lcom/mb/android/fcm/FcmFirebaseMessagingService;->startActivity(Landroid/content/Intent;)V

    .line 72
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sync"

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    invoke-direct {v0, p0}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/mb/android/sync/AppSettings;->setSyncActive(Z)V

    const-string v0, "syncjobitemready"

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "syncjobitemsready"

    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "syncjobcancelled"

    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "syncjobitemcancelled"

    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    :cond_1
    new-instance v0, Lcom/mb/android/sync/AndroidSync;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/mb/android/sync/AndroidSync;-><init>(Lcom/mb/android/model/logging/ILogger;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mb/android/sync/AndroidSync;->startSync()V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/mb/android/fcm/FcmFirebaseMessagingService;->broadcaster:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method
