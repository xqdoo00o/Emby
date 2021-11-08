.class public Lcom/mb/android/model/session/PlaybackStopInfo;
.super Ljava/lang/Object;
.source "PlaybackStopInfo.java"


# instance fields
.field public Failed:Z

.field public Item:Lcom/mb/android/model/dto/BaseItemDto;

.field public ItemId:Ljava/lang/String;

.field public LiveStreamId:Ljava/lang/String;

.field public MediaSourceId:Ljava/lang/String;

.field public NextMediaType:Ljava/lang/String;

.field public NowPlayingQueue:[Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;

.field public PlaySessionId:Ljava/lang/String;

.field public PlaylistIndex:I

.field public PlaylistItemId:Ljava/lang/String;

.field public PlaylistLength:I

.field public PositionTicks:J

.field public SessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
