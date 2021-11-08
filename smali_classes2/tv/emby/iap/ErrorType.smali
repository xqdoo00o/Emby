.class public final enum Ltv/emby/iap/ErrorType;
.super Ljava/lang/Enum;
.source "ErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/emby/iap/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/emby/iap/ErrorType;

.field public static final enum General:Ltv/emby/iap/ErrorType;

.field public static final enum InvalidProduct:Ltv/emby/iap/ErrorType;

.field public static final enum UnableToCompletePurchase:Ltv/emby/iap/ErrorType;

.field public static final enum UnableToConnectToStore:Ltv/emby/iap/ErrorType;

.field public static final enum UnableToValidatePurchase:Ltv/emby/iap/ErrorType;

.field public static final enum UserCancelled:Ltv/emby/iap/ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Ltv/emby/iap/ErrorType;

    const/4 v1, 0x0

    const-string v2, "UnableToConnectToStore"

    invoke-direct {v0, v2, v1}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->UnableToConnectToStore:Ltv/emby/iap/ErrorType;

    .line 5
    new-instance v0, Ltv/emby/iap/ErrorType;

    const/4 v2, 0x1

    const-string v3, "UnableToCompletePurchase"

    invoke-direct {v0, v3, v2}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->UnableToCompletePurchase:Ltv/emby/iap/ErrorType;

    .line 6
    new-instance v0, Ltv/emby/iap/ErrorType;

    const/4 v3, 0x2

    const-string v4, "UnableToValidatePurchase"

    invoke-direct {v0, v4, v3}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->UnableToValidatePurchase:Ltv/emby/iap/ErrorType;

    .line 7
    new-instance v0, Ltv/emby/iap/ErrorType;

    const/4 v4, 0x3

    const-string v5, "InvalidProduct"

    invoke-direct {v0, v5, v4}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->InvalidProduct:Ltv/emby/iap/ErrorType;

    new-instance v0, Ltv/emby/iap/ErrorType;

    const/4 v5, 0x4

    const-string v6, "General"

    invoke-direct {v0, v6, v5}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->General:Ltv/emby/iap/ErrorType;

    new-instance v0, Ltv/emby/iap/ErrorType;

    const/4 v6, 0x5

    const-string v7, "UserCancelled"

    invoke-direct {v0, v7, v6}, Ltv/emby/iap/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/emby/iap/ErrorType;->UserCancelled:Ltv/emby/iap/ErrorType;

    const/4 v0, 0x6

    .line 3
    new-array v0, v0, [Ltv/emby/iap/ErrorType;

    sget-object v7, Ltv/emby/iap/ErrorType;->UnableToConnectToStore:Ltv/emby/iap/ErrorType;

    aput-object v7, v0, v1

    sget-object v1, Ltv/emby/iap/ErrorType;->UnableToCompletePurchase:Ltv/emby/iap/ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Ltv/emby/iap/ErrorType;->UnableToValidatePurchase:Ltv/emby/iap/ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Ltv/emby/iap/ErrorType;->InvalidProduct:Ltv/emby/iap/ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Ltv/emby/iap/ErrorType;->General:Ltv/emby/iap/ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Ltv/emby/iap/ErrorType;->UserCancelled:Ltv/emby/iap/ErrorType;

    aput-object v1, v0, v6

    sput-object v0, Ltv/emby/iap/ErrorType;->$VALUES:[Ltv/emby/iap/ErrorType;

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

.method public static valueOf(Ljava/lang/String;)Ltv/emby/iap/ErrorType;
    .locals 1

    .line 3
    const-class v0, Ltv/emby/iap/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/emby/iap/ErrorType;

    return-object p0
.end method

.method public static values()[Ltv/emby/iap/ErrorType;
    .locals 1

    .line 3
    sget-object v0, Ltv/emby/iap/ErrorType;->$VALUES:[Ltv/emby/iap/ErrorType;

    invoke-virtual {v0}, [Ltv/emby/iap/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/emby/iap/ErrorType;

    return-object v0
.end method
