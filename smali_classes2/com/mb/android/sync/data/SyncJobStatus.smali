.class public final enum Lcom/mb/android/sync/data/SyncJobStatus;
.super Ljava/lang/Enum;
.source "SyncJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mb/android/sync/data/SyncJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mb/android/sync/data/SyncJobStatus;

.field public static final enum Completed:Lcom/mb/android/sync/data/SyncJobStatus;

.field public static final enum CompletedWithError:Lcom/mb/android/sync/data/SyncJobStatus;

.field public static final enum Converting:Lcom/mb/android/sync/data/SyncJobStatus;

.field public static final enum Failed:Lcom/mb/android/sync/data/SyncJobStatus;

.field public static final enum None:Lcom/mb/android/sync/data/SyncJobStatus;

.field public static final enum Queued:Lcom/mb/android/sync/data/SyncJobStatus;

.field public static final enum ReadyToTransfer:Lcom/mb/android/sync/data/SyncJobStatus;

.field public static final enum Transferring:Lcom/mb/android/sync/data/SyncJobStatus;


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 5
    new-instance v0, Lcom/mb/android/sync/data/SyncJobStatus;

    const/4 v1, 0x0

    const-string v2, "None"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/mb/android/sync/data/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mb/android/sync/data/SyncJobStatus;->None:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 6
    new-instance v0, Lcom/mb/android/sync/data/SyncJobStatus;

    const/4 v2, 0x1

    const-string v3, "Queued"

    invoke-direct {v0, v3, v2, v1}, Lcom/mb/android/sync/data/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mb/android/sync/data/SyncJobStatus;->Queued:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 7
    new-instance v0, Lcom/mb/android/sync/data/SyncJobStatus;

    const/4 v3, 0x2

    const-string v4, "Converting"

    invoke-direct {v0, v4, v3, v2}, Lcom/mb/android/sync/data/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mb/android/sync/data/SyncJobStatus;->Converting:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 8
    new-instance v0, Lcom/mb/android/sync/data/SyncJobStatus;

    const/4 v4, 0x3

    const-string v5, "ReadyToTransfer"

    invoke-direct {v0, v5, v4, v3}, Lcom/mb/android/sync/data/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mb/android/sync/data/SyncJobStatus;->ReadyToTransfer:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 9
    new-instance v0, Lcom/mb/android/sync/data/SyncJobStatus;

    const/4 v5, 0x4

    const-string v6, "Transferring"

    invoke-direct {v0, v6, v5, v4}, Lcom/mb/android/sync/data/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mb/android/sync/data/SyncJobStatus;->Transferring:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 10
    new-instance v0, Lcom/mb/android/sync/data/SyncJobStatus;

    const/4 v6, 0x5

    const-string v7, "Completed"

    invoke-direct {v0, v7, v6, v5}, Lcom/mb/android/sync/data/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mb/android/sync/data/SyncJobStatus;->Completed:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 11
    new-instance v0, Lcom/mb/android/sync/data/SyncJobStatus;

    const/4 v7, 0x6

    const-string v8, "CompletedWithError"

    invoke-direct {v0, v8, v7, v6}, Lcom/mb/android/sync/data/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mb/android/sync/data/SyncJobStatus;->CompletedWithError:Lcom/mb/android/sync/data/SyncJobStatus;

    .line 12
    new-instance v0, Lcom/mb/android/sync/data/SyncJobStatus;

    const/4 v8, 0x7

    const-string v9, "Failed"

    invoke-direct {v0, v9, v8, v7}, Lcom/mb/android/sync/data/SyncJobStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mb/android/sync/data/SyncJobStatus;->Failed:Lcom/mb/android/sync/data/SyncJobStatus;

    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Lcom/mb/android/sync/data/SyncJobStatus;

    sget-object v9, Lcom/mb/android/sync/data/SyncJobStatus;->None:Lcom/mb/android/sync/data/SyncJobStatus;

    aput-object v9, v0, v1

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->Queued:Lcom/mb/android/sync/data/SyncJobStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->Converting:Lcom/mb/android/sync/data/SyncJobStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->ReadyToTransfer:Lcom/mb/android/sync/data/SyncJobStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->Transferring:Lcom/mb/android/sync/data/SyncJobStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->Completed:Lcom/mb/android/sync/data/SyncJobStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->CompletedWithError:Lcom/mb/android/sync/data/SyncJobStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mb/android/sync/data/SyncJobStatus;->Failed:Lcom/mb/android/sync/data/SyncJobStatus;

    aput-object v1, v0, v8

    sput-object v0, Lcom/mb/android/sync/data/SyncJobStatus;->$VALUES:[Lcom/mb/android/sync/data/SyncJobStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/mb/android/sync/data/SyncJobStatus;->intValue:I

    return-void
.end method

.method public static fromValue(Ljava/lang/Integer;)Lcom/mb/android/sync/data/SyncJobStatus;
    .locals 6

    .line 25
    invoke-static {}, Lcom/mb/android/sync/data/SyncJobStatus;->values()[Lcom/mb/android/sync/data/SyncJobStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    invoke-virtual {v3}, Lcom/mb/android/sync/data/SyncJobStatus;->getValue()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mb/android/sync/data/SyncJobStatus;
    .locals 1

    .line 3
    const-class v0, Lcom/mb/android/sync/data/SyncJobStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mb/android/sync/data/SyncJobStatus;

    return-object p0
.end method

.method public static values()[Lcom/mb/android/sync/data/SyncJobStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/mb/android/sync/data/SyncJobStatus;->$VALUES:[Lcom/mb/android/sync/data/SyncJobStatus;

    invoke-virtual {v0}, [Lcom/mb/android/sync/data/SyncJobStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mb/android/sync/data/SyncJobStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mb/android/sync/data/SyncJobStatus;->intValue:I

    return v0
.end method
