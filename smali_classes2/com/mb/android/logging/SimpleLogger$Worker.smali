.class Lcom/mb/android/logging/SimpleLogger$Worker;
.super Ljava/lang/Thread;
.source "SimpleLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/logging/SimpleLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Worker"
.end annotation


# instance fields
.field queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mb/android/logging/SimpleLogger;


# direct methods
.method constructor <init>(Lcom/mb/android/logging/SimpleLogger;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mb/android/logging/SimpleLogger$Worker;->this$0:Lcom/mb/android/logging/SimpleLogger;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/mb/android/logging/SimpleLogger$Worker;->queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 43
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/logging/SimpleLogger$Worker;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iget-object v1, p0, Lcom/mb/android/logging/SimpleLogger$Worker;->this$0:Lcom/mb/android/logging/SimpleLogger;

    invoke-static {v1, v0}, Lcom/mb/android/logging/SimpleLogger;->access$000(Lcom/mb/android/logging/SimpleLogger;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
