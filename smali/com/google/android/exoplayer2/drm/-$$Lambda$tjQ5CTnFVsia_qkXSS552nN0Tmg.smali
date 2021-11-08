.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$tjQ5CTnFVsia_qkXSS552nN0Tmg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$tjQ5CTnFVsia_qkXSS552nN0Tmg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$tjQ5CTnFVsia_qkXSS552nN0Tmg;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/-$$Lambda$tjQ5CTnFVsia_qkXSS552nN0Tmg;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$tjQ5CTnFVsia_qkXSS552nN0Tmg;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$tjQ5CTnFVsia_qkXSS552nN0Tmg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    return-void
.end method
