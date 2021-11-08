.class public Lcom/mb/android/AppJobScheduler;
.super Ljava/lang/Object;
.source "AppJobScheduler.java"


# static fields
.field public static final KEY_IS_CONTENT_URI_TRIGGER:Ljava/lang/String; = "is_content_uri_trigger"

.field public static final KEY_IS_PERIODIC:Ljava/lang/String; = "is_work_periodic"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelContentTriggerWork(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 127
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 128
    const-class p1, Lcom/mb/android/CameraUploadWorker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v0, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    const-string v1, "EmbyCameraUpload"

    invoke-static {p0, p1, v1, p2, v0}, Lcom/mb/android/AppJobScheduler;->scheduleContentUriTriggerWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/work/ExistingWorkPolicy;)V

    :cond_0
    return-void

    .line 133
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-content_trigger"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    .line 136
    invoke-static {p0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p0

    .line 138
    invoke-virtual {v1, p2}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    .line 139
    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "Cancelling content trigger work \'%s\'"

    invoke-interface {p0, p1, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static cancelOneTimeWork(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-onetime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    .line 93
    invoke-static {p0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p0

    .line 95
    invoke-virtual {v1, v0}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    const/4 v0, 0x1

    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Cancelling one time work \'%s\'"

    invoke-interface {p0, p1, v0}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static createOrUpdatePeriodicWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-periodic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    .line 42
    invoke-static {p0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    .line 44
    new-instance v3, Landroidx/work/PeriodicWorkRequest$Builder;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xf

    invoke-direct {v3, p1, v5, v6, v4}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 46
    invoke-static {p0, p3}, Lcom/mb/android/AppJobScheduler;->getConstraints(Landroid/content/Context;Ljava/lang/Boolean;)Landroidx/work/Constraints;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/work/PeriodicWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    new-instance p1, Landroidx/work/Data$Builder;

    invoke-direct {p1}, Landroidx/work/Data$Builder;-><init>()V

    const/4 p3, 0x1

    const-string v3, "is_work_periodic"

    .line 48
    invoke-virtual {p1, v3, p3}, Landroidx/work/Data$Builder;->putBoolean(Ljava/lang/String;Z)Landroidx/work/Data$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Landroidx/work/PeriodicWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 50
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest;

    .line 52
    sget-object p1, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 53
    invoke-virtual {v1, v0}, Landroidx/work/WorkManager;->getWorkInfosForUniqueWorkLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 55
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/WorkInfo;

    .line 56
    invoke-virtual {v4}, Landroidx/work/WorkInfo;->getState()Landroidx/work/WorkInfo$State;

    move-result-object v4

    sget-object v5, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v4, v5, :cond_0

    .line 57
    sget-object p1, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 63
    :cond_1
    invoke-virtual {v1, v0, p1, p0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Landroidx/work/Operation;->getState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/Operation$State;

    const/4 p1, 0x2

    .line 65
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest;->getId()Ljava/util/UUID;

    move-result-object p0

    aput-object p0, p1, p3

    const-string p0, "Scheduled periodic work \'%s\' with id = \'%s\'"

    invoke-interface {v2, p0, p1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static getConstraints(Landroid/content/Context;Ljava/lang/Boolean;)Landroidx/work/Constraints;
    .locals 0

    .line 143
    invoke-static {p0, p1}, Lcom/mb/android/AppJobScheduler;->getConstraintsBuilder(Landroid/content/Context;Ljava/lang/Boolean;)Landroidx/work/Constraints$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object p0

    return-object p0
.end method

.method private static getConstraintsBuilder(Landroid/content/Context;Ljava/lang/Boolean;)Landroidx/work/Constraints$Builder;
    .locals 2

    .line 148
    new-instance v0, Lcom/mb/android/sync/AppSettings;

    invoke-direct {v0, p0}, Lcom/mb/android/sync/AppSettings;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance p0, Landroidx/work/Constraints$Builder;

    invoke-direct {p0}, Landroidx/work/Constraints$Builder;-><init>()V

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0, v1}, Landroidx/work/Constraints$Builder;->setRequiresCharging(Z)Landroidx/work/Constraints$Builder;

    move-result-object p0

    .line 151
    invoke-virtual {p0, v1}, Landroidx/work/Constraints$Builder;->setRequiresCharging(Z)Landroidx/work/Constraints$Builder;

    move-result-object p0

    .line 152
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getCameraUploadOnlyOnWifi()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    goto :goto_2

    .line 156
    :cond_1
    invoke-virtual {v0}, Lcom/mb/android/sync/AppSettings;->getSyncOnlyOnWifi()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    goto :goto_1

    :cond_2
    sget-object p1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    :goto_2
    return-object p0
.end method

.method public static scheduleContentUriTriggerWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;Landroidx/work/ExistingWorkPolicy;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Landroidx/work/ExistingWorkPolicy;",
            ")V"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-content_trigger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    .line 105
    invoke-static {p0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    .line 107
    new-instance v3, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-direct {v3, p1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 108
    invoke-static {p0, p3}, Lcom/mb/android/AppJobScheduler;->getConstraintsBuilder(Landroid/content/Context;Ljava/lang/Boolean;)Landroidx/work/Constraints$Builder;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 p3, 0x1

    .line 109
    invoke-virtual {p0, p1, p3}, Landroidx/work/Constraints$Builder;->addContentUriTrigger(Landroid/net/Uri;Z)Landroidx/work/Constraints$Builder;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 110
    invoke-virtual {p0, p1, p3}, Landroidx/work/Constraints$Builder;->addContentUriTrigger(Landroid/net/Uri;Z)Landroidx/work/Constraints$Builder;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 111
    invoke-virtual {p0, p1, p3}, Landroidx/work/Constraints$Builder;->addContentUriTrigger(Landroid/net/Uri;Z)Landroidx/work/Constraints$Builder;

    move-result-object p0

    sget-object p1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 112
    invoke-virtual {p0, p1, p3}, Landroidx/work/Constraints$Builder;->addContentUriTrigger(Landroid/net/Uri;Z)Landroidx/work/Constraints$Builder;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object p0

    .line 108
    invoke-virtual {v3, p0}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    new-instance p1, Landroidx/work/Data$Builder;

    invoke-direct {p1}, Landroidx/work/Data$Builder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "is_work_periodic"

    .line 115
    invoke-virtual {p1, v4, v3}, Landroidx/work/Data$Builder;->putBoolean(Ljava/lang/String;Z)Landroidx/work/Data$Builder;

    move-result-object p1

    const-string v4, "is_content_uri_trigger"

    .line 116
    invoke-virtual {p1, v4, p3}, Landroidx/work/Data$Builder;->putBoolean(Ljava/lang/String;Z)Landroidx/work/Data$Builder;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 118
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest;

    .line 120
    invoke-virtual {v1, v0, p4, p0}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    const/4 p1, 0x2

    .line 121
    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v3

    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest;->getId()Ljava/util/UUID;

    move-result-object p0

    aput-object p0, p1, p3

    const-string p0, "Scheduled content uri trigger work \'%s\' with id = \'%s\'"

    invoke-interface {v2, p0, p1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static scheduleOneTimeWork(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-onetime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    .line 73
    invoke-static {p0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v2

    .line 75
    new-instance v3, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-direct {v3, p1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 76
    invoke-static {p0, p4}, Lcom/mb/android/AppJobScheduler;->getConstraints(Landroid/content/Context;Ljava/lang/Boolean;)Landroidx/work/Constraints;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    new-instance p1, Landroidx/work/Data$Builder;

    invoke-direct {p1}, Landroidx/work/Data$Builder;-><init>()V

    const/4 p4, 0x0

    const-string v3, "is_work_periodic"

    .line 78
    invoke-virtual {p1, v3, p4}, Landroidx/work/Data$Builder;->putBoolean(Ljava/lang/String;Z)Landroidx/work/Data$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string v3, "syncCheckProgressOnly"

    invoke-virtual {p1, v3, p3}, Landroidx/work/Data$Builder;->putBoolean(Ljava/lang/String;Z)Landroidx/work/Data$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 81
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest;

    .line 83
    sget-object p1, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-virtual {v1, v0, p1, p0}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    move-result-object p1

    .line 84
    invoke-interface {p1}, Landroidx/work/Operation;->getState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/Operation$State;

    const/4 p1, 0x2

    .line 85
    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, p4

    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest;->getId()Ljava/util/UUID;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, p1, p2

    const-string p0, "Scheduled one time work \'%s\' with id = \'%s\'"

    invoke-interface {v2, p0, p1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
