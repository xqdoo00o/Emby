.class public final Lnet/gotev/uploadservice/network/ServerResponse$Companion;
.super Ljava/lang/Object;
.source "ServerResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/network/ServerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lnet/gotev/uploadservice/network/ServerResponse$Companion;",
        "",
        "()V",
        "successfulEmpty",
        "Lnet/gotev/uploadservice/network/ServerResponse;",
        "uploadservice_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lnet/gotev/uploadservice/network/ServerResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final successfulEmpty()Lnet/gotev/uploadservice/network/ServerResponse;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    new-instance v0, Lnet/gotev/uploadservice/network/ServerResponse;

    const/4 v1, 0x1

    .line 52
    new-array v1, v1, [B

    .line 53
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v3, 0xc8

    .line 50
    invoke-direct {v0, v3, v1, v2}, Lnet/gotev/uploadservice/network/ServerResponse;-><init>(I[BLjava/util/LinkedHashMap;)V

    return-object v0
.end method
