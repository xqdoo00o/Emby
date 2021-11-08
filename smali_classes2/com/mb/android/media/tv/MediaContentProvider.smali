.class public Lcom/mb/android/media/tv/MediaContentProvider;
.super Landroid/content/ContentProvider;
.source "MediaContentProvider.java"


# static fields
.field private static final CONTENT_AUTHORITY:Ljava/lang/String; = "com.mb.android.media"

.field private static final CURSOR_COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_SUGGEST:I = 0x3

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private final lock:Ljava/lang/Object;

.field private logger:Lcom/mb/android/model/logging/ILogger;

.field private mediaSource:Lcom/mb/android/media/MediaSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "suggest_intent_data_id"

    const-string v1, "suggest_text_1"

    const-string v2, "suggest_production_year"

    const-string v3, "suggest_result_card_image"

    const-string v4, "suggest_duration"

    const-string v5, "suggest_text_2"

    .line 22
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mb/android/media/tv/MediaContentProvider;->CURSOR_COLUMNS:[Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/mb/android/media/tv/MediaContentProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/mb/android/media/tv/MediaContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mb/android/media/tv/MediaContentProvider;->lock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/mb/android/media/tv/MediaContentProvider;)Lcom/mb/android/media/MediaSource;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mb/android/media/tv/MediaContentProvider;->mediaSource:Lcom/mb/android/media/MediaSource;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mb/android/media/tv/MediaContentProvider;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mb/android/media/tv/MediaContentProvider;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mb/android/media/tv/MediaContentProvider;)Lcom/mb/android/model/logging/ILogger;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mb/android/media/tv/MediaContentProvider;->logger:Lcom/mb/android/model/logging/ILogger;

    return-object p0
.end method

.method static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .line 52
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const/4 v1, 0x3

    const-string v2, "com.mb.android.media"

    const-string v3, "search_suggest_query"

    .line 55
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "search_suggest_query/*"

    .line 56
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getSuggestions(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/mb/android/media/tv/MediaContentProvider;->CURSOR_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/mb/android/media/tv/MediaContentProvider;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, p1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 98
    iget-object p1, p0, Lcom/mb/android/media/tv/MediaContentProvider;->mediaSource:Lcom/mb/android/media/MediaSource;

    new-instance v1, Lcom/mb/android/media/tv/MediaContentProvider$1;

    invoke-direct {v1, p0, v0}, Lcom/mb/android/media/tv/MediaContentProvider$1;-><init>(Lcom/mb/android/media/tv/MediaContentProvider;Landroid/database/MatrixCursor;)V

    invoke-virtual {p1, p2, v1}, Lcom/mb/android/media/MediaSource;->searchForItems(Ljava/lang/String;Lcom/mb/android/apiinteraction/Response;)V

    .line 125
    iget-object p1, p0, Lcom/mb/android/media/tv/MediaContentProvider;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 126
    :try_start_0
    iget-object p2, p0, Lcom/mb/android/media/tv/MediaContentProvider;->lock:Ljava/lang/Object;

    const-wide/16 v1, 0x2710

    invoke-virtual {p2, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 127
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 146
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 133
    sget-object v0, Lcom/mb/android/media/tv/MediaContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object p1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 152
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/mb/android/media/tv/MediaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/mb/android/logging/AppLogger;->getLogger(Landroid/content/Context;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    iput-object v1, p0, Lcom/mb/android/media/tv/MediaContentProvider;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 46
    new-instance v1, Lcom/mb/android/media/MediaSource;

    iget-object v2, p0, Lcom/mb/android/media/tv/MediaContentProvider;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-direct {v1, v0, v2}, Lcom/mb/android/media/MediaSource;-><init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V

    iput-object v1, p0, Lcom/mb/android/media/tv/MediaContentProvider;->mediaSource:Lcom/mb/android/media/MediaSource;

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/tv/MediaContentProvider;->contentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 66
    sget-object p2, Lcom/mb/android/media/tv/MediaContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-eqz p4, :cond_1

    .line 69
    array-length p5, p4

    if-lez p5, :cond_1

    .line 70
    aget-object p4, p4, p3

    const-string p5, "dummy"

    .line 71
    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    return-object p2

    .line 79
    :cond_0
    iget-object p5, p0, Lcom/mb/android/media/tv/MediaContentProvider;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TV search suggest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p3, [Ljava/lang/Object;

    invoke-interface {p5, v0, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/mb/android/media/tv/MediaContentProvider;->getSuggestions(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 83
    iget-object p4, p0, Lcom/mb/android/media/tv/MediaContentProvider;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p3, p3, [Ljava/lang/Object;

    const-string p5, "Timed out waiting for search results"

    invoke-interface {p4, p5, p1, p3}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object p2

    .line 76
    :cond_1
    iget-object p4, p0, Lcom/mb/android/media/tv/MediaContentProvider;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TV search empty selectionArgs for URI: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Aborting..."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p4, p1, p3}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 89
    :cond_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 159
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
