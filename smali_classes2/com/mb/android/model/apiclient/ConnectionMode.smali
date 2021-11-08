.class public final enum Lcom/mb/android/model/apiclient/ConnectionMode;
.super Ljava/lang/Enum;
.source "ConnectionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mb/android/model/apiclient/ConnectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mb/android/model/apiclient/ConnectionMode;

.field public static final enum Local:Lcom/mb/android/model/apiclient/ConnectionMode;

.field public static final enum Manual:Lcom/mb/android/model/apiclient/ConnectionMode;

.field public static final enum Remote:Lcom/mb/android/model/apiclient/ConnectionMode;


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/mb/android/model/apiclient/ConnectionMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Local"

    invoke-direct {v0, v3, v1, v2}, Lcom/mb/android/model/apiclient/ConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mb/android/model/apiclient/ConnectionMode;->Local:Lcom/mb/android/model/apiclient/ConnectionMode;

    .line 6
    new-instance v0, Lcom/mb/android/model/apiclient/ConnectionMode;

    const/4 v3, 0x2

    const-string v4, "Remote"

    invoke-direct {v0, v4, v2, v3}, Lcom/mb/android/model/apiclient/ConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mb/android/model/apiclient/ConnectionMode;->Remote:Lcom/mb/android/model/apiclient/ConnectionMode;

    .line 7
    new-instance v0, Lcom/mb/android/model/apiclient/ConnectionMode;

    const/4 v4, 0x3

    const-string v5, "Manual"

    invoke-direct {v0, v5, v3, v4}, Lcom/mb/android/model/apiclient/ConnectionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mb/android/model/apiclient/ConnectionMode;->Manual:Lcom/mb/android/model/apiclient/ConnectionMode;

    .line 3
    new-array v0, v4, [Lcom/mb/android/model/apiclient/ConnectionMode;

    sget-object v4, Lcom/mb/android/model/apiclient/ConnectionMode;->Local:Lcom/mb/android/model/apiclient/ConnectionMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/mb/android/model/apiclient/ConnectionMode;->Remote:Lcom/mb/android/model/apiclient/ConnectionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mb/android/model/apiclient/ConnectionMode;->Manual:Lcom/mb/android/model/apiclient/ConnectionMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mb/android/model/apiclient/ConnectionMode;->$VALUES:[Lcom/mb/android/model/apiclient/ConnectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/mb/android/model/apiclient/ConnectionMode;->intValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mb/android/model/apiclient/ConnectionMode;
    .locals 1

    .line 3
    const-class v0, Lcom/mb/android/model/apiclient/ConnectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mb/android/model/apiclient/ConnectionMode;

    return-object p0
.end method

.method public static values()[Lcom/mb/android/model/apiclient/ConnectionMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/mb/android/model/apiclient/ConnectionMode;->$VALUES:[Lcom/mb/android/model/apiclient/ConnectionMode;

    invoke-virtual {v0}, [Lcom/mb/android/model/apiclient/ConnectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mb/android/model/apiclient/ConnectionMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/mb/android/model/apiclient/ConnectionMode;->intValue:I

    return v0
.end method
