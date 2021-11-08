.class public final enum Lcom/mb/android/model/entities/MediaStreamType;
.super Ljava/lang/Enum;
.source "MediaStreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mb/android/model/entities/MediaStreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mb/android/model/entities/MediaStreamType;

.field public static final enum Audio:Lcom/mb/android/model/entities/MediaStreamType;

.field public static final enum EmbeddedImage:Lcom/mb/android/model/entities/MediaStreamType;

.field public static final enum Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

.field public static final enum Video:Lcom/mb/android/model/entities/MediaStreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/mb/android/model/entities/MediaStreamType;

    const/4 v1, 0x0

    const-string v2, "Audio"

    invoke-direct {v0, v2, v1}, Lcom/mb/android/model/entities/MediaStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/entities/MediaStreamType;->Audio:Lcom/mb/android/model/entities/MediaStreamType;

    .line 15
    new-instance v0, Lcom/mb/android/model/entities/MediaStreamType;

    const/4 v2, 0x1

    const-string v3, "Video"

    invoke-direct {v0, v3, v2}, Lcom/mb/android/model/entities/MediaStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/entities/MediaStreamType;->Video:Lcom/mb/android/model/entities/MediaStreamType;

    .line 19
    new-instance v0, Lcom/mb/android/model/entities/MediaStreamType;

    const/4 v3, 0x2

    const-string v4, "Subtitle"

    invoke-direct {v0, v4, v3}, Lcom/mb/android/model/entities/MediaStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    .line 23
    new-instance v0, Lcom/mb/android/model/entities/MediaStreamType;

    const/4 v4, 0x3

    const-string v5, "EmbeddedImage"

    invoke-direct {v0, v5, v4}, Lcom/mb/android/model/entities/MediaStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/entities/MediaStreamType;->EmbeddedImage:Lcom/mb/android/model/entities/MediaStreamType;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/mb/android/model/entities/MediaStreamType;

    sget-object v5, Lcom/mb/android/model/entities/MediaStreamType;->Audio:Lcom/mb/android/model/entities/MediaStreamType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/mb/android/model/entities/MediaStreamType;->Video:Lcom/mb/android/model/entities/MediaStreamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mb/android/model/entities/MediaStreamType;->EmbeddedImage:Lcom/mb/android/model/entities/MediaStreamType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mb/android/model/entities/MediaStreamType;->$VALUES:[Lcom/mb/android/model/entities/MediaStreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(I)Lcom/mb/android/model/entities/MediaStreamType;
    .locals 1

    .line 32
    invoke-static {}, Lcom/mb/android/model/entities/MediaStreamType;->values()[Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mb/android/model/entities/MediaStreamType;
    .locals 1

    .line 6
    const-class v0, Lcom/mb/android/model/entities/MediaStreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mb/android/model/entities/MediaStreamType;

    return-object p0
.end method

.method public static values()[Lcom/mb/android/model/entities/MediaStreamType;
    .locals 1

    .line 6
    sget-object v0, Lcom/mb/android/model/entities/MediaStreamType;->$VALUES:[Lcom/mb/android/model/entities/MediaStreamType;

    invoke-virtual {v0}, [Lcom/mb/android/model/entities/MediaStreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mb/android/model/entities/MediaStreamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/mb/android/model/entities/MediaStreamType;->ordinal()I

    move-result v0

    return v0
.end method
