.class public Lis/xyz/mpv/MPVLib;
.super Ljava/lang/Object;
.source "MPVLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lis/xyz/mpv/MPVLib$mpvLogLevel;,
        Lis/xyz/mpv/MPVLib$mpvEventId;,
        Lis/xyz/mpv/MPVLib$mpvFormat;
    }
.end annotation


# static fields
.field private static final log_observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lis/xyz/mpv/LogObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lis/xyz/mpv/EventObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "mpv"

    const-string v1, "player"

    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 16
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 17
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lis/xyz/mpv/MPVLib;->log_observers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLogObserver(Lis/xyz/mpv/LogObserver;)V
    .locals 2

    .line 92
    sget-object v0, Lis/xyz/mpv/MPVLib;->log_observers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lis/xyz/mpv/MPVLib;->log_observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static addObserver(Lis/xyz/mpv/EventObserver;)V
    .locals 2

    .line 48
    sget-object v0, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native attachSurface(Landroid/view/Surface;)V
.end method

.method public static native command([Ljava/lang/String;)V
.end method

.method public static native create(Landroid/content/Context;)V
.end method

.method public static native destroy()V
.end method

.method public static native detachSurface()V
.end method

.method public static event(I)V
    .locals 3

    .line 83
    sget-object v0, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/EventObserver;

    .line 85
    invoke-interface {v2, p0}, Lis/xyz/mpv/EventObserver;->event(I)V

    goto :goto_0

    .line 86
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static eventProperty(Ljava/lang/String;)V
    .locals 3

    .line 76
    sget-object v0, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/EventObserver;

    .line 78
    invoke-interface {v2, p0}, Lis/xyz/mpv/EventObserver;->eventProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static eventProperty(Ljava/lang/String;J)V
    .locals 3

    .line 55
    sget-object v0, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/EventObserver;

    .line 57
    invoke-interface {v2, p0, p1, p2}, Lis/xyz/mpv/EventObserver;->eventProperty(Ljava/lang/String;J)V

    goto :goto_0

    .line 58
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static eventProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 69
    sget-object v0, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/EventObserver;

    .line 71
    invoke-interface {v2, p0, p1}, Lis/xyz/mpv/EventObserver;->eventProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static eventProperty(Ljava/lang/String;Z)V
    .locals 3

    .line 62
    sget-object v0, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/EventObserver;

    .line 64
    invoke-interface {v2, p0, p1}, Lis/xyz/mpv/EventObserver;->eventProperty(Ljava/lang/String;Z)V

    goto :goto_0

    .line 65
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native getPropertyBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public static native getPropertyCache(Ljava/lang/String;)Ljava/lang/Double;
.end method

.method public static native getPropertyDouble(Ljava/lang/String;)Ljava/lang/Double;
.end method

.method public static native getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public static native getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native grabThumbnail(I)Landroid/graphics/Bitmap;
.end method

.method public static native init()V
.end method

.method public static logMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 99
    sget-object v0, Lis/xyz/mpv/MPVLib;->log_observers:Ljava/util/List;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lis/xyz/mpv/MPVLib;->log_observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lis/xyz/mpv/LogObserver;

    .line 101
    invoke-interface {v2, p0, p1, p2}, Lis/xyz/mpv/LogObserver;->logMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native observeProperty(Ljava/lang/String;I)V
.end method

.method public static removeLogObserver(Lis/xyz/mpv/LogObserver;)V
    .locals 2

    .line 95
    sget-object v0, Lis/xyz/mpv/MPVLib;->log_observers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lis/xyz/mpv/MPVLib;->log_observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeObserver(Lis/xyz/mpv/EventObserver;)V
    .locals 2

    .line 51
    sget-object v0, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lis/xyz/mpv/MPVLib;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native setOptionString(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native setPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public static native setPropertyDouble(Ljava/lang/String;Ljava/lang/Double;)V
.end method

.method public static native setPropertyInt(Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public static native setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
.end method
