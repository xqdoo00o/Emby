.class final Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MPVActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lis/xyz/mpv/MPVActivity$TrackData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lis/xyz/mpv/MPVActivity$TrackData;",
        "invoke",
        "is/xyz/mpv/MPVActivity$selectTrack$1$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $trackId:I

.field final synthetic this$0:Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;


# direct methods
.method constructor <init>(Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;I)V
    .locals 0

    iput-object p1, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1$1;->this$0:Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;

    iput p2, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1$1;->$trackId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lis/xyz/mpv/MPVActivity$TrackData;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 519
    new-instance v0, Lis/xyz/mpv/MPVActivity$TrackData;

    iget v1, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1$1;->$trackId:I

    iget-object v2, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1$1;->this$0:Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;

    iget-object v2, v2, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;->$type$inlined:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lis/xyz/mpv/MPVActivity$TrackData;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1$1;->invoke()Lis/xyz/mpv/MPVActivity$TrackData;

    move-result-object v0

    return-object v0
.end method
