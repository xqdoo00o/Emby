.class public Lcom/mb/android/AndroidAppHost;
.super Ljava/lang/Object;
.source "AndroidAppHost.java"


# static fields
.field public static AppName:Ljava/lang/String; = "Emby for Android"


# instance fields
.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private mContext:Landroid/content/Context;

.field private supportsDisplayModeSwitching:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/mb/android/AndroidAppHost;->logger:Lcom/mb/android/model/logging/ILogger;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/AndroidAppHost;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mb/android/AndroidAppHost;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "device_name"

    const/16 v2, 0x19

    if-lt v0, v2, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_name"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    return-object v0

    .line 114
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    return-object v0

    .line 119
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_4

    return-object p0

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    :cond_4
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p0
.end method

.method public static isArc()Z
    .locals 2

    .line 38
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, ".+_cheets|cheets_.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTvDevice(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)Z
    .locals 4

    const/4 v0, 0x0

    .line 191
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    const-string v1, "uimode"

    .line 192
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 193
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    return v3

    .line 198
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.television"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.software.leanback"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    return v3

    :catch_0
    move-exception p0

    .line 205
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Error in isTvDevice"

    invoke-interface {p1, v2, p0, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    return v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 77
    sget-object v0, Lcom/mb/android/AndroidAppHost;->AppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mb/android/AndroidAppHost;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLayout()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mb/android/AndroidAppHost;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-static {v0, v1}, Lcom/mb/android/AndroidAppHost;->isTvDevice(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tv"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mb/android/AndroidAppHost;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mb/android/AndroidAppHost;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/mb/android/AndroidAppHost;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "Device Name: %s"

    invoke-interface {v1, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFcmToken()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    const-string v1, "App"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "fcmtoken"

    const/4 v2, 0x0

    .line 215
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getWritableExternalStorageDirs()Lcom/mb/android/sync/data/ExternalStorageInfoList;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mb/android/sync/data/AndroidFileRepository;->getExternalStorageDirs(Landroid/content/Context;)Lcom/mb/android/sync/data/ExternalStorageInfoList;

    move-result-object v0

    return-object v0
.end method

.method public hasCamera()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setNavigationBarForegroundColor(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setNavigationBarForegroundColor %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 276
    new-instance v1, Lcom/mb/android/AndroidAppHost$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/mb/android/AndroidAppHost$2;-><init>(Lcom/mb/android/AndroidAppHost;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setStatusBarForegroundColor(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setStatusBarForegroundColor %s"

    invoke-interface {v0, v2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 233
    new-instance v1, Lcom/mb/android/AndroidAppHost$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/mb/android/AndroidAppHost$1;-><init>(Lcom/mb/android/AndroidAppHost;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public supportsDisplayModeSwitching()Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->supportsDisplayModeSwitching:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/mb/android/media/Display/DisplayHelper;

    iget-object v1, p0, Lcom/mb/android/AndroidAppHost;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mb/android/AndroidAppHost;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v0, v1, v2}, Lcom/mb/android/media/Display/DisplayHelper;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    .line 171
    invoke-virtual {v0}, Lcom/mb/android/media/Display/DisplayHelper;->getDisplayModes()V

    .line 172
    invoke-virtual {v0}, Lcom/mb/android/media/Display/DisplayHelper;->supportsDisplayModeSwitching()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/AndroidAppHost;->supportsDisplayModeSwitching:Ljava/lang/Boolean;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost;->supportsDisplayModeSwitching:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public supportsPlayStore()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "google"

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsSync()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "google"

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
