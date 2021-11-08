.class final Lis/xyz/mpv/MPVActivity$event$1;
.super Ljava/lang/Object;
.source "MPVActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lis/xyz/mpv/MPVActivity;->event(I)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $eventId:I

.field final synthetic this$0:Lis/xyz/mpv/MPVActivity;


# direct methods
.method constructor <init>(Lis/xyz/mpv/MPVActivity;I)V
    .locals 0

    iput-object p1, p0, Lis/xyz/mpv/MPVActivity$event$1;->this$0:Lis/xyz/mpv/MPVActivity;

    iput p2, p0, Lis/xyz/mpv/MPVActivity$event$1;->$eventId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 711
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity$event$1;->this$0:Lis/xyz/mpv/MPVActivity;

    iget v1, p0, Lis/xyz/mpv/MPVActivity$event$1;->$eventId:I

    invoke-static {v0, v1}, Lis/xyz/mpv/MPVActivity;->access$eventUi(Lis/xyz/mpv/MPVActivity;I)V

    return-void
.end method
