.class public final enum Lnet/gotev/uploadservice/data/UploadStatus;
.super Ljava/lang/Enum;
.source "UploadStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/gotev/uploadservice/data/UploadStatus;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lnet/gotev/uploadservice/data/UploadStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "InProgress",
        "Success",
        "Error",
        "Completed",
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
.field private static final synthetic $VALUES:[Lnet/gotev/uploadservice/data/UploadStatus;

.field public static final enum Completed:Lnet/gotev/uploadservice/data/UploadStatus;

.field public static final enum Error:Lnet/gotev/uploadservice/data/UploadStatus;

.field public static final enum InProgress:Lnet/gotev/uploadservice/data/UploadStatus;

.field public static final enum Success:Lnet/gotev/uploadservice/data/UploadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/gotev/uploadservice/data/UploadStatus;

    new-instance v1, Lnet/gotev/uploadservice/data/UploadStatus;

    const/4 v2, 0x0

    const-string v3, "InProgress"

    invoke-direct {v1, v3, v2}, Lnet/gotev/uploadservice/data/UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/gotev/uploadservice/data/UploadStatus;->InProgress:Lnet/gotev/uploadservice/data/UploadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lnet/gotev/uploadservice/data/UploadStatus;

    const/4 v2, 0x1

    const-string v3, "Success"

    invoke-direct {v1, v3, v2}, Lnet/gotev/uploadservice/data/UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/gotev/uploadservice/data/UploadStatus;->Success:Lnet/gotev/uploadservice/data/UploadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lnet/gotev/uploadservice/data/UploadStatus;

    const/4 v2, 0x2

    const-string v3, "Error"

    invoke-direct {v1, v3, v2}, Lnet/gotev/uploadservice/data/UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/gotev/uploadservice/data/UploadStatus;->Error:Lnet/gotev/uploadservice/data/UploadStatus;

    aput-object v1, v0, v2

    new-instance v1, Lnet/gotev/uploadservice/data/UploadStatus;

    const/4 v2, 0x3

    const-string v3, "Completed"

    invoke-direct {v1, v3, v2}, Lnet/gotev/uploadservice/data/UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/gotev/uploadservice/data/UploadStatus;->Completed:Lnet/gotev/uploadservice/data/UploadStatus;

    aput-object v1, v0, v2

    sput-object v0, Lnet/gotev/uploadservice/data/UploadStatus;->$VALUES:[Lnet/gotev/uploadservice/data/UploadStatus;

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

.method public static valueOf(Ljava/lang/String;)Lnet/gotev/uploadservice/data/UploadStatus;
    .locals 1

    const-class v0, Lnet/gotev/uploadservice/data/UploadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/gotev/uploadservice/data/UploadStatus;

    return-object p0
.end method

.method public static values()[Lnet/gotev/uploadservice/data/UploadStatus;
    .locals 1

    sget-object v0, Lnet/gotev/uploadservice/data/UploadStatus;->$VALUES:[Lnet/gotev/uploadservice/data/UploadStatus;

    invoke-virtual {v0}, [Lnet/gotev/uploadservice/data/UploadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/gotev/uploadservice/data/UploadStatus;

    return-object v0
.end method
