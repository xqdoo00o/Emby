.class public Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncSettingsBroadcastReceiver.java"


# static fields
.field public static final ACTION_CAMERA_UPLOAD_CHANGED:Ljava/lang/String; = "com.mb.android.ACTION_CAMERA_UPLOAD_CHANGED"

.field public static final ACTION_PLAYBACK_END:Ljava/lang/String; = "com.mb.android.ACTION_PLAYBACK_END"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private containsServer([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 49
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 50
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/mb/android/sync/AppSettings;

    invoke-direct {v1, p1}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    const-string v2, "com.mb.android.ACTION_PLAYBACK_END"

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v1, v3}, Lcom/mb/android/sync/AppSettings;->setSyncActive(Z)V

    goto :goto_2

    :cond_0
    const-string v1, "android.hardware.action.NEW_PICTURE"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v4, "EmbyCameraUpload"

    if-nez v1, :cond_3

    const-string v1, "android.hardware.action.NEW_VIDEO"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.mb.android.ACTION_CAMERA_UPLOAD_CHANGED"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    invoke-static {p1, v4}, Lcom/mb/android/AppJobScheduler;->cancelOneTimeWork(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-static {p1, v4, v3}, Lcom/mb/android/AppJobScheduler;->cancelContentTriggerWork(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p1, "oldValue"

    .line 36
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "newValue"

    .line 37
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 39
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v1, p1, v2

    .line 40
    invoke-direct {p0, p2, v1}, Lcom/mb/android/sync/SyncSettingsBroadcastReceiver;->containsServer([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 41
    invoke-static {v1}, Lcom/mb/android/sync/AndroidUploadManager;->cancelUploadsForServer(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_3
    :goto_1
    const-class p2, Lcom/mb/android/CameraUploadWorker;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p2, v4, v0, v1}, Lcom/mb/android/AppJobScheduler;->scheduleOneTimeWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_4
    :goto_2
    return-void
.end method
