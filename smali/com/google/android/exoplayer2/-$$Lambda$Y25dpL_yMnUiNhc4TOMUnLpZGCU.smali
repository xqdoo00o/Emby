.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$Y25dpL_yMnUiNhc4TOMUnLpZGCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$Y25dpL_yMnUiNhc4TOMUnLpZGCU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$Y25dpL_yMnUiNhc4TOMUnLpZGCU;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$Y25dpL_yMnUiNhc4TOMUnLpZGCU;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$Y25dpL_yMnUiNhc4TOMUnLpZGCU;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$Y25dpL_yMnUiNhc4TOMUnLpZGCU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/Player$Events;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Player$Events;-><init>()V

    return-object v0
.end method
