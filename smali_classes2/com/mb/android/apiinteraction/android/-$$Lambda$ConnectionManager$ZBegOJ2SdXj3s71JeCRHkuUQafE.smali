.class public final synthetic Lcom/mb/android/apiinteraction/android/-$$Lambda$ConnectionManager$ZBegOJ2SdXj3s71JeCRHkuUQafE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/mb/android/apiinteraction/android/-$$Lambda$ConnectionManager$ZBegOJ2SdXj3s71JeCRHkuUQafE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mb/android/apiinteraction/android/-$$Lambda$ConnectionManager$ZBegOJ2SdXj3s71JeCRHkuUQafE;

    invoke-direct {v0}, Lcom/mb/android/apiinteraction/android/-$$Lambda$ConnectionManager$ZBegOJ2SdXj3s71JeCRHkuUQafE;-><init>()V

    sput-object v0, Lcom/mb/android/apiinteraction/android/-$$Lambda$ConnectionManager$ZBegOJ2SdXj3s71JeCRHkuUQafE;->INSTANCE:Lcom/mb/android/apiinteraction/android/-$$Lambda$ConnectionManager$ZBegOJ2SdXj3s71JeCRHkuUQafE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/mb/android/apiinteraction/ApiClient;

    check-cast p2, Lcom/mb/android/apiinteraction/ApiClient;

    invoke-static {p1, p2}, Lcom/mb/android/apiinteraction/android/ConnectionManager;->lambda$getLastUsedApiClient$0(Lcom/mb/android/apiinteraction/ApiClient;Lcom/mb/android/apiinteraction/ApiClient;)I

    move-result p1

    return p1
.end method
