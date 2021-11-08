.class public Lcom/mb/android/model/session/PlaybackProgressInfo;
.super Ljava/lang/Object;
.source "PlaybackProgressInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;
    }
.end annotation


# instance fields
.field public AspectRatio:Ljava/lang/String;

.field public AudioStreamIndex:I

.field public Brightness:I

.field public CanSeek:Z

.field public EventName:Lcom/mb/android/model/session/ProgressEvent;

.field public IsMuted:Z

.field public IsPaused:Z

.field public Item:Lcom/mb/android/model/dto/BaseItemDto;

.field public ItemId:Ljava/lang/String;

.field public LiveStreamId:Ljava/lang/String;

.field public MediaSourceId:Ljava/lang/String;

.field public NowPlayingQueue:[Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;

.field public PlayMethod:Lcom/mb/android/model/session/PlayMethod;

.field public PlaySessionId:Ljava/lang/String;

.field public PlaybackRate:D

.field public PlaybackStartTimeTicks:J

.field public PlaylistIndex:I

.field public PlaylistItemId:Ljava/lang/String;

.field public PlaylistItemIds:[Ljava/lang/String;

.field public PlaylistLength:I

.field public PositionTicks:J

.field public RepeatMode:Lcom/mb/android/model/session/RepeatMode;

.field public RunTimeTicks:J

.field public SessionId:Ljava/lang/String;

.field public SubtitleOffset:I

.field public SubtitleStreamIndex:I

.field public VolumeLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/mb/android/model/session/ProgressEvent;->StateChange:Lcom/mb/android/model/session/ProgressEvent;

    iput-object v0, p0, Lcom/mb/android/model/session/PlaybackProgressInfo;->EventName:Lcom/mb/android/model/session/ProgressEvent;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 65
    iput-wide v0, p0, Lcom/mb/android/model/session/PlaybackProgressInfo;->PlaybackRate:D

    return-void
.end method
