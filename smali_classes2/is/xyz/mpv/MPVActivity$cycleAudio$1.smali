.class final Lis/xyz/mpv/MPVActivity$cycleAudio$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MPVActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lis/xyz/mpv/MPVActivity;->cycleAudio()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lis/xyz/mpv/MPVActivity$TrackData;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lis/xyz/mpv/MPVActivity;


# direct methods
.method constructor <init>(Lis/xyz/mpv/MPVActivity;)V
    .locals 0

    iput-object p1, p0, Lis/xyz/mpv/MPVActivity$cycleAudio$1;->this$0:Lis/xyz/mpv/MPVActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lis/xyz/mpv/MPVActivity$TrackData;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 498
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity$cycleAudio$1;->this$0:Lis/xyz/mpv/MPVActivity;

    sget v1, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {v0, v1}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MPVView;

    invoke-virtual {v0}, Lis/xyz/mpv/MPVView;->cycleAudio()V

    new-instance v0, Lis/xyz/mpv/MPVActivity$TrackData;

    iget-object v1, p0, Lis/xyz/mpv/MPVActivity$cycleAudio$1;->this$0:Lis/xyz/mpv/MPVActivity;

    sget v2, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {v1, v2}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lis/xyz/mpv/MPVView;

    invoke-virtual {v1}, Lis/xyz/mpv/MPVView;->getAid()I

    move-result v1

    const-string v2, "audio"

    invoke-direct {v0, v1, v2}, Lis/xyz/mpv/MPVActivity$TrackData;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lis/xyz/mpv/MPVActivity$cycleAudio$1;->invoke()Lis/xyz/mpv/MPVActivity$TrackData;

    move-result-object v0

    return-object v0
.end method
