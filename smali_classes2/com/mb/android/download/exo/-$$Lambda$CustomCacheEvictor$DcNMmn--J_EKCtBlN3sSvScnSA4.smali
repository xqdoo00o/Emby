.class public final synthetic Lcom/mb/android/download/exo/-$$Lambda$CustomCacheEvictor$DcNMmn--J_EKCtBlN3sSvScnSA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/mb/android/download/exo/-$$Lambda$CustomCacheEvictor$DcNMmn--J_EKCtBlN3sSvScnSA4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mb/android/download/exo/-$$Lambda$CustomCacheEvictor$DcNMmn--J_EKCtBlN3sSvScnSA4;

    invoke-direct {v0}, Lcom/mb/android/download/exo/-$$Lambda$CustomCacheEvictor$DcNMmn--J_EKCtBlN3sSvScnSA4;-><init>()V

    sput-object v0, Lcom/mb/android/download/exo/-$$Lambda$CustomCacheEvictor$DcNMmn--J_EKCtBlN3sSvScnSA4;->INSTANCE:Lcom/mb/android/download/exo/-$$Lambda$CustomCacheEvictor$DcNMmn--J_EKCtBlN3sSvScnSA4;

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

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-static {p1, p2}, Lcom/mb/android/download/exo/CustomCacheEvictor;->lambda$DcNMmn--J_EKCtBlN3sSvScnSA4(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I

    move-result p1

    return p1
.end method
