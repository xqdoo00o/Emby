.class public final enum Lcom/mb/android/model/media/SubtitleTextSize;
.super Ljava/lang/Enum;
.source "SubtitleTextSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mb/android/model/media/SubtitleTextSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mb/android/model/media/SubtitleTextSize;

.field public static final enum ExtraLarge:Lcom/mb/android/model/media/SubtitleTextSize;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extralarge"
    .end annotation
.end field

.field public static final enum Large:Lcom/mb/android/model/media/SubtitleTextSize;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "large"
    .end annotation
.end field

.field public static final enum Larger:Lcom/mb/android/model/media/SubtitleTextSize;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "larger"
    .end annotation
.end field

.field public static final enum Normal:Lcom/mb/android/model/media/SubtitleTextSize;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "normal"
    .end annotation
.end field

.field public static final enum Small:Lcom/mb/android/model/media/SubtitleTextSize;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "small"
    .end annotation
.end field

.field public static final enum Smaller:Lcom/mb/android/model/media/SubtitleTextSize;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "smaller"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6
    new-instance v0, Lcom/mb/android/model/media/SubtitleTextSize;

    const/4 v1, 0x0

    const-string v2, "Smaller"

    invoke-direct {v0, v2, v1}, Lcom/mb/android/model/media/SubtitleTextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/media/SubtitleTextSize;->Smaller:Lcom/mb/android/model/media/SubtitleTextSize;

    .line 8
    new-instance v0, Lcom/mb/android/model/media/SubtitleTextSize;

    const/4 v2, 0x1

    const-string v3, "Small"

    invoke-direct {v0, v3, v2}, Lcom/mb/android/model/media/SubtitleTextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/media/SubtitleTextSize;->Small:Lcom/mb/android/model/media/SubtitleTextSize;

    .line 10
    new-instance v0, Lcom/mb/android/model/media/SubtitleTextSize;

    const/4 v3, 0x2

    const-string v4, "Normal"

    invoke-direct {v0, v4, v3}, Lcom/mb/android/model/media/SubtitleTextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/media/SubtitleTextSize;->Normal:Lcom/mb/android/model/media/SubtitleTextSize;

    .line 12
    new-instance v0, Lcom/mb/android/model/media/SubtitleTextSize;

    const/4 v4, 0x3

    const-string v5, "Large"

    invoke-direct {v0, v5, v4}, Lcom/mb/android/model/media/SubtitleTextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/media/SubtitleTextSize;->Large:Lcom/mb/android/model/media/SubtitleTextSize;

    .line 14
    new-instance v0, Lcom/mb/android/model/media/SubtitleTextSize;

    const/4 v5, 0x4

    const-string v6, "Larger"

    invoke-direct {v0, v6, v5}, Lcom/mb/android/model/media/SubtitleTextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/media/SubtitleTextSize;->Larger:Lcom/mb/android/model/media/SubtitleTextSize;

    .line 16
    new-instance v0, Lcom/mb/android/model/media/SubtitleTextSize;

    const/4 v6, 0x5

    const-string v7, "ExtraLarge"

    invoke-direct {v0, v7, v6}, Lcom/mb/android/model/media/SubtitleTextSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/media/SubtitleTextSize;->ExtraLarge:Lcom/mb/android/model/media/SubtitleTextSize;

    const/4 v0, 0x6

    .line 5
    new-array v0, v0, [Lcom/mb/android/model/media/SubtitleTextSize;

    sget-object v7, Lcom/mb/android/model/media/SubtitleTextSize;->Smaller:Lcom/mb/android/model/media/SubtitleTextSize;

    aput-object v7, v0, v1

    sget-object v1, Lcom/mb/android/model/media/SubtitleTextSize;->Small:Lcom/mb/android/model/media/SubtitleTextSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mb/android/model/media/SubtitleTextSize;->Normal:Lcom/mb/android/model/media/SubtitleTextSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mb/android/model/media/SubtitleTextSize;->Large:Lcom/mb/android/model/media/SubtitleTextSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mb/android/model/media/SubtitleTextSize;->Larger:Lcom/mb/android/model/media/SubtitleTextSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mb/android/model/media/SubtitleTextSize;->ExtraLarge:Lcom/mb/android/model/media/SubtitleTextSize;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mb/android/model/media/SubtitleTextSize;->$VALUES:[Lcom/mb/android/model/media/SubtitleTextSize;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mb/android/model/media/SubtitleTextSize;
    .locals 1

    .line 5
    const-class v0, Lcom/mb/android/model/media/SubtitleTextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mb/android/model/media/SubtitleTextSize;

    return-object p0
.end method

.method public static values()[Lcom/mb/android/model/media/SubtitleTextSize;
    .locals 1

    .line 5
    sget-object v0, Lcom/mb/android/model/media/SubtitleTextSize;->$VALUES:[Lcom/mb/android/model/media/SubtitleTextSize;

    invoke-virtual {v0}, [Lcom/mb/android/model/media/SubtitleTextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mb/android/model/media/SubtitleTextSize;

    return-object v0
.end method
