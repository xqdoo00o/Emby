.class final Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackBundle"
.end annotation


# static fields
.field private static final SINGLE_SUBSAMPLE_ENCRYPTION_DATA_LENGTH:I = 0x8


# instance fields
.field public currentSampleInTrackRun:I

.field public currentSampleIndex:I

.field public currentTrackRunIndex:I

.field private currentlyInFragment:Z

.field private final defaultInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

.field private final encryptionSignalByte:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public firstSampleToOutputIndex:I

.field public final fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

.field public moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

.field public final output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V
    .locals 1

    .line 1582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1583
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1584
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 1585
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 1586
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 1587
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1588
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1589
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1590
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z
    .locals 0

    .line 1559
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z
    .locals 0

    .line 1559
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return p1
.end method


# virtual methods
.method public getCurrentSampleFlags()I
    .locals 2

    .line 1663
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1667
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public getCurrentSampleOffset()J
    .locals 3

    .line 1648
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v1, v0, v1

    :goto_0
    return-wide v1
.end method

.method public getCurrentSamplePresentationTimeUs()J
    .locals 3

    .line 1641
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1643
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getCurrentSampleSize()I
    .locals 2

    .line 1655
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1817
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1821
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1823
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 1826
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1827
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public next()Z
    .locals 5

    .line 1687
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1688
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1691
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1692
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    .line 1693
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1694
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    return v2

    :cond_1
    return v1
.end method

.method public outputSampleEncryptionData(II)I
    .locals 9

    .line 1712
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1719
    :cond_0
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v2, :cond_1

    .line 1720
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1721
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    goto :goto_0

    .line 1724
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1725
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 1726
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1727
    array-length v0, v0

    .line 1730
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1731
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    .line 1735
    :goto_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    if-eqz v5, :cond_4

    const/16 v7, 0x80

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    .line 1737
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1738
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v6, v7, v4, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    .line 1740
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v6, v2, v0, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    if-nez v5, :cond_5

    add-int/2addr v0, v4

    return v0

    :cond_5
    const/4 v2, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_6

    .line 1751
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1753
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 1754
    aput-byte v1, v3, v1

    .line 1755
    aput-byte v4, v3, v4

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1757
    aput-byte v1, v3, v6

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1758
    aput-byte p2, v3, v5

    const/4 p2, 0x4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1760
    aput-byte v1, v3, p2

    const/4 p2, 0x5

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1761
    aput-byte v1, v3, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1762
    aput-byte p2, v3, v2

    const/4 p2, 0x7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1763
    aput-byte p1, v3, p2

    .line 1764
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p1, p2, v7, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    add-int/2addr v0, v4

    add-int/2addr v0, v7

    return v0

    .line 1771
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1772
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    const/4 v8, -0x2

    .line 1773
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v6

    if-eqz p2, :cond_7

    .line 1779
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1780
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 1781
    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1783
    aget-byte p1, v2, v6

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v2, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1785
    aput-byte p2, v2, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1786
    aput-byte p1, v2, v5

    .line 1787
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1790
    :cond_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {p2, p1, v3, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    return v0
.end method

.method public reset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V
    .locals 0

    .line 1594
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 1595
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 1596
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 1597
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    return-void
.end method

.method public resetFragmentInfo()V
    .locals 1

    .line 1614
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->reset()V

    const/4 v0, 0x0

    .line 1615
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1616
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1617
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1618
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    .line 1619
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return-void
.end method

.method public seek(J)V
    .locals 4

    .line 1629
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1630
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 1631
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    .line 1632
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1633
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public skipSampleEncryptionData()V
    .locals 3

    .line 1801
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1806
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1807
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v2, :cond_1

    .line 1808
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1810
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1811
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    return-void
.end method

.method public updateDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 1604
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1603
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1606
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    .line 1607
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    .line 1608
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 1609
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
