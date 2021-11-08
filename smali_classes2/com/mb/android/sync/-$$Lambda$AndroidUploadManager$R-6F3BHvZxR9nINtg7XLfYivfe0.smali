.class public final synthetic Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$R-6F3BHvZxR9nINtg7XLfYivfe0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/sync/AndroidUploadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/sync/AndroidUploadManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$R-6F3BHvZxR9nINtg7XLfYivfe0;->f$0:Lcom/mb/android/sync/AndroidUploadManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mb/android/sync/-$$Lambda$AndroidUploadManager$R-6F3BHvZxR9nINtg7XLfYivfe0;->f$0:Lcom/mb/android/sync/AndroidUploadManager;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/mb/android/sync/AndroidUploadManager;->lambda$R-6F3BHvZxR9nINtg7XLfYivfe0(Lcom/mb/android/sync/AndroidUploadManager;Ljava/lang/String;)Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    move-result-object p1

    return-object p1
.end method
