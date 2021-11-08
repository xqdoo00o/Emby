.class public final enum Lcom/mb/android/model/logging/LogSeverity;
.super Ljava/lang/Enum;
.source "LogSeverity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mb/android/model/logging/LogSeverity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mb/android/model/logging/LogSeverity;

.field public static final enum Debug:Lcom/mb/android/model/logging/LogSeverity;

.field public static final enum Error:Lcom/mb/android/model/logging/LogSeverity;

.field public static final enum Fatal:Lcom/mb/android/model/logging/LogSeverity;

.field public static final enum Info:Lcom/mb/android/model/logging/LogSeverity;

.field public static final enum Warn:Lcom/mb/android/model/logging/LogSeverity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/mb/android/model/logging/LogSeverity;

    const/4 v1, 0x0

    const-string v2, "Info"

    invoke-direct {v0, v2, v1}, Lcom/mb/android/model/logging/LogSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/logging/LogSeverity;->Info:Lcom/mb/android/model/logging/LogSeverity;

    .line 15
    new-instance v0, Lcom/mb/android/model/logging/LogSeverity;

    const/4 v2, 0x1

    const-string v3, "Debug"

    invoke-direct {v0, v3, v2}, Lcom/mb/android/model/logging/LogSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/logging/LogSeverity;->Debug:Lcom/mb/android/model/logging/LogSeverity;

    .line 19
    new-instance v0, Lcom/mb/android/model/logging/LogSeverity;

    const/4 v3, 0x2

    const-string v4, "Warn"

    invoke-direct {v0, v4, v3}, Lcom/mb/android/model/logging/LogSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/logging/LogSeverity;->Warn:Lcom/mb/android/model/logging/LogSeverity;

    .line 23
    new-instance v0, Lcom/mb/android/model/logging/LogSeverity;

    const/4 v4, 0x3

    const-string v5, "Error"

    invoke-direct {v0, v5, v4}, Lcom/mb/android/model/logging/LogSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/logging/LogSeverity;->Error:Lcom/mb/android/model/logging/LogSeverity;

    .line 27
    new-instance v0, Lcom/mb/android/model/logging/LogSeverity;

    const/4 v5, 0x4

    const-string v6, "Fatal"

    invoke-direct {v0, v6, v5}, Lcom/mb/android/model/logging/LogSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/logging/LogSeverity;->Fatal:Lcom/mb/android/model/logging/LogSeverity;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lcom/mb/android/model/logging/LogSeverity;

    sget-object v6, Lcom/mb/android/model/logging/LogSeverity;->Info:Lcom/mb/android/model/logging/LogSeverity;

    aput-object v6, v0, v1

    sget-object v1, Lcom/mb/android/model/logging/LogSeverity;->Debug:Lcom/mb/android/model/logging/LogSeverity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mb/android/model/logging/LogSeverity;->Warn:Lcom/mb/android/model/logging/LogSeverity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mb/android/model/logging/LogSeverity;->Error:Lcom/mb/android/model/logging/LogSeverity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mb/android/model/logging/LogSeverity;->Fatal:Lcom/mb/android/model/logging/LogSeverity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mb/android/model/logging/LogSeverity;->$VALUES:[Lcom/mb/android/model/logging/LogSeverity;

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

.method public static forValue(I)Lcom/mb/android/model/logging/LogSeverity;
    .locals 1

    .line 36
    invoke-static {}, Lcom/mb/android/model/logging/LogSeverity;->values()[Lcom/mb/android/model/logging/LogSeverity;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mb/android/model/logging/LogSeverity;
    .locals 1

    .line 6
    const-class v0, Lcom/mb/android/model/logging/LogSeverity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mb/android/model/logging/LogSeverity;

    return-object p0
.end method

.method public static values()[Lcom/mb/android/model/logging/LogSeverity;
    .locals 1

    .line 6
    sget-object v0, Lcom/mb/android/model/logging/LogSeverity;->$VALUES:[Lcom/mb/android/model/logging/LogSeverity;

    invoke-virtual {v0}, [Lcom/mb/android/model/logging/LogSeverity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mb/android/model/logging/LogSeverity;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/mb/android/model/logging/LogSeverity;->ordinal()I

    move-result v0

    return v0
.end method
