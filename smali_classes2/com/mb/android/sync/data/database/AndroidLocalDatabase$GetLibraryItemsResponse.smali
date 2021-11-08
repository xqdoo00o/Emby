.class public Lcom/mb/android/sync/data/database/AndroidLocalDatabase$GetLibraryItemsResponse;
.super Ljava/lang/Object;
.source "AndroidLocalDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/sync/data/database/AndroidLocalDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLibraryItemsResponse"
.end annotation


# instance fields
.field private final Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;"
        }
    .end annotation
.end field

.field private final TotalRecordCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mb/android/sync/data/database/LocalItem;",
            ">;I)V"
        }
    .end annotation

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$GetLibraryItemsResponse;->Items:Ljava/util/List;

    .line 390
    iput p2, p0, Lcom/mb/android/sync/data/database/AndroidLocalDatabase$GetLibraryItemsResponse;->TotalRecordCount:I

    return-void
.end method
