.class public Lcom/mb/android/logging/AppLogger;
.super Ljava/lang/Object;
.source "AppLogger.java"


# static fields
.field public static Current:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;
    .locals 1

    .line 32
    invoke-static {}, Lcom/mb/android/logging/AppLogger;->enableLogging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance p0, Lcom/mb/android/model/logging/NullLogger;

    invoke-direct {p0}, Lcom/mb/android/model/logging/NullLogger;-><init>()V

    return-object p0

    .line 36
    :cond_0
    new-instance v0, Lcom/mb/android/logging/SimpleLogger;

    invoke-direct {v0, p0}, Lcom/mb/android/logging/SimpleLogger;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static enableLogging()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;
    .locals 1

    .line 15
    sget-object v0, Lcom/mb/android/logging/AppLogger;->Current:Lcom/mb/android/model/logging/ILogger;

    if-nez v0, :cond_0

    .line 16
    invoke-static {p0}, Lcom/mb/android/logging/AppLogger;->createLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p0

    sput-object p0, Lcom/mb/android/logging/AppLogger;->Current:Lcom/mb/android/model/logging/ILogger;

    .line 18
    :cond_0
    sget-object p0, Lcom/mb/android/logging/AppLogger;->Current:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method
