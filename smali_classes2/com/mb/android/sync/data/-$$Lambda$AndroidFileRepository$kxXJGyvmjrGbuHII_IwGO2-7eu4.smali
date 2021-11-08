.class public final synthetic Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$kxXJGyvmjrGbuHII_IwGO2-7eu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/sync/data/AndroidFileRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/sync/data/AndroidFileRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$kxXJGyvmjrGbuHII_IwGO2-7eu4;->f$0:Lcom/mb/android/sync/data/AndroidFileRepository;

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/mb/android/sync/data/-$$Lambda$AndroidFileRepository$kxXJGyvmjrGbuHII_IwGO2-7eu4;->f$0:Lcom/mb/android/sync/data/AndroidFileRepository;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/sync/data/AndroidFileRepository;->lambda$deleteEmptyParentFolders$0$AndroidFileRepository(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
