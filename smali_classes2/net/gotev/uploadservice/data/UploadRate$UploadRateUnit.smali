.class public final enum Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;
.super Ljava/lang/Enum;
.source "UploadRate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/data/UploadRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadRateUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;",
        "",
        "(Ljava/lang/String;I)V",
        "BitPerSecond",
        "KilobitPerSecond",
        "MegabitPerSecond",
        "uploadservice_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

.field public static final enum BitPerSecond:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

.field public static final enum KilobitPerSecond:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

.field public static final enum MegabitPerSecond:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    new-instance v1, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    const/4 v2, 0x0

    const-string v3, "BitPerSecond"

    invoke-direct {v1, v3, v2}, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;->BitPerSecond:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    aput-object v1, v0, v2

    new-instance v1, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    const/4 v2, 0x1

    const-string v3, "KilobitPerSecond"

    invoke-direct {v1, v3, v2}, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;->KilobitPerSecond:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    aput-object v1, v0, v2

    new-instance v1, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    const/4 v2, 0x2

    const-string v3, "MegabitPerSecond"

    invoke-direct {v1, v3, v2}, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;->MegabitPerSecond:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    aput-object v1, v0, v2

    sput-object v0, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;->$VALUES:[Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;
    .locals 1

    const-class v0, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    return-object p0
.end method

.method public static values()[Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;
    .locals 1

    sget-object v0, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;->$VALUES:[Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    invoke-virtual {v0}, [Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    return-object v0
.end method
