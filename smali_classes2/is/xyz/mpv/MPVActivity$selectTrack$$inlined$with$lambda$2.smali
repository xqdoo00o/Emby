.class final Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$2;
.super Ljava/lang/Object;
.source "MPVActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lis/xyz/mpv/MPVActivity;->selectTrack(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "onDismiss",
        "is/xyz/mpv/MPVActivity$selectTrack$1$3"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $selectedIndex$inlined:I

.field final synthetic $set$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $tracks$inlined:Ljava/util/List;

.field final synthetic $type$inlined:Ljava/lang/String;

.field final synthetic $wasPlayerPaused$inlined:Z

.field final synthetic this$0:Lis/xyz/mpv/MPVActivity;


# direct methods
.method constructor <init>(Lis/xyz/mpv/MPVActivity;Ljava/util/List;ILkotlin/jvm/functions/Function1;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$2;->this$0:Lis/xyz/mpv/MPVActivity;

    iput-object p2, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$2;->$tracks$inlined:Ljava/util/List;

    iput p3, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$2;->$selectedIndex$inlined:I

    iput-object p4, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$2;->$set$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$2;->$type$inlined:Ljava/lang/String;

    iput-boolean p6, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$2;->$wasPlayerPaused$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 521
    iget-boolean p1, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$2;->$wasPlayerPaused$inlined:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$2;->this$0:Lis/xyz/mpv/MPVActivity;

    sget v0, Lis/xyz/mpv/R$id;->player:I

    invoke-virtual {p1, v0}, Lis/xyz/mpv/MPVActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lis/xyz/mpv/MPVView;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lis/xyz/mpv/MPVView;->setPaused(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
