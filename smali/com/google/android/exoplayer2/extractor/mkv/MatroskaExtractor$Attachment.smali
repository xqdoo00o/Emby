.class final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Attachment"
.end annotation


# static fields
.field private static final fontExtensions:[Ljava/lang/String;

.field private static final fontMimeTypes:[Ljava/lang/String;


# instance fields
.field public data:[B

.field public mimeType:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "application/x-truetype-font"

    const-string v1, "application/vnd.ms-opentype"

    const-string v2, "application/x-font-ttf"

    const-string v3, "application/x-font"

    const-string v4, "font/collection"

    const-string v5, "font/otf"

    const-string v6, "font/sfnt"

    const-string v7, "font/ttf"

    .line 2827
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;->fontMimeTypes:[Ljava/lang/String;

    const-string v0, ".ttf"

    const-string v1, ".ttc"

    const-string v2, ".otf"

    const-string v3, ".otc"

    .line 2838
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;->fontExtensions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0

    .line 2825
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;-><init>()V

    return-void
.end method


# virtual methods
.method public isFont()Z
    .locals 7

    .line 2847
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;->data:[B

    if-nez v0, :cond_0

    goto :goto_3

    .line 2850
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;->fontMimeTypes:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    .line 2851
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2856
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;->name:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    .line 2857
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 2858
    :goto_1
    sget-object v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Attachment;->fontExtensions:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 2859
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v1
.end method
