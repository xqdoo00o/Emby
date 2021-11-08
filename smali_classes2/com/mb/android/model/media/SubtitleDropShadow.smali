.class public final enum Lcom/mb/android/model/media/SubtitleDropShadow;
.super Ljava/lang/Enum;
.source "SubtitleDropShadow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mb/android/model/media/SubtitleDropShadow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mb/android/model/media/SubtitleDropShadow;

.field public static final enum Depressed:Lcom/mb/android/model/media/SubtitleDropShadow;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "depressed"
    .end annotation
.end field

.field public static final enum DropShadow:Lcom/mb/android/model/media/SubtitleDropShadow;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dropshadow"
    .end annotation
.end field

.field public static final enum None:Lcom/mb/android/model/media/SubtitleDropShadow;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "none"
    .end annotation
.end field

.field public static final enum Raised:Lcom/mb/android/model/media/SubtitleDropShadow;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "raised"
    .end annotation
.end field

.field public static final enum Uniform:Lcom/mb/android/model/media/SubtitleDropShadow;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uniform"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 6
    new-instance v0, Lcom/mb/android/model/media/SubtitleDropShadow;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/mb/android/model/media/SubtitleDropShadow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/media/SubtitleDropShadow;->None:Lcom/mb/android/model/media/SubtitleDropShadow;

    .line 8
    new-instance v0, Lcom/mb/android/model/media/SubtitleDropShadow;

    const/4 v2, 0x1

    const-string v3, "Raised"

    invoke-direct {v0, v3, v2}, Lcom/mb/android/model/media/SubtitleDropShadow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/media/SubtitleDropShadow;->Raised:Lcom/mb/android/model/media/SubtitleDropShadow;

    .line 10
    new-instance v0, Lcom/mb/android/model/media/SubtitleDropShadow;

    const/4 v3, 0x2

    const-string v4, "Depressed"

    invoke-direct {v0, v4, v3}, Lcom/mb/android/model/media/SubtitleDropShadow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/media/SubtitleDropShadow;->Depressed:Lcom/mb/android/model/media/SubtitleDropShadow;

    .line 12
    new-instance v0, Lcom/mb/android/model/media/SubtitleDropShadow;

    const/4 v4, 0x3

    const-string v5, "Uniform"

    invoke-direct {v0, v5, v4}, Lcom/mb/android/model/media/SubtitleDropShadow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/media/SubtitleDropShadow;->Uniform:Lcom/mb/android/model/media/SubtitleDropShadow;

    .line 14
    new-instance v0, Lcom/mb/android/model/media/SubtitleDropShadow;

    const/4 v5, 0x4

    const-string v6, "DropShadow"

    invoke-direct {v0, v6, v5}, Lcom/mb/android/model/media/SubtitleDropShadow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/media/SubtitleDropShadow;->DropShadow:Lcom/mb/android/model/media/SubtitleDropShadow;

    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [Lcom/mb/android/model/media/SubtitleDropShadow;

    sget-object v6, Lcom/mb/android/model/media/SubtitleDropShadow;->None:Lcom/mb/android/model/media/SubtitleDropShadow;

    aput-object v6, v0, v1

    sget-object v1, Lcom/mb/android/model/media/SubtitleDropShadow;->Raised:Lcom/mb/android/model/media/SubtitleDropShadow;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mb/android/model/media/SubtitleDropShadow;->Depressed:Lcom/mb/android/model/media/SubtitleDropShadow;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mb/android/model/media/SubtitleDropShadow;->Uniform:Lcom/mb/android/model/media/SubtitleDropShadow;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mb/android/model/media/SubtitleDropShadow;->DropShadow:Lcom/mb/android/model/media/SubtitleDropShadow;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mb/android/model/media/SubtitleDropShadow;->$VALUES:[Lcom/mb/android/model/media/SubtitleDropShadow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mb/android/model/media/SubtitleDropShadow;
    .locals 1

    .line 5
    const-class v0, Lcom/mb/android/model/media/SubtitleDropShadow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mb/android/model/media/SubtitleDropShadow;

    return-object p0
.end method

.method public static values()[Lcom/mb/android/model/media/SubtitleDropShadow;
    .locals 1

    .line 5
    sget-object v0, Lcom/mb/android/model/media/SubtitleDropShadow;->$VALUES:[Lcom/mb/android/model/media/SubtitleDropShadow;

    invoke-virtual {v0}, [Lcom/mb/android/model/media/SubtitleDropShadow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mb/android/model/media/SubtitleDropShadow;

    return-object v0
.end method
