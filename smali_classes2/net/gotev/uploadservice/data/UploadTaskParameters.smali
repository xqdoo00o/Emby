.class public final Lnet/gotev/uploadservice/data/UploadTaskParameters;
.super Ljava/lang/Object;
.source "UploadTaskParameters.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/data/UploadTaskParameters$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0006H\u00c6\u0003J\t\u0010!\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0019\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000eH\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003Jc\u0010%\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0018\u0008\u0002\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00c6\u0001J\t\u0010&\u001a\u00020\u0006H\u00d6\u0001J\u0013\u0010\'\u001a\u00020\u00082\u0008\u0010(\u001a\u0004\u0018\u00010)H\u00d6\u0003J\t\u0010*\u001a\u00020\u0006H\u00d6\u0001J\t\u0010+\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0006H\u00d6\u0001R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R!\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0018\u00a8\u00061"
    }
    d2 = {
        "Lnet/gotev/uploadservice/data/UploadTaskParameters;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "serverUrl",
        "maxRetries",
        "",
        "autoDeleteSuccessfullyUploadedFiles",
        "",
        "notificationConfig",
        "Lnet/gotev/uploadservice/data/UploadNotificationConfig;",
        "files",
        "Ljava/util/ArrayList;",
        "Lnet/gotev/uploadservice/data/UploadFile;",
        "Lkotlin/collections/ArrayList;",
        "additionalParameters",
        "(Ljava/lang/String;Ljava/lang/String;IZLnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/util/ArrayList;Landroid/os/Parcelable;)V",
        "getAdditionalParameters",
        "()Landroid/os/Parcelable;",
        "getAutoDeleteSuccessfullyUploadedFiles",
        "()Z",
        "getFiles",
        "()Ljava/util/ArrayList;",
        "getId",
        "()Ljava/lang/String;",
        "getMaxRetries",
        "()I",
        "getNotificationConfig",
        "()Lnet/gotev/uploadservice/data/UploadNotificationConfig;",
        "getServerUrl",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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


# instance fields
.field private final additionalParameters:Landroid/os/Parcelable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final autoDeleteSuccessfullyUploadedFiles:Z

.field private final files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/gotev/uploadservice/data/UploadFile;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxRetries:I

.field private final notificationConfig:Lnet/gotev/uploadservice/data/UploadNotificationConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final serverUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/gotev/uploadservice/data/UploadTaskParameters$Creator;

    invoke-direct {v0}, Lnet/gotev/uploadservice/data/UploadTaskParameters$Creator;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/util/ArrayList;Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/os/Parcelable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lnet/gotev/uploadservice/data/UploadNotificationConfig;",
            "Ljava/util/ArrayList<",
            "Lnet/gotev/uploadservice/data/UploadFile;",
            ">;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->id:Ljava/lang/String;

    iput-object p2, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->serverUrl:Ljava/lang/String;

    iput p3, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->maxRetries:I

    iput-boolean p4, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    iput-object p5, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->notificationConfig:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    iput-object p6, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->files:Ljava/util/ArrayList;

    iput-object p7, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->additionalParameters:Landroid/os/Parcelable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/util/ArrayList;Landroid/os/Parcelable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 14
    check-cast v0, Landroid/os/Parcelable;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lnet/gotev/uploadservice/data/UploadTaskParameters;-><init>(Ljava/lang/String;Ljava/lang/String;IZLnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/util/ArrayList;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static synthetic copy$default(Lnet/gotev/uploadservice/data/UploadTaskParameters;Ljava/lang/String;Ljava/lang/String;IZLnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/util/ArrayList;Landroid/os/Parcelable;ILjava/lang/Object;)Lnet/gotev/uploadservice/data/UploadTaskParameters;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->serverUrl:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->maxRetries:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->notificationConfig:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->files:Ljava/util/ArrayList;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->additionalParameters:Landroid/os/Parcelable;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lnet/gotev/uploadservice/data/UploadTaskParameters;->copy(Ljava/lang/String;Ljava/lang/String;IZLnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/util/ArrayList;Landroid/os/Parcelable;)Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->maxRetries:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    return v0
.end method

.method public final component5()Lnet/gotev/uploadservice/data/UploadNotificationConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->notificationConfig:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    return-object v0
.end method

.method public final component6()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnet/gotev/uploadservice/data/UploadFile;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->files:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component7()Landroid/os/Parcelable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->additionalParameters:Landroid/os/Parcelable;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IZLnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/util/ArrayList;Landroid/os/Parcelable;)Lnet/gotev/uploadservice/data/UploadTaskParameters;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lnet/gotev/uploadservice/data/UploadNotificationConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/os/Parcelable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lnet/gotev/uploadservice/data/UploadNotificationConfig;",
            "Ljava/util/ArrayList<",
            "Lnet/gotev/uploadservice/data/UploadFile;",
            ">;",
            "Landroid/os/Parcelable;",
            ")",
            "Lnet/gotev/uploadservice/data/UploadTaskParameters;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverUrl"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/gotev/uploadservice/data/UploadTaskParameters;

    move-object v1, v0

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lnet/gotev/uploadservice/data/UploadTaskParameters;-><init>(Ljava/lang/String;Ljava/lang/String;IZLnet/gotev/uploadservice/data/UploadNotificationConfig;Ljava/util/ArrayList;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lnet/gotev/uploadservice/data/UploadTaskParameters;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lnet/gotev/uploadservice/data/UploadTaskParameters;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->id:Ljava/lang/String;

    iget-object v3, p1, Lnet/gotev/uploadservice/data/UploadTaskParameters;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->serverUrl:Ljava/lang/String;

    iget-object v3, p1, Lnet/gotev/uploadservice/data/UploadTaskParameters;->serverUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->maxRetries:I

    iget v3, p1, Lnet/gotev/uploadservice/data/UploadTaskParameters;->maxRetries:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    iget-boolean v3, p1, Lnet/gotev/uploadservice/data/UploadTaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->notificationConfig:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    iget-object v3, p1, Lnet/gotev/uploadservice/data/UploadTaskParameters;->notificationConfig:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->files:Ljava/util/ArrayList;

    iget-object v3, p1, Lnet/gotev/uploadservice/data/UploadTaskParameters;->files:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->additionalParameters:Landroid/os/Parcelable;

    iget-object p1, p1, Lnet/gotev/uploadservice/data/UploadTaskParameters;->additionalParameters:Landroid/os/Parcelable;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getAdditionalParameters()Landroid/os/Parcelable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 14
    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->additionalParameters:Landroid/os/Parcelable;

    return-object v0
.end method

.method public final getAutoDeleteSuccessfullyUploadedFiles()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    return v0
.end method

.method public final getFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnet/gotev/uploadservice/data/UploadFile;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->files:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxRetries()I
    .locals 1

    .line 10
    iget v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->maxRetries:I

    return v0
.end method

.method public final getNotificationConfig()Lnet/gotev/uploadservice/data/UploadNotificationConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 12
    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->notificationConfig:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    return-object v0
.end method

.method public final getServerUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->serverUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->maxRetries:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->notificationConfig:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->files:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->additionalParameters:Landroid/os/Parcelable;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadTaskParameters(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->serverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxRetries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->maxRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autoDeleteSuccessfullyUploadedFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notificationConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->notificationConfig:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", files="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", additionalParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->additionalParameters:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->serverUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->maxRetries:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->notificationConfig:Lnet/gotev/uploadservice/data/UploadNotificationConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->files:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/gotev/uploadservice/data/UploadFile;

    invoke-interface {v2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadTaskParameters;->additionalParameters:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
