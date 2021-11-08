.class public final Lis/xyz/mpv/BackgroundPlaybackService$Companion;
.super Ljava/lang/Object;
.source "BackgroundPlaybackService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lis/xyz/mpv/BackgroundPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lis/xyz/mpv/BackgroundPlaybackService$Companion;",
        "",
        "()V",
        "NOTIFICATION_CHANNEL_ID",
        "",
        "getNOTIFICATION_CHANNEL_ID",
        "()Ljava/lang/String;",
        "NOTIFICATION_ID",
        "",
        "TAG",
        "thumbnail",
        "Landroid/graphics/Bitmap;",
        "getThumbnail",
        "()Landroid/graphics/Bitmap;",
        "setThumbnail",
        "(Landroid/graphics/Bitmap;)V",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lis/xyz/mpv/BackgroundPlaybackService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNOTIFICATION_CHANNEL_ID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 135
    invoke-static {}, Lis/xyz/mpv/BackgroundPlaybackService;->access$getNOTIFICATION_CHANNEL_ID$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getThumbnail()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 132
    invoke-static {}, Lis/xyz/mpv/BackgroundPlaybackService;->access$getThumbnail$cp()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 132
    invoke-static {p1}, Lis/xyz/mpv/BackgroundPlaybackService;->access$setThumbnail$cp(Landroid/graphics/Bitmap;)V

    return-void
.end method
