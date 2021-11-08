.class public final synthetic Lcom/mb/android/sync/data/database/-$$Lambda$AndroidLocalDatabase$PnZEwAzIFoCowEGBi8uDDrocCCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/sync/data/database/-$$Lambda$AndroidLocalDatabase$PnZEwAzIFoCowEGBi8uDDrocCCo;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/mb/android/sync/data/database/-$$Lambda$AndroidLocalDatabase$PnZEwAzIFoCowEGBi8uDDrocCCo;->f$0:Ljava/util/HashMap;

    check-cast p1, Lcom/mb/android/sync/data/database/LocalItem;

    check-cast p2, Lcom/mb/android/sync/data/database/LocalItem;

    invoke-static {v0, p1, p2}, Lcom/mb/android/sync/data/database/AndroidLocalDatabase;->lambda$getLocalItemsByIds$0(Ljava/util/HashMap;Lcom/mb/android/sync/data/database/LocalItem;Lcom/mb/android/sync/data/database/LocalItem;)I

    move-result p1

    return p1
.end method
