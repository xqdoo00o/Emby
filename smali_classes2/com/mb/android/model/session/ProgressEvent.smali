.class public final enum Lcom/mb/android/model/session/ProgressEvent;
.super Ljava/lang/Enum;
.source "ProgressEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mb/android/model/session/ProgressEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum AudioTrackChange:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum Pause:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum PlaybackRateChange:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum PlaylistItemAdd:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum PlaylistItemMove:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum PlaylistItemRemove:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum QualityChange:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum RepeatModeChange:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum StateChange:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum SubtitleOffsetChange:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum SubtitleTrackChange:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum TimeUpdate:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum Unpause:Lcom/mb/android/model/session/ProgressEvent;

.field public static final enum VolumeChange:Lcom/mb/android/model/session/ProgressEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/4 v1, 0x0

    const-string v2, "TimeUpdate"

    invoke-direct {v0, v2, v1}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->TimeUpdate:Lcom/mb/android/model/session/ProgressEvent;

    .line 6
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/4 v2, 0x1

    const-string v3, "Pause"

    invoke-direct {v0, v3, v2}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->Pause:Lcom/mb/android/model/session/ProgressEvent;

    .line 7
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/4 v3, 0x2

    const-string v4, "Unpause"

    invoke-direct {v0, v4, v3}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->Unpause:Lcom/mb/android/model/session/ProgressEvent;

    .line 8
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/4 v4, 0x3

    const-string v5, "VolumeChange"

    invoke-direct {v0, v5, v4}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->VolumeChange:Lcom/mb/android/model/session/ProgressEvent;

    .line 9
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/4 v5, 0x4

    const-string v6, "RepeatModeChange"

    invoke-direct {v0, v6, v5}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->RepeatModeChange:Lcom/mb/android/model/session/ProgressEvent;

    .line 10
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/4 v6, 0x5

    const-string v7, "AudioTrackChange"

    invoke-direct {v0, v7, v6}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->AudioTrackChange:Lcom/mb/android/model/session/ProgressEvent;

    .line 11
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/4 v7, 0x6

    const-string v8, "SubtitleTrackChange"

    invoke-direct {v0, v8, v7}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->SubtitleTrackChange:Lcom/mb/android/model/session/ProgressEvent;

    .line 12
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/4 v8, 0x7

    const-string v9, "PlaylistItemMove"

    invoke-direct {v0, v9, v8}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->PlaylistItemMove:Lcom/mb/android/model/session/ProgressEvent;

    .line 13
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/16 v9, 0x8

    const-string v10, "PlaylistItemRemove"

    invoke-direct {v0, v10, v9}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->PlaylistItemRemove:Lcom/mb/android/model/session/ProgressEvent;

    .line 14
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/16 v10, 0x9

    const-string v11, "PlaylistItemAdd"

    invoke-direct {v0, v11, v10}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->PlaylistItemAdd:Lcom/mb/android/model/session/ProgressEvent;

    .line 15
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/16 v11, 0xa

    const-string v12, "QualityChange"

    invoke-direct {v0, v12, v11}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->QualityChange:Lcom/mb/android/model/session/ProgressEvent;

    .line 16
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/16 v12, 0xb

    const-string v13, "StateChange"

    invoke-direct {v0, v13, v12}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->StateChange:Lcom/mb/android/model/session/ProgressEvent;

    .line 17
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/16 v13, 0xc

    const-string v14, "SubtitleOffsetChange"

    invoke-direct {v0, v14, v13}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->SubtitleOffsetChange:Lcom/mb/android/model/session/ProgressEvent;

    .line 18
    new-instance v0, Lcom/mb/android/model/session/ProgressEvent;

    const/16 v14, 0xd

    const-string v15, "PlaybackRateChange"

    invoke-direct {v0, v15, v14}, Lcom/mb/android/model/session/ProgressEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->PlaybackRateChange:Lcom/mb/android/model/session/ProgressEvent;

    const/16 v0, 0xe

    .line 3
    new-array v0, v0, [Lcom/mb/android/model/session/ProgressEvent;

    sget-object v15, Lcom/mb/android/model/session/ProgressEvent;->TimeUpdate:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v15, v0, v1

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->Pause:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->Unpause:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->VolumeChange:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->RepeatModeChange:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->AudioTrackChange:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->SubtitleTrackChange:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->PlaylistItemMove:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->PlaylistItemRemove:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v9

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->PlaylistItemAdd:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v10

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->QualityChange:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v11

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->StateChange:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v12

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->SubtitleOffsetChange:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v13

    sget-object v1, Lcom/mb/android/model/session/ProgressEvent;->PlaybackRateChange:Lcom/mb/android/model/session/ProgressEvent;

    aput-object v1, v0, v14

    sput-object v0, Lcom/mb/android/model/session/ProgressEvent;->$VALUES:[Lcom/mb/android/model/session/ProgressEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mb/android/model/session/ProgressEvent;
    .locals 1

    .line 3
    const-class v0, Lcom/mb/android/model/session/ProgressEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mb/android/model/session/ProgressEvent;

    return-object p0
.end method

.method public static values()[Lcom/mb/android/model/session/ProgressEvent;
    .locals 1

    .line 3
    sget-object v0, Lcom/mb/android/model/session/ProgressEvent;->$VALUES:[Lcom/mb/android/model/session/ProgressEvent;

    invoke-virtual {v0}, [Lcom/mb/android/model/session/ProgressEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mb/android/model/session/ProgressEvent;

    return-object v0
.end method
