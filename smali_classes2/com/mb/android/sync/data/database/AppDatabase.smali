.class abstract Lcom/mb/android/sync/data/database/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/mb/android/sync/data/database/OfflineAction;,
        Lcom/mb/android/sync/data/database/LocalItem;
    }
    version = 0x3
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/mb/android/sync/data/database/Converters;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "offline_action_db"

.field private static instance:Lcom/mb/android/sync/data/database/AppDatabase;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mb/android/sync/data/database/AppDatabase;
    .locals 6

    const-class v0, Lcom/mb/android/sync/data/database/AppDatabase;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/mb/android/sync/data/database/AppDatabase;->instance:Lcom/mb/android/sync/data/database/AppDatabase;

    if-nez v1, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/mb/android/sync/data/database/AppDatabase;

    const-string v2, "offline_action_db"

    invoke-static {p0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/room/migration/Migration;

    const/4 v2, 0x0

    new-instance v3, Lcom/mb/android/sync/data/database/AppDatabase$1;

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/mb/android/sync/data/database/AppDatabase$1;-><init>(II)V

    aput-object v3, v1, v2

    .line 25
    invoke-virtual {p0, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/mb/android/sync/data/database/AppDatabase;

    sput-object p0, Lcom/mb/android/sync/data/database/AppDatabase;->instance:Lcom/mb/android/sync/data/database/AppDatabase;

    .line 36
    :cond_0
    sget-object p0, Lcom/mb/android/sync/data/database/AppDatabase;->instance:Lcom/mb/android/sync/data/database/AppDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract localItemDao()Lcom/mb/android/sync/data/database/LocalItemDao;
.end method

.method public abstract offlineActionDao()Lcom/mb/android/sync/data/database/OfflineActionDao;
.end method
