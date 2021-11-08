.class public Lcom/mb/android/logging/SimpleLogger;
.super Ljava/lang/Object;
.source "SimpleLogger.java"

# interfaces
.implements Lcom/mb/android/model/logging/ILogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/logging/SimpleLogger$Worker;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private logFilePath:Ljava/lang/String;

.field worker:Lcom/mb/android/logging/SimpleLogger$Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/mb/android/logging/SimpleLogger$Worker;

    invoke-direct {v0, p0}, Lcom/mb/android/logging/SimpleLogger$Worker;-><init>(Lcom/mb/android/logging/SimpleLogger;)V

    iput-object v0, p0, Lcom/mb/android/logging/SimpleLogger;->worker:Lcom/mb/android/logging/SimpleLogger$Worker;

    .line 29
    iput-object p1, p0, Lcom/mb/android/logging/SimpleLogger;->context:Landroid/content/Context;

    const-string v0, ""

    .line 31
    invoke-static {p1, v0}, Lcom/mb/android/logging/SimpleLogger;->getLogFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mb/android/logging/SimpleLogger;->logFilePath:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/mb/android/logging/SimpleLogger;->worker:Lcom/mb/android/logging/SimpleLogger$Worker;

    invoke-virtual {p1}, Lcom/mb/android/logging/SimpleLogger$Worker;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/logging/SimpleLogger;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/mb/android/logging/SimpleLogger;->logTextToFile(Ljava/lang/String;)V

    return-void
.end method

.method private static getLogFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".log"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logs"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 227
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private logException(Ljava/lang/String;Ljava/lang/Exception;Lcom/mb/android/model/logging/LogSeverity;)V
    .locals 1

    .line 177
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/mb/android/logging/SimpleLogger;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 179
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "caused by "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mb/android/logging/SimpleLogger;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x1

    .line 182
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "failed to parse exception"

    aput-object v0, p2, p3

    const-string p3, "FileLogger"

    invoke-virtual {p0, p3, p2}, Lcom/mb/android/logging/SimpleLogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/mb/android/logging/SimpleLogger;->logText(Ljava/lang/String;)V

    return-void
.end method

.method private logException(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mb/android/model/logging/LogSeverity;)V
    .locals 1

    .line 191
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 192
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/mb/android/logging/SimpleLogger;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 197
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "caused by "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mb/android/logging/SimpleLogger;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x1

    .line 200
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "failed to parse exception"

    aput-object v0, p2, p3

    const-string p3, "FileLogger"

    invoke-virtual {p0, p3, p2}, Lcom/mb/android/logging/SimpleLogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/mb/android/logging/SimpleLogger;->logText(Ljava/lang/String;)V

    return-void
.end method

.method private logText(Ljava/lang/String;)V
    .locals 1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/logging/SimpleLogger;->worker:Lcom/mb/android/logging/SimpleLogger$Worker;

    iget-object v0, v0, Lcom/mb/android/logging/SimpleLogger$Worker;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private logTextInternal(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mb/android/logging/SimpleLogger;->logFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 86
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 89
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 92
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 96
    throw p1
.end method

.method private logTextToFile(Ljava/lang/String;)V
    .locals 0

    .line 66
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mb/android/logging/SimpleLogger;->logTextInternal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r"

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 211
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs Debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 135
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/mb/android/logging/SimpleLogger;->logText(Ljava/lang/String;)V

    return-void
.end method

.method public varargs Error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 113
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 117
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/mb/android/logging/SimpleLogger;->logText(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 167
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 171
    :cond_1
    :goto_0
    sget-object p3, Lcom/mb/android/model/logging/LogSeverity;->Error:Lcom/mb/android/model/logging/LogSeverity;

    invoke-direct {p0, p1, p2, p3}, Lcom/mb/android/logging/SimpleLogger;->logException(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mb/android/model/logging/LogSeverity;)V

    return-void
.end method

.method public varargs Fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 146
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 150
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/mb/android/logging/SimpleLogger;->logText(Ljava/lang/String;)V

    return-void
.end method

.method public varargs FatalException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 157
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 161
    :cond_1
    :goto_0
    sget-object p3, Lcom/mb/android/model/logging/LogSeverity;->Fatal:Lcom/mb/android/model/logging/LogSeverity;

    invoke-direct {p0, p1, p2, p3}, Lcom/mb/android/logging/SimpleLogger;->logException(Ljava/lang/String;Ljava/lang/Exception;Lcom/mb/android/model/logging/LogSeverity;)V

    return-void
.end method

.method public varargs Info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 102
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 106
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/mb/android/logging/SimpleLogger;->logText(Ljava/lang/String;)V

    return-void
.end method

.method public varargs Warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 124
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/mb/android/logging/SimpleLogger;->logText(Ljava/lang/String;)V

    return-void
.end method
