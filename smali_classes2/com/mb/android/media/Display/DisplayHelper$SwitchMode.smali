.class final enum Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;
.super Ljava/lang/Enum;
.source "DisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/Display/DisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SwitchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

.field public static final enum Both:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

.field public static final enum Rate:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

.field public static final enum Resolution:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 244
    new-instance v0, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    const/4 v1, 0x0

    const-string v2, "Resolution"

    invoke-direct {v0, v2, v1}, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->Resolution:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    .line 245
    new-instance v0, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    const/4 v2, 0x1

    const-string v3, "Rate"

    invoke-direct {v0, v3, v2}, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->Rate:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    .line 246
    new-instance v0, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    const/4 v3, 0x2

    const-string v4, "Both"

    invoke-direct {v0, v4, v3}, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->Both:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    const/4 v0, 0x3

    .line 243
    new-array v0, v0, [Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    sget-object v4, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->Resolution:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->Rate:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->Both:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->$VALUES:[Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 243
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;
    .locals 1

    .line 243
    const-class v0, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    return-object p0
.end method

.method public static values()[Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;
    .locals 1

    .line 243
    sget-object v0, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->$VALUES:[Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    invoke-virtual {v0}, [Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    return-object v0
.end method
