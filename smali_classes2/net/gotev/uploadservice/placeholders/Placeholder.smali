.class public final enum Lnet/gotev/uploadservice/placeholders/Placeholder;
.super Ljava/lang/Enum;
.source "Placeholder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/gotev/uploadservice/placeholders/Placeholder;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lnet/gotev/uploadservice/placeholders/Placeholder;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "toString",
        "ElapsedTime",
        "UploadRate",
        "Progress",
        "UploadedFiles",
        "RemainingFiles",
        "TotalFiles",
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
.field private static final synthetic $VALUES:[Lnet/gotev/uploadservice/placeholders/Placeholder;

.field public static final enum ElapsedTime:Lnet/gotev/uploadservice/placeholders/Placeholder;

.field public static final enum Progress:Lnet/gotev/uploadservice/placeholders/Placeholder;

.field public static final enum RemainingFiles:Lnet/gotev/uploadservice/placeholders/Placeholder;

.field public static final enum TotalFiles:Lnet/gotev/uploadservice/placeholders/Placeholder;

.field public static final enum UploadRate:Lnet/gotev/uploadservice/placeholders/Placeholder;

.field public static final enum UploadedFiles:Lnet/gotev/uploadservice/placeholders/Placeholder;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lnet/gotev/uploadservice/placeholders/Placeholder;

    new-instance v1, Lnet/gotev/uploadservice/placeholders/Placeholder;

    const/4 v2, 0x0

    const-string v3, "ElapsedTime"

    const-string v4, "[[ELAPSED_TIME]]"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lnet/gotev/uploadservice/placeholders/Placeholder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/gotev/uploadservice/placeholders/Placeholder;->ElapsedTime:Lnet/gotev/uploadservice/placeholders/Placeholder;

    aput-object v1, v0, v2

    new-instance v1, Lnet/gotev/uploadservice/placeholders/Placeholder;

    const/4 v2, 0x1

    const-string v3, "UploadRate"

    const-string v4, "[[UPLOAD_RATE]]"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lnet/gotev/uploadservice/placeholders/Placeholder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/gotev/uploadservice/placeholders/Placeholder;->UploadRate:Lnet/gotev/uploadservice/placeholders/Placeholder;

    aput-object v1, v0, v2

    new-instance v1, Lnet/gotev/uploadservice/placeholders/Placeholder;

    const/4 v2, 0x2

    const-string v3, "Progress"

    const-string v4, "[[PROGRESS]]"

    .line 18
    invoke-direct {v1, v3, v2, v4}, Lnet/gotev/uploadservice/placeholders/Placeholder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/gotev/uploadservice/placeholders/Placeholder;->Progress:Lnet/gotev/uploadservice/placeholders/Placeholder;

    aput-object v1, v0, v2

    new-instance v1, Lnet/gotev/uploadservice/placeholders/Placeholder;

    const/4 v2, 0x3

    const-string v3, "UploadedFiles"

    const-string v4, "[[UPLOADED_FILES]]"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lnet/gotev/uploadservice/placeholders/Placeholder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/gotev/uploadservice/placeholders/Placeholder;->UploadedFiles:Lnet/gotev/uploadservice/placeholders/Placeholder;

    aput-object v1, v0, v2

    new-instance v1, Lnet/gotev/uploadservice/placeholders/Placeholder;

    const/4 v2, 0x4

    const-string v3, "RemainingFiles"

    const-string v4, "[[REMAINING_FILES]]"

    .line 31
    invoke-direct {v1, v3, v2, v4}, Lnet/gotev/uploadservice/placeholders/Placeholder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/gotev/uploadservice/placeholders/Placeholder;->RemainingFiles:Lnet/gotev/uploadservice/placeholders/Placeholder;

    aput-object v1, v0, v2

    new-instance v1, Lnet/gotev/uploadservice/placeholders/Placeholder;

    const/4 v2, 0x5

    const-string v3, "TotalFiles"

    const-string v4, "[[TOTAL_FILES]]"

    .line 36
    invoke-direct {v1, v3, v2, v4}, Lnet/gotev/uploadservice/placeholders/Placeholder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/gotev/uploadservice/placeholders/Placeholder;->TotalFiles:Lnet/gotev/uploadservice/placeholders/Placeholder;

    aput-object v1, v0, v2

    sput-object v0, Lnet/gotev/uploadservice/placeholders/Placeholder;->$VALUES:[Lnet/gotev/uploadservice/placeholders/Placeholder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/gotev/uploadservice/placeholders/Placeholder;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/gotev/uploadservice/placeholders/Placeholder;
    .locals 1

    const-class v0, Lnet/gotev/uploadservice/placeholders/Placeholder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/gotev/uploadservice/placeholders/Placeholder;

    return-object p0
.end method

.method public static values()[Lnet/gotev/uploadservice/placeholders/Placeholder;
    .locals 1

    sget-object v0, Lnet/gotev/uploadservice/placeholders/Placeholder;->$VALUES:[Lnet/gotev/uploadservice/placeholders/Placeholder;

    invoke-virtual {v0}, [Lnet/gotev/uploadservice/placeholders/Placeholder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/gotev/uploadservice/placeholders/Placeholder;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/gotev/uploadservice/placeholders/Placeholder;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    iget-object v0, p0, Lnet/gotev/uploadservice/placeholders/Placeholder;->value:Ljava/lang/String;

    return-object v0
.end method
