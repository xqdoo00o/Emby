.class public Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;
.super Ljava/lang/Object;
.source "LibassLibrary.java"


# static fields
.field private static final LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

.field public static final SUBTITLE_DECODER_ERROR:I = -0x63

.field public static final SUBTITLE_DECODER_ERROR_NO_SURFACE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/util/LibraryLoader;

    const-string v1, "ass_renderer"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/LibraryLoader;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .line 20
    sget-object v0, Lcom/google/android/exoplayer2/ext/libass/LibassLibrary;->LOADER:Lcom/google/android/exoplayer2/util/LibraryLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static native libassAddFont(JLjava/lang/String;[B)V
.end method

.method public static native libassClearSurface(J)V
.end method

.method public static native libassDecode(JLjava/nio/ByteBuffer;IJ)J
.end method

.method public static native libassInitialize([BIILjava/lang/String;)J
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public static native libassOutputReset(J)V
.end method

.method public static native libassRelease(J)V
.end method

.method public static native libassRenderFrame(JJ)I
.end method

.method public static native libassReset(J[B)V
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public static native libassSetSurface(JLandroid/view/Surface;II)I
.end method
