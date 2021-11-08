.class public final synthetic Lcom/mb/android/-$$Lambda$AppSyncWorker$8rovqGWUc7YBMRXgkov9lcHi-9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/AppSyncWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/AppSyncWorker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/-$$Lambda$AppSyncWorker$8rovqGWUc7YBMRXgkov9lcHi-9A;->f$0:Lcom/mb/android/AppSyncWorker;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mb/android/-$$Lambda$AppSyncWorker$8rovqGWUc7YBMRXgkov9lcHi-9A;->f$0:Lcom/mb/android/AppSyncWorker;

    invoke-virtual {v0, p1}, Lcom/mb/android/AppSyncWorker;->lambda$startWork$0$AppSyncWorker(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
