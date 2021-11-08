.class public final synthetic Lcom/mb/android/-$$Lambda$CameraUploadWorker$M1bNv2s6RJIMrJmHwo4I_3O0gWg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/CameraUploadWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/CameraUploadWorker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/-$$Lambda$CameraUploadWorker$M1bNv2s6RJIMrJmHwo4I_3O0gWg;->f$0:Lcom/mb/android/CameraUploadWorker;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mb/android/-$$Lambda$CameraUploadWorker$M1bNv2s6RJIMrJmHwo4I_3O0gWg;->f$0:Lcom/mb/android/CameraUploadWorker;

    invoke-virtual {v0, p1}, Lcom/mb/android/CameraUploadWorker;->lambda$startWork$0$CameraUploadWorker(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
