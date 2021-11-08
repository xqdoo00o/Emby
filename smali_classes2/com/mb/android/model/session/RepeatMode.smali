.class public final enum Lcom/mb/android/model/session/RepeatMode;
.super Ljava/lang/Enum;
.source "RepeatMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mb/android/model/session/RepeatMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mb/android/model/session/RepeatMode;

.field public static final enum RepeatAll:Lcom/mb/android/model/session/RepeatMode;

.field public static final enum RepeatNone:Lcom/mb/android/model/session/RepeatMode;

.field public static final enum RepeatOne:Lcom/mb/android/model/session/RepeatMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lcom/mb/android/model/session/RepeatMode;

    const/4 v1, 0x0

    const-string v2, "RepeatNone"

    invoke-direct {v0, v2, v1}, Lcom/mb/android/model/session/RepeatMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/RepeatMode;->RepeatNone:Lcom/mb/android/model/session/RepeatMode;

    .line 6
    new-instance v0, Lcom/mb/android/model/session/RepeatMode;

    const/4 v2, 0x1

    const-string v3, "RepeatAll"

    invoke-direct {v0, v3, v2}, Lcom/mb/android/model/session/RepeatMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/RepeatMode;->RepeatAll:Lcom/mb/android/model/session/RepeatMode;

    .line 7
    new-instance v0, Lcom/mb/android/model/session/RepeatMode;

    const/4 v3, 0x2

    const-string v4, "RepeatOne"

    invoke-direct {v0, v4, v3}, Lcom/mb/android/model/session/RepeatMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/RepeatMode;->RepeatOne:Lcom/mb/android/model/session/RepeatMode;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/mb/android/model/session/RepeatMode;

    sget-object v4, Lcom/mb/android/model/session/RepeatMode;->RepeatNone:Lcom/mb/android/model/session/RepeatMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/mb/android/model/session/RepeatMode;->RepeatAll:Lcom/mb/android/model/session/RepeatMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mb/android/model/session/RepeatMode;->RepeatOne:Lcom/mb/android/model/session/RepeatMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mb/android/model/session/RepeatMode;->$VALUES:[Lcom/mb/android/model/session/RepeatMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mb/android/model/session/RepeatMode;
    .locals 1

    .line 3
    const-class v0, Lcom/mb/android/model/session/RepeatMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mb/android/model/session/RepeatMode;

    return-object p0
.end method

.method public static values()[Lcom/mb/android/model/session/RepeatMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/mb/android/model/session/RepeatMode;->$VALUES:[Lcom/mb/android/model/session/RepeatMode;

    invoke-virtual {v0}, [Lcom/mb/android/model/session/RepeatMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mb/android/model/session/RepeatMode;

    return-object v0
.end method
