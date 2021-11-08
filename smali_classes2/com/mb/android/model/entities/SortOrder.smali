.class public final enum Lcom/mb/android/model/entities/SortOrder;
.super Ljava/lang/Enum;
.source "SortOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mb/android/model/entities/SortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mb/android/model/entities/SortOrder;

.field public static final enum Ascending:Lcom/mb/android/model/entities/SortOrder;

.field public static final enum Descending:Lcom/mb/android/model/entities/SortOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/mb/android/model/entities/SortOrder;

    const/4 v1, 0x0

    const-string v2, "Ascending"

    invoke-direct {v0, v2, v1}, Lcom/mb/android/model/entities/SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/entities/SortOrder;->Ascending:Lcom/mb/android/model/entities/SortOrder;

    .line 15
    new-instance v0, Lcom/mb/android/model/entities/SortOrder;

    const/4 v2, 0x1

    const-string v3, "Descending"

    invoke-direct {v0, v3, v2}, Lcom/mb/android/model/entities/SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/entities/SortOrder;->Descending:Lcom/mb/android/model/entities/SortOrder;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/mb/android/model/entities/SortOrder;

    sget-object v3, Lcom/mb/android/model/entities/SortOrder;->Ascending:Lcom/mb/android/model/entities/SortOrder;

    aput-object v3, v0, v1

    sget-object v1, Lcom/mb/android/model/entities/SortOrder;->Descending:Lcom/mb/android/model/entities/SortOrder;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mb/android/model/entities/SortOrder;->$VALUES:[Lcom/mb/android/model/entities/SortOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(I)Lcom/mb/android/model/entities/SortOrder;
    .locals 1

    .line 24
    invoke-static {}, Lcom/mb/android/model/entities/SortOrder;->values()[Lcom/mb/android/model/entities/SortOrder;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mb/android/model/entities/SortOrder;
    .locals 1

    .line 6
    const-class v0, Lcom/mb/android/model/entities/SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mb/android/model/entities/SortOrder;

    return-object p0
.end method

.method public static values()[Lcom/mb/android/model/entities/SortOrder;
    .locals 1

    .line 6
    sget-object v0, Lcom/mb/android/model/entities/SortOrder;->$VALUES:[Lcom/mb/android/model/entities/SortOrder;

    invoke-virtual {v0}, [Lcom/mb/android/model/entities/SortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mb/android/model/entities/SortOrder;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/mb/android/model/entities/SortOrder;->ordinal()I

    move-result v0

    return v0
.end method
