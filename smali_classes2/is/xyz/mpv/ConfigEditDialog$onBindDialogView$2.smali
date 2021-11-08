.class final Lis/xyz/mpv/ConfigEditDialog$onBindDialogView$2;
.super Ljava/lang/Object;
.source "ConfigEditDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lis/xyz/mpv/ConfigEditDialog;->onBindDialogView(Landroid/view/View;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lis/xyz/mpv/ConfigEditDialog;


# direct methods
.method constructor <init>(Lis/xyz/mpv/ConfigEditDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lis/xyz/mpv/ConfigEditDialog$onBindDialogView$2;->this$0:Lis/xyz/mpv/ConfigEditDialog;

    iput-object p2, p0, Lis/xyz/mpv/ConfigEditDialog$onBindDialogView$2;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 38
    iget-object p1, p0, Lis/xyz/mpv/ConfigEditDialog$onBindDialogView$2;->$view:Landroid/view/View;

    const v0, 0x7f08003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById<EditText>(R.id.editText)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object p1, p0, Lis/xyz/mpv/ConfigEditDialog$onBindDialogView$2;->this$0:Lis/xyz/mpv/ConfigEditDialog;

    invoke-static {p1}, Lis/xyz/mpv/ConfigEditDialog;->access$getConfigFile$p(Lis/xyz/mpv/ConfigEditDialog;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lis/xyz/mpv/ConfigEditDialog$onBindDialogView$2;->this$0:Lis/xyz/mpv/ConfigEditDialog;

    invoke-static {v0}, Lis/xyz/mpv/ConfigEditDialog;->access$getConfigFile$p(Lis/xyz/mpv/ConfigEditDialog;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 43
    :goto_0
    iget-object p1, p0, Lis/xyz/mpv/ConfigEditDialog$onBindDialogView$2;->this$0:Lis/xyz/mpv/ConfigEditDialog;

    invoke-virtual {p1}, Lis/xyz/mpv/ConfigEditDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
