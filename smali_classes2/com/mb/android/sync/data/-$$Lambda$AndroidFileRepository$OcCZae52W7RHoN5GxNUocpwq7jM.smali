.class public final synthetic Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$OcCZae52W7RHoN5GxNUocpwq7jM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/sync/data/AndroidFileRepository;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/sync/data/AndroidFileRepository;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$OcCZae52W7RHoN5GxNUocpwq7jM;->f$0:Lcom/mb/android/sync/data/AndroidFileRepository;

    iput-object p2, p0, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$OcCZae52W7RHoN5GxNUocpwq7jM;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$OcCZae52W7RHoN5GxNUocpwq7jM;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$OcCZae52W7RHoN5GxNUocpwq7jM;->f$0:Lcom/mb/android/sync/data/AndroidFileRepository;

    iget-object v1, p0, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$OcCZae52W7RHoN5GxNUocpwq7jM;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$OcCZae52W7RHoN5GxNUocpwq7jM;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->lambda$removeMediaStoreInsert$2$AndroidFileRepository(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
