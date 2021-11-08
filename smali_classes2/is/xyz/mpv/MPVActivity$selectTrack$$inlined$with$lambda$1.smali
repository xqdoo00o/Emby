.class final Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "MPVActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "item",
        "",
        "onClick",
        "is/xyz/mpv/MPVActivity$selectTrack$1$2"
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

    iput-object p1, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;->this$0:Lis/xyz/mpv/MPVActivity;

    iput-object p2, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;->$tracks$inlined:Ljava/util/List;

    iput p3, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;->$selectedIndex$inlined:I

    iput-object p4, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;->$set$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;->$type$inlined:Ljava/lang/String;

    iput-boolean p6, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;->$wasPlayerPaused$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 515
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;->$tracks$inlined:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lis/xyz/mpv/MPVView$Track;

    invoke-virtual {p2}, Lis/xyz/mpv/MPVView$Track;->getMpvId()I

    move-result p2

    .line 517
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;->$set$inlined:Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 519
    iget-object p1, p0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;->this$0:Lis/xyz/mpv/MPVActivity;

    new-instance v0, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1$1;

    invoke-direct {v0, p0, p2}, Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1$1;-><init>(Lis/xyz/mpv/MPVActivity$selectTrack$$inlined$with$lambda$1;I)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lis/xyz/mpv/MPVActivity;->access$trackSwitchNotification(Lis/xyz/mpv/MPVActivity;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
