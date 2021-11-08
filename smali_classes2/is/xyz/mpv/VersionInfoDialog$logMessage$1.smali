.class final Lis/xyz/mpv/VersionInfoDialog$logMessage$1;
.super Ljava/lang/Object;
.source "VersionInfoDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lis/xyz/mpv/VersionInfoDialog;->logMessage(Ljava/lang/String;ILjava/lang/String;)V
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
.field final synthetic $field:Landroid/widget/TextView;

.field final synthetic this$0:Lis/xyz/mpv/VersionInfoDialog;


# direct methods
.method constructor <init>(Lis/xyz/mpv/VersionInfoDialog;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lis/xyz/mpv/VersionInfoDialog$logMessage$1;->this$0:Lis/xyz/mpv/VersionInfoDialog;

    iput-object p2, p0, Lis/xyz/mpv/VersionInfoDialog$logMessage$1;->$field:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 50
    iget-object v0, p0, Lis/xyz/mpv/VersionInfoDialog$logMessage$1;->$field:Landroid/widget/TextView;

    const-string v1, "field"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lis/xyz/mpv/VersionInfoDialog$logMessage$1;->this$0:Lis/xyz/mpv/VersionInfoDialog;

    invoke-static {v2}, Lis/xyz/mpv/VersionInfoDialog;->access$getVersionText$p(Lis/xyz/mpv/VersionInfoDialog;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lis/xyz/mpv/VersionInfoDialog$logMessage$1;->$field:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    check-cast v1, Landroid/text/method/MovementMethod;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
