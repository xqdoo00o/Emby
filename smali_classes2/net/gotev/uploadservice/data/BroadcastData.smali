.class public final Lnet/gotev/uploadservice/data/BroadcastData;
.super Ljava/lang/Object;
.source "BroadcastData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/data/BroadcastData$Creator;,
        Lnet/gotev/uploadservice/data/BroadcastData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcastData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastData.kt\nnet/gotev/uploadservice/data/BroadcastData\n*L\n1#1,29:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0081\u0008\u0018\u0000 (2\u00020\u0001:\u0001(B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tH\u00c6\u0003J5\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0019H\u00d6\u0001J\u0006\u0010\u001f\u001a\u00020 J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\u0019\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0019H\u00d6\u0001R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006)"
    }
    d2 = {
        "Lnet/gotev/uploadservice/data/BroadcastData;",
        "Landroid/os/Parcelable;",
        "status",
        "Lnet/gotev/uploadservice/data/UploadStatus;",
        "uploadInfo",
        "Lnet/gotev/uploadservice/data/UploadInfo;",
        "serverResponse",
        "Lnet/gotev/uploadservice/network/ServerResponse;",
        "exception",
        "",
        "(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;)V",
        "getException",
        "()Ljava/lang/Throwable;",
        "getServerResponse",
        "()Lnet/gotev/uploadservice/network/ServerResponse;",
        "getStatus",
        "()Lnet/gotev/uploadservice/data/UploadStatus;",
        "getUploadInfo",
        "()Lnet/gotev/uploadservice/data/UploadInfo;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toIntent",
        "Landroid/content/Intent;",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "uploadservice_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final Companion:Lnet/gotev/uploadservice/data/BroadcastData$Companion;

.field private static final paramName:Ljava/lang/String; = "broadcastData"


# instance fields
.field private final exception:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final status:Lnet/gotev/uploadservice/data/UploadStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uploadInfo:Lnet/gotev/uploadservice/data/UploadInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/gotev/uploadservice/data/BroadcastData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/data/BroadcastData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnet/gotev/uploadservice/data/BroadcastData;->Companion:Lnet/gotev/uploadservice/data/BroadcastData$Companion;

    new-instance v0, Lnet/gotev/uploadservice/data/BroadcastData$Creator;

    invoke-direct {v0}, Lnet/gotev/uploadservice/data/BroadcastData$Creator;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/data/BroadcastData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;)V
    .locals 7
    .param p1    # Lnet/gotev/uploadservice/data/UploadStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lnet/gotev/uploadservice/data/BroadcastData;-><init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;)V
    .locals 7
    .param p1    # Lnet/gotev/uploadservice/data/UploadStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/network/ServerResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lnet/gotev/uploadservice/data/BroadcastData;-><init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/data/UploadStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/network/ServerResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/data/BroadcastData;->status:Lnet/gotev/uploadservice/data/UploadStatus;

    iput-object p2, p0, Lnet/gotev/uploadservice/data/BroadcastData;->uploadInfo:Lnet/gotev/uploadservice/data/UploadInfo;

    iput-object p3, p0, Lnet/gotev/uploadservice/data/BroadcastData;->serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;

    iput-object p4, p0, Lnet/gotev/uploadservice/data/BroadcastData;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 13
    move-object p3, v0

    check-cast p3, Lnet/gotev/uploadservice/network/ServerResponse;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 14
    move-object p4, v0

    check-cast p4, Ljava/lang/Throwable;

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/gotev/uploadservice/data/BroadcastData;-><init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic copy$default(Lnet/gotev/uploadservice/data/BroadcastData;Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;ILjava/lang/Object;)Lnet/gotev/uploadservice/data/BroadcastData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lnet/gotev/uploadservice/data/BroadcastData;->status:Lnet/gotev/uploadservice/data/UploadStatus;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lnet/gotev/uploadservice/data/BroadcastData;->uploadInfo:Lnet/gotev/uploadservice/data/UploadInfo;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lnet/gotev/uploadservice/data/BroadcastData;->serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lnet/gotev/uploadservice/data/BroadcastData;->exception:Ljava/lang/Throwable;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/gotev/uploadservice/data/BroadcastData;->copy(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;)Lnet/gotev/uploadservice/data/BroadcastData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lnet/gotev/uploadservice/data/UploadStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->status:Lnet/gotev/uploadservice/data/UploadStatus;

    return-object v0
.end method

.method public final component2()Lnet/gotev/uploadservice/data/UploadInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->uploadInfo:Lnet/gotev/uploadservice/data/UploadInfo;

    return-object v0
.end method

.method public final component3()Lnet/gotev/uploadservice/network/ServerResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;

    return-object v0
.end method

.method public final component4()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final copy(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;)Lnet/gotev/uploadservice/data/BroadcastData;
    .locals 1
    .param p1    # Lnet/gotev/uploadservice/data/UploadStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lnet/gotev/uploadservice/data/UploadInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lnet/gotev/uploadservice/network/ServerResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/gotev/uploadservice/data/BroadcastData;

    invoke-direct {v0, p1, p2, p3, p4}, Lnet/gotev/uploadservice/data/BroadcastData;-><init>(Lnet/gotev/uploadservice/data/UploadStatus;Lnet/gotev/uploadservice/data/UploadInfo;Lnet/gotev/uploadservice/network/ServerResponse;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/gotev/uploadservice/data/BroadcastData;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/gotev/uploadservice/data/BroadcastData;

    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->status:Lnet/gotev/uploadservice/data/UploadStatus;

    iget-object v1, p1, Lnet/gotev/uploadservice/data/BroadcastData;->status:Lnet/gotev/uploadservice/data/UploadStatus;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->uploadInfo:Lnet/gotev/uploadservice/data/UploadInfo;

    iget-object v1, p1, Lnet/gotev/uploadservice/data/BroadcastData;->uploadInfo:Lnet/gotev/uploadservice/data/UploadInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;

    iget-object v1, p1, Lnet/gotev/uploadservice/data/BroadcastData;->serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->exception:Ljava/lang/Throwable;

    iget-object p1, p1, Lnet/gotev/uploadservice/data/BroadcastData;->exception:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 14
    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getServerResponse()Lnet/gotev/uploadservice/network/ServerResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 13
    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;

    return-object v0
.end method

.method public final getStatus()Lnet/gotev/uploadservice/data/UploadStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 11
    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->status:Lnet/gotev/uploadservice/data/UploadStatus;

    return-object v0
.end method

.method public final getUploadInfo()Lnet/gotev/uploadservice/data/UploadInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->uploadInfo:Lnet/gotev/uploadservice/data/UploadInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/gotev/uploadservice/data/BroadcastData;->status:Lnet/gotev/uploadservice/data/UploadStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/gotev/uploadservice/data/BroadcastData;->uploadInfo:Lnet/gotev/uploadservice/data/UploadInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/gotev/uploadservice/data/BroadcastData;->serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/gotev/uploadservice/data/BroadcastData;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toIntent()Landroid/content/Intent;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getBroadcastStatusAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lnet/gotev/uploadservice/UploadServiceConfig;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    move-object v1, p0

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "broadcastData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastData(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/BroadcastData;->status:Lnet/gotev/uploadservice/data/UploadStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uploadInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/BroadcastData;->uploadInfo:Lnet/gotev/uploadservice/data/UploadInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serverResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/BroadcastData;->serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/BroadcastData;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lnet/gotev/uploadservice/data/BroadcastData;->status:Lnet/gotev/uploadservice/data/UploadStatus;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lnet/gotev/uploadservice/data/BroadcastData;->uploadInfo:Lnet/gotev/uploadservice/data/UploadInfo;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lnet/gotev/uploadservice/data/BroadcastData;->serverResponse:Lnet/gotev/uploadservice/network/ServerResponse;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lnet/gotev/uploadservice/data/BroadcastData;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
