.class public Lcom/mb/android/sync/data/ExternalStorageInfo;
.super Ljava/lang/Object;
.source "ExternalStorageInfo.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/mb/android/sync/data/ExternalStorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mb/android/sync/data/ExternalStorageInfo;->path:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/mb/android/sync/data/ExternalStorageInfo;->uuid:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/mb/android/sync/data/ExternalStorageInfo;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/mb/android/sync/data/ExternalStorageInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/mb/android/sync/data/ExternalStorageInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mb/android/sync/data/ExternalStorageInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method
