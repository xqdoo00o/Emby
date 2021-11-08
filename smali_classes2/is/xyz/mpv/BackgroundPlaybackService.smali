.class public final Lis/xyz/mpv/BackgroundPlaybackService;
.super Landroid/app/Service;
.source "BackgroundPlaybackService.kt"

# interfaces
.implements Lis/xyz/mpv/EventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lis/xyz/mpv/BackgroundPlaybackService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackgroundPlaybackService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackgroundPlaybackService.kt\nis/xyz/mpv/BackgroundPlaybackService\n*L\n1#1,138:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000  2\u00020\u00012\u00020\u0002:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\tH\u0016J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005H\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0010H\u0016J\u0008\u0010\u001c\u001a\u00020\u0010H\u0016J \u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0012H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lis/xyz/mpv/BackgroundPlaybackService;",
        "Landroid/app/Service;",
        "Lis/xyz/mpv/EventObserver;",
        "()V",
        "cachedMediaAlbum",
        "",
        "cachedMediaArtist",
        "cachedMediaTitle",
        "shouldShowPrevNext",
        "",
        "buildNotification",
        "Landroid/app/Notification;",
        "createButtonIntent",
        "Landroid/app/PendingIntent;",
        "action",
        "event",
        "",
        "eventId",
        "",
        "eventProperty",
        "property",
        "value",
        "",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "flags",
        "startId",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lis/xyz/mpv/BackgroundPlaybackService$Companion;

# The value of this static final field might be set in the static constructor
.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "background_playback"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final NOTIFICATION_ID:I = 0x3039

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "mpv"

.field private static thumbnail:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private cachedMediaAlbum:Ljava/lang/String;

.field private cachedMediaArtist:Ljava/lang/String;

.field private cachedMediaTitle:Ljava/lang/String;

.field private shouldShowPrevNext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lis/xyz/mpv/BackgroundPlaybackService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lis/xyz/mpv/BackgroundPlaybackService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lis/xyz/mpv/BackgroundPlaybackService;->Companion:Lis/xyz/mpv/BackgroundPlaybackService$Companion;

    const/16 v0, 0x3039

    .line 134
    sput v0, Lis/xyz/mpv/BackgroundPlaybackService;->NOTIFICATION_ID:I

    const-string v0, "background_playback"

    .line 135
    sput-object v0, Lis/xyz/mpv/BackgroundPlaybackService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    const-string v0, "mpv"

    .line 136
    sput-object v0, Lis/xyz/mpv/BackgroundPlaybackService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNOTIFICATION_CHANNEL_ID$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lis/xyz/mpv/BackgroundPlaybackService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getThumbnail$cp()Landroid/graphics/Bitmap;
    .locals 1

    .line 20
    sget-object v0, Lis/xyz/mpv/BackgroundPlaybackService;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final synthetic access$setThumbnail$cp(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 20
    sput-object p0, Lis/xyz/mpv/BackgroundPlaybackService;->thumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final buildNotification()Landroid/app/Notification;
    .locals 6

    .line 40
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lis/xyz/mpv/MPVActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 41
    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 43
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 44
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lis/xyz/mpv/BackgroundPlaybackService;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const/4 v1, -0x1

    .line 49
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x1

    .line 50
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 51
    iget-object v5, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaTitle:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v5, 0x7f070056

    .line 52
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 54
    sget-object v0, Lis/xyz/mpv/BackgroundPlaybackService;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 56
    :cond_1
    iget-object v0, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaArtist:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_6

    iget-object v0, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaAlbum:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_6

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_7

    .line 58
    :cond_6
    iget-object v0, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaArtist:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_9

    .line 59
    iget-object v0, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaAlbum:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_7

    .line 60
    :cond_9
    iget-object v0, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaAlbum:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const/4 v2, 0x1

    :cond_b
    if-nez v2, :cond_c

    .line 61
    iget-object v0, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaArtist:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 62
    :cond_c
    :goto_7
    iget-boolean v0, p0, Lis/xyz/mpv/BackgroundPlaybackService;->shouldShowPrevNext:Z

    if-eqz v0, :cond_d

    const v0, 0x7f07005e

    const-string v1, "Prev"

    .line 64
    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "ACTION_PREV"

    invoke-direct {p0, v2}, Lis/xyz/mpv/BackgroundPlaybackService;->createButtonIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const v0, 0x7f07005c

    const-string v1, "Next"

    .line 65
    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "ACTION_NEXT"

    invoke-direct {p0, v2}, Lis/xyz/mpv/BackgroundPlaybackService;->createButtonIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 66
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Style;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 69
    :cond_d
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private final createButtonIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is.xyz.mpv."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "PendingIntent.getBroadcast(this, 0, intent, 0)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public event(I)V
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lis/xyz/mpv/BackgroundPlaybackService;->stopSelf()V

    :cond_0
    return-void
.end method

.method public eventProperty(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public eventProperty(Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "property"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public eventProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x54f4d4d1

    if-eq v0, v1, :cond_2

    const v1, 0x9d8b789

    if-eq v0, v1, :cond_1

    const v1, 0x319ac96d

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "metadata/by-key/Artist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 114
    iput-object p2, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaArtist:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "metadata/by-key/Album"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 115
    iput-object p2, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaAlbum:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "media-title"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 113
    iput-object p2, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaTitle:Ljava/lang/String;

    :goto_0
    const-string p1, "notification"

    .line 119
    invoke-virtual {p0, p1}, Lis/xyz/mpv/BackgroundPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/app/NotificationManager;

    .line 120
    sget p2, Lis/xyz/mpv/BackgroundPlaybackService;->NOTIFICATION_ID:I

    invoke-direct {p0}, Lis/xyz/mpv/BackgroundPlaybackService;->buildNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 119
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public eventProperty(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "property"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 22
    move-object v0, p0

    check-cast v0, Lis/xyz/mpv/EventObserver;

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->addObserver(Lis/xyz/mpv/EventObserver;)V

    const/4 v0, 0x1

    const-string v1, "media-title"

    .line 23
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->observeProperty(Ljava/lang/String;I)V

    const-string v1, "metadata/by-key/Artist"

    .line 24
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->observeProperty(Ljava/lang/String;I)V

    const-string v1, "metadata/by-key/Album"

    .line 25
    invoke-static {v1, v0}, Lis/xyz/mpv/MPVLib;->observeProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 96
    move-object v0, p0

    check-cast v0, Lis/xyz/mpv/EventObserver;

    invoke-static {v0}, Lis/xyz/mpv/MPVLib;->removeObserver(Lis/xyz/mpv/EventObserver;)V

    .line 98
    sget-object v0, Lis/xyz/mpv/BackgroundPlaybackService;->TAG:Ljava/lang/String;

    const-string v1, "BackgroundPlaybackService: destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object p1, Lis/xyz/mpv/BackgroundPlaybackService;->TAG:Ljava/lang/String;

    const-string p2, "BackgroundPlaybackService: starting"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "media-title"

    .line 77
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaTitle:Ljava/lang/String;

    const-string p1, "metadata/by-key/Artist"

    .line 78
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaArtist:Ljava/lang/String;

    const-string p1, "metadata/by-key/Album"

    .line 79
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lis/xyz/mpv/BackgroundPlaybackService;->cachedMediaAlbum:Ljava/lang/String;

    const-string p1, "playlist-count"

    .line 80
    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->getPropertyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p3, 0x1

    if-le p1, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Lis/xyz/mpv/BackgroundPlaybackService;->shouldShowPrevNext:Z

    .line 84
    invoke-direct {p0}, Lis/xyz/mpv/BackgroundPlaybackService;->buildNotification()Landroid/app/Notification;

    move-result-object p1

    .line 85
    sget p3, Lis/xyz/mpv/BackgroundPlaybackService;->NOTIFICATION_ID:I

    invoke-virtual {p0, p3, p1}, Lis/xyz/mpv/BackgroundPlaybackService;->startForeground(ILandroid/app/Notification;)V

    const-string p1, "vid"

    const-string p3, "no"

    .line 89
    invoke-static {p1, p3}, Lis/xyz/mpv/MPVLib;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "pause"

    invoke-static {p2, p1}, Lis/xyz/mpv/MPVLib;->setPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 p1, 0x2

    return p1
.end method
