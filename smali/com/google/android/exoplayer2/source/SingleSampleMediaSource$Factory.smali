.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private sampleTimeUs:J

.field private tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private trackId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 62
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    .line 154
    new-instance v13, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    iget-object v2, v1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->trackId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    :goto_0
    new-instance v3, Lcom/google/android/exoplayer2/MediaItem$Subtitle;

    iget-object v4, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 157
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    move-object v6, p1

    invoke-direct {v3, p1, v4, v5, v1}, Lcom/google/android/exoplayer2/MediaItem$Subtitle;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->sampleTimeUs:J

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v1, v13

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$Subtitle;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;JJLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;)V

    return-object v13
.end method

.method public createMediaSource(Lcom/google/android/exoplayer2/MediaItem$Subtitle;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
    .locals 14

    move-object v0, p0

    .line 140
    new-instance v13, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->trackId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->sampleTimeUs:J

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v1, v13

    move-object v3, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$Subtitle;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;JJLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;)V

    return-object v13
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public setSampleTimeUs(J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .locals 0

    .line 128
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->sampleTimeUs:J

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->trackId:Ljava/lang/String;

    return-object p0
.end method

.method public setTreatLoadErrorsAsEndOfStream(Z)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    return-object p0
.end method
