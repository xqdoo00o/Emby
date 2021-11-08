.class public final enum Lcom/mb/android/model/sync/SyncCategory;
.super Ljava/lang/Enum;
.source "SyncCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mb/android/model/sync/SyncCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mb/android/model/sync/SyncCategory;

.field public static final enum Latest:Lcom/mb/android/model/sync/SyncCategory;

.field public static final enum NextUp:Lcom/mb/android/model/sync/SyncCategory;

.field public static final enum Resume:Lcom/mb/android/model/sync/SyncCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/mb/android/model/sync/SyncCategory;

    const/4 v1, 0x0

    const-string v2, "Latest"

    invoke-direct {v0, v2, v1}, Lcom/mb/android/model/sync/SyncCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/sync/SyncCategory;->Latest:Lcom/mb/android/model/sync/SyncCategory;

    .line 11
    new-instance v0, Lcom/mb/android/model/sync/SyncCategory;

    const/4 v2, 0x1

    const-string v3, "NextUp"

    invoke-direct {v0, v3, v2}, Lcom/mb/android/model/sync/SyncCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/sync/SyncCategory;->NextUp:Lcom/mb/android/model/sync/SyncCategory;

    .line 15
    new-instance v0, Lcom/mb/android/model/sync/SyncCategory;

    const/4 v3, 0x2

    const-string v4, "Resume"

    invoke-direct {v0, v4, v3}, Lcom/mb/android/model/sync/SyncCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/sync/SyncCategory;->Resume:Lcom/mb/android/model/sync/SyncCategory;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/mb/android/model/sync/SyncCategory;

    sget-object v4, Lcom/mb/android/model/sync/SyncCategory;->Latest:Lcom/mb/android/model/sync/SyncCategory;

    aput-object v4, v0, v1

    sget-object v1, Lcom/mb/android/model/sync/SyncCategory;->NextUp:Lcom/mb/android/model/sync/SyncCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mb/android/model/sync/SyncCategory;->Resume:Lcom/mb/android/model/sync/SyncCategory;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mb/android/model/sync/SyncCategory;->$VALUES:[Lcom/mb/android/model/sync/SyncCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mb/android/model/sync/SyncCategory;
    .locals 1

    .line 3
    const-class v0, Lcom/mb/android/model/sync/SyncCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mb/android/model/sync/SyncCategory;

    return-object p0
.end method

.method public static values()[Lcom/mb/android/model/sync/SyncCategory;
    .locals 1

    .line 3
    sget-object v0, Lcom/mb/android/model/sync/SyncCategory;->$VALUES:[Lcom/mb/android/model/sync/SyncCategory;

    invoke-virtual {v0}, [Lcom/mb/android/model/sync/SyncCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mb/android/model/sync/SyncCategory;

    return-object v0
.end method
