.class public Lcom/mb/android/media/PlayQueueState;
.super Ljava/lang/Object;
.source "PlayQueueState.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public playQueueIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public playQueueIndex:I

.field public playbackPosition:J

.field public serverId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPlayQueue(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mb/android/media/PlayQueueState;->playQueueIds:Ljava/util/List;

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 19
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/mb/android/media/PlayQueueState;->serverId:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    array-length v1, v0

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 24
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/mb/android/media/PlayQueueState;->serverId:Ljava/lang/String;

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/mb/android/media/PlayQueueState;->playQueueIds:Ljava/util/List;

    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/mb/android/media/PlayQueueState;->playQueueIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x31

    if-le v0, v1, :cond_0

    :cond_2
    return-void
.end method
