.class public Lcom/mb/android/model/entities/MediaStream;
.super Ljava/lang/Object;
.source "MediaStream.java"


# instance fields
.field private AspectRatio:Ljava/lang/String;

.field private AverageFrameRate:Ljava/lang/Float;

.field private BitDepth:Ljava/lang/Integer;

.field private BitRate:Ljava/lang/Integer;

.field private ChannelLayout:Ljava/lang/String;

.field private Channels:Ljava/lang/Integer;

.field private Codec:Ljava/lang/String;

.field private CodecTag:Ljava/lang/String;

.field private CodecTimeBase:Ljava/lang/String;

.field private Comment:Ljava/lang/String;

.field private DeliveryMethod:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

.field private DeliveryUrl:Ljava/lang/String;

.field private DisplayTitle:Ljava/lang/String;

.field private ExternalId:Ljava/lang/String;

.field private Extradata:Ljava/lang/String;

.field private Height:Ljava/lang/Integer;

.field private Index:I

.field private IsAVC:Ljava/lang/Boolean;

.field private IsAnamorphic:Ljava/lang/Boolean;

.field private IsDefault:Z

.field private IsExternal:Z

.field private IsExternalUrl:Ljava/lang/Boolean;

.field private IsForced:Z

.field private IsInterlaced:Z

.field private Language:Ljava/lang/String;

.field private Level:Ljava/lang/Double;

.field private NalLengthSize:Ljava/lang/String;

.field private PacketLength:Ljava/lang/Integer;

.field private Path:Ljava/lang/String;

.field private PixelFormat:Ljava/lang/String;

.field private Profile:Ljava/lang/String;

.field private RealFrameRate:Ljava/lang/Float;

.field private RefFrames:Ljava/lang/Integer;

.field private SampleRate:Ljava/lang/Integer;

.field private Score:Ljava/lang/Integer;

.field private SupportsExternalStream:Z

.field private TimeBase:Ljava/lang/String;

.field private Title:Ljava/lang/String;

.field private Type:Lcom/mb/android/model/entities/MediaStreamType;

.field private Width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->IsAVC:Ljava/lang/Boolean;

    .line 174
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->BitRate:Ljava/lang/Integer;

    .line 189
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->BitDepth:Ljava/lang/Integer;

    .line 204
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->RefFrames:Ljava/lang/Integer;

    .line 219
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->PacketLength:Ljava/lang/Integer;

    .line 234
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Channels:Ljava/lang/Integer;

    .line 249
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->SampleRate:Ljava/lang/Integer;

    .line 294
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Height:Ljava/lang/Integer;

    .line 309
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Width:Ljava/lang/Integer;

    .line 324
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->AverageFrameRate:Ljava/lang/Float;

    .line 339
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->RealFrameRate:Ljava/lang/Float;

    .line 369
    invoke-static {}, Lcom/mb/android/model/entities/MediaStreamType;->values()[Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/mb/android/model/entities/MediaStream;->Type:Lcom/mb/android/model/entities/MediaStreamType;

    .line 414
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Score:Ljava/lang/Integer;

    .line 444
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->DeliveryMethod:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    .line 472
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->IsExternalUrl:Ljava/lang/Boolean;

    .line 601
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Level:Ljava/lang/Double;

    .line 616
    iput-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->IsAnamorphic:Ljava/lang/Boolean;

    return-void
.end method

.method public static IsTextFormat(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string v0, "pgs"

    .line 503
    invoke-static {p0, v0}, Lcom/mb/android/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "dvd"

    invoke-static {p0, v0}, Lcom/mb/android/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "dvbsub"

    invoke-static {p0, v0}, Lcom/mb/android/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "sub"

    invoke-static {p0, v0}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final SupportsSubtitleConversionTo(Ljava/lang/String;)Z
    .locals 4

    .line 508
    invoke-virtual {p0}, Lcom/mb/android/model/entities/MediaStream;->getIsTextSubtitleStream()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ass"

    invoke-static {v0, v2}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ssa"

    invoke-static {v0, v3}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 524
    :cond_2
    invoke-static {p1, v2}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 528
    :cond_3
    invoke-static {p1, v3}, Lcom/mb/android/model/extensions/StringHelper;->EqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final getAspectRatio()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->AspectRatio:Ljava/lang/String;

    return-object v0
.end method

.method public final getAverageFrameRate()Ljava/lang/Float;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->AverageFrameRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getBitDepth()Ljava/lang/Integer;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->BitDepth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBitRate()Ljava/lang/Integer;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->BitRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getChannelLayout()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->ChannelLayout:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannels()Ljava/lang/Integer;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Channels:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCodec()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Codec:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodecTag()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->CodecTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodecTimeBase()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->CodecTimeBase:Ljava/lang/String;

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeliveryMethod()Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->DeliveryMethod:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    return-object v0
.end method

.method public final getDeliveryUrl()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->DeliveryUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->DisplayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getExternalId()Ljava/lang/String;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->ExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtradata()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Extradata:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/mb/android/model/entities/MediaStream;->Index:I

    return v0
.end method

.method public final getIsAVC()Ljava/lang/Boolean;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->IsAVC:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsAnamorphic()Ljava/lang/Boolean;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->IsAnamorphic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsDefault()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/mb/android/model/entities/MediaStream;->IsDefault:Z

    return v0
.end method

.method public final getIsExternal()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/mb/android/model/entities/MediaStream;->IsExternal:Z

    return v0
.end method

.method public final getIsExternalUrl()Ljava/lang/Boolean;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->IsExternalUrl:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsForced()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/mb/android/model/entities/MediaStream;->IsForced:Z

    return v0
.end method

.method public final getIsInterlaced()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/mb/android/model/entities/MediaStream;->IsInterlaced:Z

    return v0
.end method

.method public final getIsTextSubtitleStream()Z
    .locals 3

    .line 484
    invoke-virtual {p0}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/MediaStreamType;->Subtitle:Lcom/mb/android/model/entities/MediaStreamType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mb/android/tangible/DotNetToJavaStringHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mb/android/model/entities/MediaStream;->getIsExternal()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mb/android/model/entities/MediaStream;->IsTextFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Language:Ljava/lang/String;

    return-object v0
.end method

.method public final getLevel()Ljava/lang/Double;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Level:Ljava/lang/Double;

    return-object v0
.end method

.method public final getNalLengthSize()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->NalLengthSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getPacketLength()Ljava/lang/Integer;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->PacketLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPixelFormat()Ljava/lang/String;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->PixelFormat:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfile()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Profile:Ljava/lang/String;

    return-object v0
.end method

.method public final getRealFrameRate()Ljava/lang/Float;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->RealFrameRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getRefFrames()Ljava/lang/Integer;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->RefFrames:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSampleRate()Ljava/lang/Integer;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->SampleRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getScore()Ljava/lang/Integer;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Score:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSupportsExternalStream()Z
    .locals 1

    .line 544
    iget-boolean v0, p0, Lcom/mb/android/model/entities/MediaStream;->SupportsExternalStream:Z

    return v0
.end method

.method public final getTimeBase()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->TimeBase:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/mb/android/model/entities/MediaStreamType;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Type:Lcom/mb/android/model/entities/MediaStreamType;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/mb/android/model/entities/MediaStream;->Width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAspectRatio(Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->AspectRatio:Ljava/lang/String;

    return-void
.end method

.method public final setAverageFrameRate(Ljava/lang/Float;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->AverageFrameRate:Ljava/lang/Float;

    return-void
.end method

.method public final setBitDepth(Ljava/lang/Integer;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->BitDepth:Ljava/lang/Integer;

    return-void
.end method

.method public final setBitRate(Ljava/lang/Integer;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->BitRate:Ljava/lang/Integer;

    return-void
.end method

.method public final setChannelLayout(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->ChannelLayout:Ljava/lang/String;

    return-void
.end method

.method public final setChannels(Ljava/lang/Integer;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Channels:Ljava/lang/Integer;

    return-void
.end method

.method public final setCodec(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Codec:Ljava/lang/String;

    return-void
.end method

.method public final setCodecTag(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->CodecTag:Ljava/lang/String;

    return-void
.end method

.method public final setCodecTimeBase(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->CodecTimeBase:Ljava/lang/String;

    return-void
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Comment:Ljava/lang/String;

    return-void
.end method

.method public final setDeliveryMethod(Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->DeliveryMethod:Lcom/mb/android/model/dlna/SubtitleDeliveryMethod;

    return-void
.end method

.method public final setDeliveryUrl(Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->DeliveryUrl:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayTitle(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->DisplayTitle:Ljava/lang/String;

    return-void
.end method

.method public final setExternalId(Ljava/lang/String;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->ExternalId:Ljava/lang/String;

    return-void
.end method

.method public final setExtradata(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Extradata:Ljava/lang/String;

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Height:Ljava/lang/Integer;

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 406
    iput p1, p0, Lcom/mb/android/model/entities/MediaStream;->Index:I

    return-void
.end method

.method public final setIsAVC(Ljava/lang/Boolean;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->IsAVC:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsAnamorphic(Ljava/lang/Boolean;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->IsAnamorphic:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsDefault(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/mb/android/model/entities/MediaStream;->IsDefault:Z

    return-void
.end method

.method public final setIsExternal(Z)V
    .locals 0

    .line 436
    iput-boolean p1, p0, Lcom/mb/android/model/entities/MediaStream;->IsExternal:Z

    return-void
.end method

.method public final setIsExternalUrl(Ljava/lang/Boolean;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->IsExternalUrl:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsForced(Z)V
    .locals 0

    .line 286
    iput-boolean p1, p0, Lcom/mb/android/model/entities/MediaStream;->IsForced:Z

    return-void
.end method

.method public final setIsInterlaced(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/mb/android/model/entities/MediaStream;->IsInterlaced:Z

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Language:Ljava/lang/String;

    return-void
.end method

.method public final setLevel(Ljava/lang/Double;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Level:Ljava/lang/Double;

    return-void
.end method

.method public final setNalLengthSize(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->NalLengthSize:Ljava/lang/String;

    return-void
.end method

.method public final setPacketLength(Ljava/lang/Integer;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->PacketLength:Ljava/lang/Integer;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Path:Ljava/lang/String;

    return-void
.end method

.method public final setPixelFormat(Ljava/lang/String;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->PixelFormat:Ljava/lang/String;

    return-void
.end method

.method public final setProfile(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Profile:Ljava/lang/String;

    return-void
.end method

.method public final setRealFrameRate(Ljava/lang/Float;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->RealFrameRate:Ljava/lang/Float;

    return-void
.end method

.method public final setRefFrames(Ljava/lang/Integer;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->RefFrames:Ljava/lang/Integer;

    return-void
.end method

.method public final setSampleRate(Ljava/lang/Integer;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->SampleRate:Ljava/lang/Integer;

    return-void
.end method

.method public final setScore(Ljava/lang/Integer;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Score:Ljava/lang/Integer;

    return-void
.end method

.method public final setSupportsExternalStream(Z)V
    .locals 0

    .line 548
    iput-boolean p1, p0, Lcom/mb/android/model/entities/MediaStream;->SupportsExternalStream:Z

    return-void
.end method

.method public final setTimeBase(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->TimeBase:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Title:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lcom/mb/android/model/entities/MediaStreamType;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Type:Lcom/mb/android/model/entities/MediaStreamType;

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/mb/android/model/entities/MediaStream;->Width:Ljava/lang/Integer;

    return-void
.end method
