.class public Lcom/mb/android/model/dto/MediaSourceInfo;
.super Ljava/lang/Object;
.source "MediaSourceInfo.java"


# instance fields
.field private Bitrate:Ljava/lang/Integer;

.field private BufferMs:Ljava/lang/Integer;

.field private Container:Ljava/lang/String;

.field private DefaultAudioStreamIndex:Ljava/lang/Integer;

.field private DefaultSubtitleStreamIndex:Ljava/lang/Integer;

.field private ETag:Ljava/lang/String;

.field private Formats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Id:Ljava/lang/String;

.field private IsInfiniteStream:Z

.field private IsRemote:Z

.field private LiveStreamId:Ljava/lang/String;

.field private MediaStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/entities/MediaStream;",
            ">;"
        }
    .end annotation
.end field

.field private Name:Ljava/lang/String;

.field private OpenToken:Ljava/lang/String;

.field private Path:Ljava/lang/String;

.field private PlayableStreamFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Protocol:Lcom/mb/android/model/mediainfo/MediaProtocol;

.field private ReadAtNativeFramerate:Z

.field private RequiredHttpHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private RequiresClosing:Z

.field private RequiresOpening:Z

.field private RunTimeTicks:Ljava/lang/Long;

.field private Size:Ljava/lang/Long;

.field private SupportsDirectPlay:Z

.field private SupportsDirectStream:Z

.field private SupportsTranscoding:Z

.field private TranscodingContainer:Ljava/lang/String;

.field private TranscodingSubProtocol:Ljava/lang/String;

.field private TranscodingUrl:Ljava/lang/String;

.field private Type:Lcom/mb/android/model/dto/MediaSourceType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/mb/android/model/mediainfo/MediaProtocol;->values()[Lcom/mb/android/model/mediainfo/MediaProtocol;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Protocol:Lcom/mb/android/model/mediainfo/MediaProtocol;

    .line 39
    invoke-static {}, Lcom/mb/android/model/dto/MediaSourceType;->values()[Lcom/mb/android/model/dto/MediaSourceType;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Type:Lcom/mb/android/model/dto/MediaSourceType;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Size:Ljava/lang/Long;

    .line 97
    iput-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->RunTimeTicks:Ljava/lang/Long;

    .line 187
    iput-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->BufferMs:Ljava/lang/Integer;

    .line 226
    iput-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Bitrate:Ljava/lang/Integer;

    .line 285
    iput-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->DefaultAudioStreamIndex:Ljava/lang/Integer;

    .line 294
    iput-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->DefaultSubtitleStreamIndex:Ljava/lang/Integer;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->setFormats(Ljava/util/ArrayList;)V

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->setMediaStreams(Ljava/util/ArrayList;)V

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->setRequiredHttpHeaders(Ljava/util/HashMap;)V

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->setPlayableStreamFileNames(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->setSupportsTranscoding(Z)V

    .line 281
    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->setSupportsDirectStream(Z)V

    .line 282
    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->setSupportsDirectPlay(Z)V

    return-void
.end method


# virtual methods
.method public final GetDefaultAudioStream(Ljava/lang/Integer;)Lcom/mb/android/model/entities/MediaStream;
    .locals 4

    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 317
    invoke-virtual {p0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/entities/MediaStream;

    .line 319
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v2

    sget-object v3, Lcom/mb/android/model/entities/MediaStreamType;->Audio:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/entities/MediaStream;

    .line 328
    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v1

    sget-object v2, Lcom/mb/android/model/entities/MediaStreamType;->Audio:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getIsDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 334
    :cond_3
    invoke-virtual {p0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mb/android/model/entities/MediaStream;

    .line 336
    invoke-virtual {v0}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v1

    sget-object v2, Lcom/mb/android/model/entities/MediaStreamType;->Audio:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v1, v2, :cond_4

    return-object v0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetMediaStream(Lcom/mb/android/model/entities/MediaStreamType;I)Lcom/mb/android/model/entities/MediaStream;
    .locals 3

    .line 363
    invoke-virtual {p0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/entities/MediaStream;

    .line 365
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v2

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final GetStreamCount(Lcom/mb/android/model/entities/MediaStreamType;)Ljava/lang/Integer;
    .locals 4

    .line 379
    invoke-virtual {p0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mb/android/model/entities/MediaStream;

    add-int/lit8 v1, v1, 0x1

    .line 382
    invoke-virtual {v3}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 393
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final IsSecondaryAudio(Lcom/mb/android/model/entities/MediaStream;)Ljava/lang/Boolean;
    .locals 6

    .line 399
    invoke-virtual {p0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/entities/MediaStream;

    .line 401
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v4

    sget-object v5, Lcom/mb/android/model/entities/MediaStreamType;->Audio:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getIsDefault()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result p1

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/entities/MediaStream;

    .line 410
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v4

    sget-object v5, Lcom/mb/android/model/entities/MediaStreamType;->Audio:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v4, v5, :cond_3

    .line 412
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getIndex()I

    move-result p1

    if-eq v0, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getBitrate()Ljava/lang/Integer;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Bitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBufferMs()Ljava/lang/Integer;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->BufferMs:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getContainer()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Container:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultAudioStream()Lcom/mb/android/model/entities/MediaStream;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getDefaultAudioStreamIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/MediaSourceInfo;->GetDefaultAudioStream(Ljava/lang/Integer;)Lcom/mb/android/model/entities/MediaStream;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultAudioStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->DefaultAudioStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDefaultSubtitleStreamIndex()Ljava/lang/Integer;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->DefaultSubtitleStreamIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getETag()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->ETag:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Formats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsInfiniteStream()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->IsInfiniteStream:Z

    return v0
.end method

.method public final getIsRemote()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->IsRemote:Z

    return v0
.end method

.method public final getLiveStreamId()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->LiveStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaStreams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->MediaStreams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpenToken()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->OpenToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayableStreamFileNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->PlayableStreamFileNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getProtocol()Lcom/mb/android/model/mediainfo/MediaProtocol;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Protocol:Lcom/mb/android/model/mediainfo/MediaProtocol;

    return-object v0
.end method

.method public final getReadAtNativeFramerate()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->ReadAtNativeFramerate:Z

    return v0
.end method

.method public final getRequiredHttpHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->RequiredHttpHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getRequiresClosing()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->RequiresClosing:Z

    return v0
.end method

.method public final getRequiresOpening()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->RequiresOpening:Z

    return v0
.end method

.method public final getRunTimeTicks()Ljava/lang/Long;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->RunTimeTicks:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Size:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSupportsDirectPlay()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->SupportsDirectPlay:Z

    return v0
.end method

.method public final getSupportsDirectStream()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->SupportsDirectStream:Z

    return v0
.end method

.method public final getSupportsTranscoding()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->SupportsTranscoding:Z

    return v0
.end method

.method public final getTranscodingContainer()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->TranscodingContainer:Ljava/lang/String;

    return-object v0
.end method

.method public final getTranscodingSubProtocol()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->TranscodingSubProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getTranscodingUrl()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->TranscodingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/mb/android/model/dto/MediaSourceType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Type:Lcom/mb/android/model/dto/MediaSourceType;

    return-object v0
.end method

.method public final getVideoStream()Lcom/mb/android/model/entities/MediaStream;
    .locals 5

    .line 349
    invoke-virtual {p0}, Lcom/mb/android/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mb/android/model/entities/MediaStream;

    .line 351
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getCodec()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {v1}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v3

    sget-object v4, Lcom/mb/android/model/entities/MediaStreamType;->Video:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    const-string v3, "jpeg"

    invoke-static {v2, v3}, Lcom/mb/android/model/extensions/StringHelper;->IndexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setBitrate(Ljava/lang/Integer;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Bitrate:Ljava/lang/Integer;

    return-void
.end method

.method public final setBufferMs(Ljava/lang/Integer;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->BufferMs:Ljava/lang/Integer;

    return-void
.end method

.method public final setContainer(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Container:Ljava/lang/String;

    return-void
.end method

.method public final setDefaultAudioStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->DefaultAudioStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setDefaultSubtitleStreamIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->DefaultSubtitleStreamIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setETag(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->ETag:Ljava/lang/String;

    return-void
.end method

.method public final setFormats(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Formats:Ljava/util/ArrayList;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setIsInfiniteStream(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->IsInfiniteStream:Z

    return-void
.end method

.method public final setIsRemote(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->IsRemote:Z

    return-void
.end method

.method public final setLiveStreamId(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->LiveStreamId:Ljava/lang/String;

    return-void
.end method

.method public final setMediaStreams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/entities/MediaStream;",
            ">;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->MediaStreams:Ljava/util/ArrayList;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setOpenToken(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->OpenToken:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Path:Ljava/lang/String;

    return-void
.end method

.method public final setPlayableStreamFileNames(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->PlayableStreamFileNames:Ljava/util/ArrayList;

    return-void
.end method

.method public final setProtocol(Lcom/mb/android/model/mediainfo/MediaProtocol;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Protocol:Lcom/mb/android/model/mediainfo/MediaProtocol;

    return-void
.end method

.method public final setReadAtNativeFramerate(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->ReadAtNativeFramerate:Z

    return-void
.end method

.method public final setRequiredHttpHeaders(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->RequiredHttpHeaders:Ljava/util/HashMap;

    return-void
.end method

.method public final setRequiresClosing(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->RequiresClosing:Z

    return-void
.end method

.method public final setRequiresOpening(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->RequiresOpening:Z

    return-void
.end method

.method public final setRunTimeTicks(Ljava/lang/Long;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->RunTimeTicks:Ljava/lang/Long;

    return-void
.end method

.method public final setSize(Ljava/lang/Long;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Size:Ljava/lang/Long;

    return-void
.end method

.method public final setSupportsDirectPlay(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->SupportsDirectPlay:Z

    return-void
.end method

.method public final setSupportsDirectStream(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->SupportsDirectStream:Z

    return-void
.end method

.method public final setSupportsTranscoding(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->SupportsTranscoding:Z

    return-void
.end method

.method public final setTranscodingContainer(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->TranscodingContainer:Ljava/lang/String;

    return-void
.end method

.method public final setTranscodingSubProtocol(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->TranscodingSubProtocol:Ljava/lang/String;

    return-void
.end method

.method public final setTranscodingUrl(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->TranscodingUrl:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lcom/mb/android/model/dto/MediaSourceType;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mb/android/model/dto/MediaSourceInfo;->Type:Lcom/mb/android/model/dto/MediaSourceType;

    return-void
.end method
