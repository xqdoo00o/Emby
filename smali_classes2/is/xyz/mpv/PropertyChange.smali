.class public final enum Lis/xyz/mpv/PropertyChange;
.super Ljava/lang/Enum;
.source "TouchGestures.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lis/xyz/mpv/PropertyChange;",
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
        "Lis/xyz/mpv/PropertyChange;",
        "",
        "(Ljava/lang/String;I)V",
        "Init",
        "Seek",
        "Volume",
        "Bright",
        "Finalize",
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
.field private static final synthetic $VALUES:[Lis/xyz/mpv/PropertyChange;

.field public static final enum Bright:Lis/xyz/mpv/PropertyChange;

.field public static final enum Finalize:Lis/xyz/mpv/PropertyChange;

.field public static final enum Init:Lis/xyz/mpv/PropertyChange;

.field public static final enum Seek:Lis/xyz/mpv/PropertyChange;

.field public static final enum Volume:Lis/xyz/mpv/PropertyChange;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lis/xyz/mpv/PropertyChange;

    new-instance v1, Lis/xyz/mpv/PropertyChange;

    const/4 v2, 0x0

    const-string v3, "Init"

    invoke-direct {v1, v3, v2}, Lis/xyz/mpv/PropertyChange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lis/xyz/mpv/PropertyChange;->Init:Lis/xyz/mpv/PropertyChange;

    aput-object v1, v0, v2

    new-instance v1, Lis/xyz/mpv/PropertyChange;

    const/4 v2, 0x1

    const-string v3, "Seek"

    invoke-direct {v1, v3, v2}, Lis/xyz/mpv/PropertyChange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lis/xyz/mpv/PropertyChange;->Seek:Lis/xyz/mpv/PropertyChange;

    aput-object v1, v0, v2

    new-instance v1, Lis/xyz/mpv/PropertyChange;

    const/4 v2, 0x2

    const-string v3, "Volume"

    invoke-direct {v1, v3, v2}, Lis/xyz/mpv/PropertyChange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lis/xyz/mpv/PropertyChange;->Volume:Lis/xyz/mpv/PropertyChange;

    aput-object v1, v0, v2

    new-instance v1, Lis/xyz/mpv/PropertyChange;

    const/4 v2, 0x3

    const-string v3, "Bright"

    invoke-direct {v1, v3, v2}, Lis/xyz/mpv/PropertyChange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lis/xyz/mpv/PropertyChange;->Bright:Lis/xyz/mpv/PropertyChange;

    aput-object v1, v0, v2

    new-instance v1, Lis/xyz/mpv/PropertyChange;

    const/4 v2, 0x4

    const-string v3, "Finalize"

    invoke-direct {v1, v3, v2}, Lis/xyz/mpv/PropertyChange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lis/xyz/mpv/PropertyChange;->Finalize:Lis/xyz/mpv/PropertyChange;

    aput-object v1, v0, v2

    sput-object v0, Lis/xyz/mpv/PropertyChange;->$VALUES:[Lis/xyz/mpv/PropertyChange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lis/xyz/mpv/PropertyChange;
    .locals 1

    const-class v0, Lis/xyz/mpv/PropertyChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lis/xyz/mpv/PropertyChange;

    return-object p0
.end method

.method public static values()[Lis/xyz/mpv/PropertyChange;
    .locals 1

    sget-object v0, Lis/xyz/mpv/PropertyChange;->$VALUES:[Lis/xyz/mpv/PropertyChange;

    invoke-virtual {v0}, [Lis/xyz/mpv/PropertyChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lis/xyz/mpv/PropertyChange;

    return-object v0
.end method
