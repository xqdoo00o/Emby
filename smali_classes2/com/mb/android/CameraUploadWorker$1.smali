.class Lcom/mb/android/CameraUploadWorker$1;
.super Ljava/lang/Object;
.source "CameraUploadWorker.java"

# interfaces
.implements Lcom/mb/android/sync/CameraUploader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/CameraUploadWorker;->lambda$startWork$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/CameraUploadWorker;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method constructor <init>(Lcom/mb/android/CameraUploadWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/mb/android/CameraUploadWorker$1;->this$0:Lcom/mb/android/CameraUploadWorker;

    iput-object p2, p0, Lcom/mb/android/CameraUploadWorker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker$1;->this$0:Lcom/mb/android/CameraUploadWorker;

    invoke-static {v0}, Lcom/mb/android/CameraUploadWorker;->access$104(Lcom/mb/android/CameraUploadWorker;)I

    move-result v0

    iget-object v1, p0, Lcom/mb/android/CameraUploadWorker$1;->this$0:Lcom/mb/android/CameraUploadWorker;

    invoke-static {v1}, Lcom/mb/android/CameraUploadWorker;->access$000(Lcom/mb/android/CameraUploadWorker;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mb/android/CameraUploadWorker$1;->this$0:Lcom/mb/android/CameraUploadWorker;

    invoke-static {v1}, Lcom/mb/android/CameraUploadWorker;->access$200(Lcom/mb/android/CameraUploadWorker;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker$1;->this$0:Lcom/mb/android/CameraUploadWorker;

    iget-object v1, p0, Lcom/mb/android/CameraUploadWorker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v0, v1}, Lcom/mb/android/CameraUploadWorker;->access$400(Lcom/mb/android/CameraUploadWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker$1;->this$0:Lcom/mb/android/CameraUploadWorker;

    invoke-static {v0}, Lcom/mb/android/CameraUploadWorker;->access$004(Lcom/mb/android/CameraUploadWorker;)I

    move-result v0

    iget-object v1, p0, Lcom/mb/android/CameraUploadWorker$1;->this$0:Lcom/mb/android/CameraUploadWorker;

    invoke-static {v1}, Lcom/mb/android/CameraUploadWorker;->access$100(Lcom/mb/android/CameraUploadWorker;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mb/android/CameraUploadWorker$1;->this$0:Lcom/mb/android/CameraUploadWorker;

    invoke-static {v1}, Lcom/mb/android/CameraUploadWorker;->access$200(Lcom/mb/android/CameraUploadWorker;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/mb/android/CameraUploadWorker$1;->this$0:Lcom/mb/android/CameraUploadWorker;

    iget-object v1, p0, Lcom/mb/android/CameraUploadWorker$1;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v0, v1}, Lcom/mb/android/CameraUploadWorker;->access$300(Lcom/mb/android/CameraUploadWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    :cond_0
    return-void
.end method
