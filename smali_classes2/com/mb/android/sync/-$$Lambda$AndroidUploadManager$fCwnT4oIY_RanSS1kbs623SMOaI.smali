.class public final synthetic Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$fCwnT4oIY_RanSS1kbs623SMOaI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/sync/AndroidUploadManager;

.field private final synthetic f$1:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/sync/AndroidUploadManager;Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$fCwnT4oIY_RanSS1kbs623SMOaI;->f$0:Lcom/mb/android/sync/AndroidUploadManager;

    iput-object p2, p0, Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$fCwnT4oIY_RanSS1kbs623SMOaI;->f$1:Lcom/mb/android/model/logging/ILogger;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$fCwnT4oIY_RanSS1kbs623SMOaI;->f$0:Lcom/mb/android/sync/AndroidUploadManager;

    iget-object v1, p0, Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$fCwnT4oIY_RanSS1kbs623SMOaI;->f$1:Lcom/mb/android/model/logging/ILogger;

    check-cast p1, Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v0, v1, p1}, Lcom/mb/android/sync/AndroidUploadManager;->lambda$new$0$AndroidUploadManager(Lcom/mb/android/model/logging/ILogger;Lnet/gotev/uploadservice/UploadService;)Lnet/gotev/uploadservice/observer/task/UploadTaskObserver;

    move-result-object p1

    return-object p1
.end method
