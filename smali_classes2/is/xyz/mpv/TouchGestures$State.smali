.class public final enum Lis/xyz/mpv/TouchGestures$State;
.super Ljava/lang/Enum;
.source "TouchGestures.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lis/xyz/mpv/TouchGestures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lis/xyz/mpv/TouchGestures$State;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lis/xyz/mpv/TouchGestures$State;",
        "",
        "(Ljava/lang/String;I)V",
        "Up",
        "Down",
        "ControlSeek",
        "ControlVolume",
        "ControlBright",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lis/xyz/mpv/TouchGestures$State;

.field public static final enum ControlBright:Lis/xyz/mpv/TouchGestures$State;

.field public static final enum ControlSeek:Lis/xyz/mpv/TouchGestures$State;

.field public static final enum ControlVolume:Lis/xyz/mpv/TouchGestures$State;

.field public static final enum Down:Lis/xyz/mpv/TouchGestures$State;

.field public static final enum Up:Lis/xyz/mpv/TouchGestures$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lis/xyz/mpv/TouchGestures$State;

    new-instance v1, Lis/xyz/mpv/TouchGestures$State;

    const/4 v2, 0x0

    const-string v3, "Up"

    invoke-direct {v1, v3, v2}, Lis/xyz/mpv/TouchGestures$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lis/xyz/mpv/TouchGestures$State;->Up:Lis/xyz/mpv/TouchGestures$State;

    aput-object v1, v0, v2

    new-instance v1, Lis/xyz/mpv/TouchGestures$State;

    const/4 v2, 0x1

    const-string v3, "Down"

    invoke-direct {v1, v3, v2}, Lis/xyz/mpv/TouchGestures$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lis/xyz/mpv/TouchGestures$State;->Down:Lis/xyz/mpv/TouchGestures$State;

    aput-object v1, v0, v2

    new-instance v1, Lis/xyz/mpv/TouchGestures$State;

    const/4 v2, 0x2

    const-string v3, "ControlSeek"

    invoke-direct {v1, v3, v2}, Lis/xyz/mpv/TouchGestures$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lis/xyz/mpv/TouchGestures$State;->ControlSeek:Lis/xyz/mpv/TouchGestures$State;

    aput-object v1, v0, v2

    new-instance v1, Lis/xyz/mpv/TouchGestures$State;

    const/4 v2, 0x3

    const-string v3, "ControlVolume"

    invoke-direct {v1, v3, v2}, Lis/xyz/mpv/TouchGestures$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lis/xyz/mpv/TouchGestures$State;->ControlVolume:Lis/xyz/mpv/TouchGestures$State;

    aput-object v1, v0, v2

    new-instance v1, Lis/xyz/mpv/TouchGestures$State;

    const/4 v2, 0x4

    const-string v3, "ControlBright"

    invoke-direct {v1, v3, v2}, Lis/xyz/mpv/TouchGestures$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lis/xyz/mpv/TouchGestures$State;->ControlBright:Lis/xyz/mpv/TouchGestures$State;

    aput-object v1, v0, v2

    sput-object v0, Lis/xyz/mpv/TouchGestures$State;->$VALUES:[Lis/xyz/mpv/TouchGestures$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lis/xyz/mpv/TouchGestures$State;
    .locals 1

    const-class v0, Lis/xyz/mpv/TouchGestures$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lis/xyz/mpv/TouchGestures$State;

    return-object p0
.end method

.method public static values()[Lis/xyz/mpv/TouchGestures$State;
    .locals 1

    sget-object v0, Lis/xyz/mpv/TouchGestures$State;->$VALUES:[Lis/xyz/mpv/TouchGestures$State;

    invoke-virtual {v0}, [Lis/xyz/mpv/TouchGestures$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lis/xyz/mpv/TouchGestures$State;

    return-object v0
.end method
