.class public final synthetic Lcom/google/android/exoplayer2/text/cea/-$$Lambda$Cea708Decoder$vJghsd7oVGWv2NkZPLoXraaAjhg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/text/cea/-$$Lambda$Cea708Decoder$vJghsd7oVGWv2NkZPLoXraaAjhg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/text/cea/-$$Lambda$Cea708Decoder$vJghsd7oVGWv2NkZPLoXraaAjhg;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/cea/-$$Lambda$Cea708Decoder$vJghsd7oVGWv2NkZPLoXraaAjhg;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/-$$Lambda$Cea708Decoder$vJghsd7oVGWv2NkZPLoXraaAjhg;->INSTANCE:Lcom/google/android/exoplayer2/text/cea/-$$Lambda$Cea708Decoder$vJghsd7oVGWv2NkZPLoXraaAjhg;

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

    check-cast p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    check-cast p2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->lambda$getDisplayCues$0(Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;)I

    move-result p1

    return p1
.end method
