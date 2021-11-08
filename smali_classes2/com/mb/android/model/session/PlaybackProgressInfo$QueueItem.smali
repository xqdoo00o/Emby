.class public Lcom/mb/android/model/session/PlaybackProgressInfo$QueueItem;
.super Ljava/lang/Object;
.source "PlaybackProgressInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/model/session/PlaybackProgressInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueItem"
.end annotation


# instance fields
.field public Id:Ljava/lang/String;

.field public PlaylistItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
