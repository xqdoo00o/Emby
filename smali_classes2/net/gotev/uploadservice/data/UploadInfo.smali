.class public final Lnet/gotev/uploadservice/data/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/data/UploadInfo$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUploadInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadInfo.kt\nnet/gotev/uploadservice/data/UploadInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n1522#2,4:104\n*E\n*S KotlinDebug\n*F\n+ 1 UploadInfo.kt\nnet/gotev/uploadservice/data/UploadInfo\n*L\n101#1,4:104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BG\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0002\u0010\rJ\t\u0010)\u001a\u00020\u0003H\u00c6\u0003J\t\u0010*\u001a\u00020\u0005H\u00c6\u0003J\t\u0010+\u001a\u00020\u0005H\u00c6\u0003J\t\u0010,\u001a\u00020\u0005H\u00c6\u0003J\t\u0010-\u001a\u00020\tH\u00c6\u0003J\u000f\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0003JK\u0010/\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0001J\t\u00100\u001a\u00020\tH\u00d6\u0001J\u0013\u00101\u001a\u0002022\u0008\u00103\u001a\u0004\u0018\u000104H\u00d6\u0003J\t\u00105\u001a\u00020\tH\u00d6\u0001J\t\u00106\u001a\u00020\u0003H\u00d6\u0001J\u0019\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\tH\u00d6\u0001R\u0017\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u000c\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0018\u001a\u00020\t8F\u00a2\u0006\u000c\u0012\u0004\u0008\u0019\u0010\u0011\u001a\u0004\u0008\u001a\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u001d\u001a\u00020\t8F\u00a2\u0006\u000c\u0012\u0004\u0008\u001e\u0010\u0011\u001a\u0004\u0008\u001f\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0017\u0010#\u001a\u00020$8F\u00a2\u0006\u000c\u0012\u0004\u0008%\u0010\u0011\u001a\u0004\u0008&\u0010\'R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001c\u00a8\u0006<"
    }
    d2 = {
        "Lnet/gotev/uploadservice/data/UploadInfo;",
        "Landroid/os/Parcelable;",
        "uploadId",
        "",
        "startTime",
        "",
        "uploadedBytes",
        "totalBytes",
        "numberOfRetries",
        "",
        "files",
        "Ljava/util/ArrayList;",
        "Lnet/gotev/uploadservice/data/UploadFile;",
        "(Ljava/lang/String;JJJILjava/util/ArrayList;)V",
        "elapsedTime",
        "Lnet/gotev/uploadservice/data/UploadElapsedTime;",
        "elapsedTime$annotations",
        "()V",
        "getElapsedTime",
        "()Lnet/gotev/uploadservice/data/UploadElapsedTime;",
        "getFiles",
        "()Ljava/util/ArrayList;",
        "getNumberOfRetries",
        "()I",
        "progressPercent",
        "progressPercent$annotations",
        "getProgressPercent",
        "getStartTime",
        "()J",
        "successfullyUploadedFiles",
        "successfullyUploadedFiles$annotations",
        "getSuccessfullyUploadedFiles",
        "getTotalBytes",
        "getUploadId",
        "()Ljava/lang/String;",
        "uploadRate",
        "Lnet/gotev/uploadservice/data/UploadRate;",
        "uploadRate$annotations",
        "getUploadRate",
        "()Lnet/gotev/uploadservice/data/UploadRate;",
        "getUploadedBytes",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "describeContents",
        "equals",
        "",
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

.field private final numberOfRetries:I

.field private final startTime:J

.field private final totalBytes:J

.field private final uploadId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uploadedBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/gotev/uploadservice/data/UploadInfo$Creator;

    invoke-direct {v0}, Lnet/gotev/uploadservice/data/UploadInfo$Creator;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/data/UploadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lnet/gotev/uploadservice/data/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3c

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v11}, Lnet/gotev/uploadservice/data/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Lnet/gotev/uploadservice/data/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v11}, Lnet/gotev/uploadservice/data/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJI)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lnet/gotev/uploadservice/data/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJILjava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJI",
            "Ljava/util/ArrayList<",
            "Lnet/gotev/uploadservice/data/UploadFile;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "uploadId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadId:Ljava/lang/String;

    iput-wide p2, p0, Lnet/gotev/uploadservice/data/UploadInfo;->startTime:J

    iput-wide p4, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadedBytes:J

    iput-wide p6, p0, Lnet/gotev/uploadservice/data/UploadInfo;->totalBytes:J

    iput p8, p0, Lnet/gotev/uploadservice/data/UploadInfo;->numberOfRetries:I

    iput-object p9, p0, Lnet/gotev/uploadservice/data/UploadInfo;->files:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJJILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 v0, p10, 0x2

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    move-wide v3, p2

    :goto_0
    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    move-wide v5, p4

    :goto_1
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-wide v1, p6

    :goto_2
    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    move/from16 v0, p8

    :goto_3
    and-int/lit8 v7, p10, 0x20

    if-eqz v7, :cond_4

    .line 40
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    :cond_4
    move-object/from16 v7, p9

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-wide p4, v3

    move-wide p6, v5

    move-wide/from16 p8, v1

    move/from16 p10, v0

    move-object/from16 p11, v7

    invoke-direct/range {p2 .. p11}, Lnet/gotev/uploadservice/data/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic copy$default(Lnet/gotev/uploadservice/data/UploadInfo;Ljava/lang/String;JJJILjava/util/ArrayList;ILjava/lang/Object;)Lnet/gotev/uploadservice/data/UploadInfo;
    .locals 10

    move-object v0, p0

    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lnet/gotev/uploadservice/data/UploadInfo;->startTime:J

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p10, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadedBytes:J

    goto :goto_2

    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 v6, p10, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lnet/gotev/uploadservice/data/UploadInfo;->totalBytes:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p6

    :goto_3
    and-int/lit8 v8, p10, 0x10

    if-eqz v8, :cond_4

    iget v8, v0, Lnet/gotev/uploadservice/data/UploadInfo;->numberOfRetries:I

    goto :goto_4

    :cond_4
    move/from16 v8, p8

    :goto_4
    and-int/lit8 v9, p10, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lnet/gotev/uploadservice/data/UploadInfo;->files:Ljava/util/ArrayList;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p9

    :goto_5
    move-object p1, v1

    move-wide p2, v2

    move-wide p4, v4

    move-wide/from16 p6, v6

    move/from16 p8, v8

    move-object/from16 p9, v9

    invoke-virtual/range {p0 .. p9}, Lnet/gotev/uploadservice/data/UploadInfo;->copy(Ljava/lang/String;JJJILjava/util/ArrayList;)Lnet/gotev/uploadservice/data/UploadInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic elapsedTime$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic progressPercent$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic successfullyUploadedFiles$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic uploadRate$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->startTime:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadedBytes:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->totalBytes:J

    return-wide v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->numberOfRetries:I

    return v0
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

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->files:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JJJILjava/util/ArrayList;)Lnet/gotev/uploadservice/data/UploadInfo;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJI",
            "Ljava/util/ArrayList<",
            "Lnet/gotev/uploadservice/data/UploadFile;",
            ">;)",
            "Lnet/gotev/uploadservice/data/UploadInfo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uploadId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/gotev/uploadservice/data/UploadInfo;

    move-object v1, v0

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lnet/gotev/uploadservice/data/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/ArrayList;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lnet/gotev/uploadservice/data/UploadInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lnet/gotev/uploadservice/data/UploadInfo;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadId:Ljava/lang/String;

    iget-object v3, p1, Lnet/gotev/uploadservice/data/UploadInfo;->uploadId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v3, p0, Lnet/gotev/uploadservice/data/UploadInfo;->startTime:J

    iget-wide v5, p1, Lnet/gotev/uploadservice/data/UploadInfo;->startTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-wide v3, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadedBytes:J

    iget-wide v5, p1, Lnet/gotev/uploadservice/data/UploadInfo;->uploadedBytes:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-wide v3, p0, Lnet/gotev/uploadservice/data/UploadInfo;->totalBytes:J

    iget-wide v5, p1, Lnet/gotev/uploadservice/data/UploadInfo;->totalBytes:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lnet/gotev/uploadservice/data/UploadInfo;->numberOfRetries:I

    iget v3, p1, Lnet/gotev/uploadservice/data/UploadInfo;->numberOfRetries:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadInfo;->files:Ljava/util/ArrayList;

    iget-object p1, p1, Lnet/gotev/uploadservice/data/UploadInfo;->files:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getElapsedTime()Lnet/gotev/uploadservice/data/UploadElapsedTime;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/gotev/uploadservice/data/UploadInfo;->startTime:J

    sub-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 51
    div-int/lit8 v0, v1, 0x3c

    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr v1, v2

    .line 54
    new-instance v2, Lnet/gotev/uploadservice/data/UploadElapsedTime;

    invoke-direct {v2, v0, v1}, Lnet/gotev/uploadservice/data/UploadElapsedTime;-><init>(II)V

    return-object v2
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

    .line 40
    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->files:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getNumberOfRetries()I
    .locals 1

    .line 35
    iget v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->numberOfRetries:I

    return v0
.end method

.method public final getProgressPercent()I
    .locals 6

    .line 97
    iget-wide v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadedBytes:J

    const/16 v4, 0x64

    int-to-long v4, v4

    mul-long v2, v2, v4

    div-long/2addr v2, v0

    long-to-int v0, v2

    :goto_0
    return v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->startTime:J

    return-wide v0
.end method

.method public final getSuccessfullyUploadedFiles()I
    .locals 3

    .line 101
    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->files:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 104
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/data/UploadFile;

    .line 101
    invoke-virtual {v1}, Lnet/gotev/uploadservice/data/UploadFile;->getSuccessfullyUploaded()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method public final getTotalBytes()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->totalBytes:J

    return-wide v0
.end method

.method public final getUploadId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploadRate()Lnet/gotev/uploadservice/data/UploadRate;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 65
    invoke-virtual {p0}, Lnet/gotev/uploadservice/data/UploadInfo;->getElapsedTime()Lnet/gotev/uploadservice/data/UploadElapsedTime;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/data/UploadElapsedTime;->getTotalSeconds()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ge v0, v1, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 71
    :cond_0
    iget-wide v3, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadedBytes:J

    long-to-double v3, v3

    int-to-double v5, v2

    div-double/2addr v3, v5

    const/16 v5, 0x8

    int-to-double v5, v5

    mul-double v3, v3, v5

    int-to-double v5, v0

    div-double/2addr v3, v5

    :goto_0
    int-to-double v0, v1

    cmpg-double v5, v3, v0

    if-gez v5, :cond_1

    .line 74
    new-instance v0, Lnet/gotev/uploadservice/data/UploadRate;

    int-to-double v1, v2

    mul-double v3, v3, v1

    double-to-int v1, v3

    .line 76
    sget-object v2, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;->BitPerSecond:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    .line 74
    invoke-direct {v0, v1, v2}, Lnet/gotev/uploadservice/data/UploadRate;-><init>(ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;)V

    goto :goto_1

    :cond_1
    int-to-double v0, v2

    cmpl-double v2, v3, v0

    if-ltz v2, :cond_2

    .line 79
    new-instance v2, Lnet/gotev/uploadservice/data/UploadRate;

    div-double/2addr v3, v0

    double-to-int v0, v3

    .line 81
    sget-object v1, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;->MegabitPerSecond:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    .line 79
    invoke-direct {v2, v0, v1}, Lnet/gotev/uploadservice/data/UploadRate;-><init>(ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;)V

    move-object v0, v2

    goto :goto_1

    .line 84
    :cond_2
    new-instance v0, Lnet/gotev/uploadservice/data/UploadRate;

    double-to-int v1, v3

    .line 86
    sget-object v2, Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;->KilobitPerSecond:Lnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;

    .line 84
    invoke-direct {v0, v1, v2}, Lnet/gotev/uploadservice/data/UploadRate;-><init>(ILnet/gotev/uploadservice/data/UploadRate$UploadRateUnit;)V

    :goto_1
    return-object v0
.end method

.method public final getUploadedBytes()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadedBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lnet/gotev/uploadservice/data/UploadInfo;->startTime:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadedBytes:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lnet/gotev/uploadservice/data/UploadInfo;->totalBytes:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lnet/gotev/uploadservice/data/UploadInfo;->numberOfRetries:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/gotev/uploadservice/data/UploadInfo;->files:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadInfo(uploadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/gotev/uploadservice/data/UploadInfo;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uploadedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadedBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/gotev/uploadservice/data/UploadInfo;->totalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfRetries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/gotev/uploadservice/data/UploadInfo;->numberOfRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", files="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/gotev/uploadservice/data/UploadInfo;->files:Ljava/util/ArrayList;

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

    iget-object p2, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->uploadedBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lnet/gotev/uploadservice/data/UploadInfo;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lnet/gotev/uploadservice/data/UploadInfo;->numberOfRetries:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lnet/gotev/uploadservice/data/UploadInfo;->files:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/data/UploadFile;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
