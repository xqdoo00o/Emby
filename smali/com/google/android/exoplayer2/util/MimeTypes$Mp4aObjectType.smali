.class final Lcom/google/android/exoplayer2/util/MimeTypes$Mp4aObjectType;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/MimeTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Mp4aObjectType"
.end annotation


# instance fields
.field public final audioObjectTypeIndication:I

.field public final objectTypeIndication:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput p1, p0, Lcom/google/android/exoplayer2/util/MimeTypes$Mp4aObjectType;->objectTypeIndication:I

    .line 669
    iput p2, p0, Lcom/google/android/exoplayer2/util/MimeTypes$Mp4aObjectType;->audioObjectTypeIndication:I

    return-void
.end method
