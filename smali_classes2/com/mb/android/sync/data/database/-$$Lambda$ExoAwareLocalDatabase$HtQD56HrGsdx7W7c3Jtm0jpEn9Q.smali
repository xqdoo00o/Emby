.class public final synthetic Lcom/mb/android/sync/data/database/-$$Lambda$ExoAwareLocalDatabase$HtQD56HrGsdx7W7c3Jtm0jpEn9Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/offline/DownloadCursor;

.field private final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;Lcom/google/android/exoplayer2/offline/DownloadCursor;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/sync/data/database/-$$Lambda$ExoAwareLocalDatabase$HtQD56HrGsdx7W7c3Jtm0jpEn9Q;->f$0:Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;

    iput-object p2, p0, Lcom/mb/android/sync/data/database/-$$Lambda$ExoAwareLocalDatabase$HtQD56HrGsdx7W7c3Jtm0jpEn9Q;->f$1:Lcom/google/android/exoplayer2/offline/DownloadCursor;

    iput-object p3, p0, Lcom/mb/android/sync/data/database/-$$Lambda$ExoAwareLocalDatabase$HtQD56HrGsdx7W7c3Jtm0jpEn9Q;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mb/android/sync/data/database/-$$Lambda$ExoAwareLocalDatabase$HtQD56HrGsdx7W7c3Jtm0jpEn9Q;->f$0:Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;

    iget-object v1, p0, Lcom/mb/android/sync/data/database/-$$Lambda$ExoAwareLocalDatabase$HtQD56HrGsdx7W7c3Jtm0jpEn9Q;->f$1:Lcom/google/android/exoplayer2/offline/DownloadCursor;

    iget-object v2, p0, Lcom/mb/android/sync/data/database/-$$Lambda$ExoAwareLocalDatabase$HtQD56HrGsdx7W7c3Jtm0jpEn9Q;->f$2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/mb/android/sync/data/database/ExoAwareLocalDatabase;->lambda$removeStaleExoDownloads$0$ExoAwareLocalDatabase(Lcom/google/android/exoplayer2/offline/DownloadCursor;Ljava/util/ArrayList;)V

    return-void
.end method
