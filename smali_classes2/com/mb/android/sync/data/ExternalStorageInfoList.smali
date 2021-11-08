.class public Lcom/mb/android/sync/data/ExternalStorageInfoList;
.super Ljava/util/ArrayList;
.source "ExternalStorageInfoList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/mb/android/sync/data/ExternalStorageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/mb/android/sync/data/ExternalStorageInfo;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 33
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mb/android/sync/data/ExternalStorageInfo;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/mb/android/sync/data/ExternalStorageInfoList;->get(I)Lcom/mb/android/sync/data/ExternalStorageInfo;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 19
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
