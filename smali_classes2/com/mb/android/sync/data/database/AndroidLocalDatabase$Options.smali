.class public Lcom/mb/android/sync/data/database/AndroidLocalDatabase$Options;
.super Ljava/lang/Object;
.source "AndroidLocalDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/sync/data/database/AndroidLocalDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public AlbumIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public EnableTotalRecordCount:Z

.field public Filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public IncludeItemTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Limit:Ljava/lang/Integer;

.field public LocalSortBy:Ljava/lang/String;

.field public MediaTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Recursive:Z

.field public SearchParentId:Ljava/lang/String;

.field public SeasonId:Ljava/lang/String;

.field public SeriesId:Ljava/lang/String;

.field public SortBy:Ljava/lang/String;

.field public SortOrder:Ljava/lang/String;

.field public StartIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSortAscending(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "descending"

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
