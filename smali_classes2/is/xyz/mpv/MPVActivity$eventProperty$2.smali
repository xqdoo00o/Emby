.class final Lis/xyz/mpv/MPVActivity$eventProperty$2;
.super Ljava/lang/Object;
.source "MPVActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lis/xyz/mpv/MPVActivity;->eventProperty(Ljava/lang/String;Z)V
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
.field final synthetic $property:Ljava/lang/String;

.field final synthetic $value:Z

.field final synthetic this$0:Lis/xyz/mpv/MPVActivity;


# direct methods
.method constructor <init>(Lis/xyz/mpv/MPVActivity;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lis/xyz/mpv/MPVActivity$eventProperty$2;->this$0:Lis/xyz/mpv/MPVActivity;

    iput-object p2, p0, Lis/xyz/mpv/MPVActivity$eventProperty$2;->$property:Ljava/lang/String;

    iput-boolean p3, p0, Lis/xyz/mpv/MPVActivity$eventProperty$2;->$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 679
    iget-object v0, p0, Lis/xyz/mpv/MPVActivity$eventProperty$2;->this$0:Lis/xyz/mpv/MPVActivity;

    iget-object v1, p0, Lis/xyz/mpv/MPVActivity$eventProperty$2;->$property:Ljava/lang/String;

    iget-boolean v2, p0, Lis/xyz/mpv/MPVActivity$eventProperty$2;->$value:Z

    invoke-static {v0, v1, v2}, Lis/xyz/mpv/MPVActivity;->access$eventPropertyUi(Lis/xyz/mpv/MPVActivity;Ljava/lang/String;Z)V

    return-void
.end method
