.class public final Lis/xyz/mpv/VersionInfoDialog;
.super Landroid/preference/DialogPreference;
.source "VersionInfoDialog.kt"

# interfaces
.implements Lis/xyz/mpv/LogObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B/\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000cH\u0014J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0018H\u0014R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lis/xyz/mpv/VersionInfoDialog;",
        "Landroid/preference/DialogPreference;",
        "Lis/xyz/mpv/LogObserver;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "myView",
        "Landroid/view/View;",
        "versionText",
        "",
        "logMessage",
        "",
        "prefix",
        "level",
        "text",
        "onBindDialogView",
        "view",
        "onDialogClosed",
        "positiveResult",
        "",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private myView:Landroid/view/View;

.field private versionText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lis/xyz/mpv/VersionInfoDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lis/xyz/mpv/VersionInfoDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lis/xyz/mpv/VersionInfoDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lis/xyz/mpv/VersionInfoDialog;->setPersistent(Z)V

    const p1, 0x7f0a003a

    .line 18
    invoke-virtual {p0, p1}, Lis/xyz/mpv/VersionInfoDialog;->setDialogLayoutResource(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 12
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const p3, 0x1010091

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 14
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lis/xyz/mpv/VersionInfoDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getVersionText$p(Lis/xyz/mpv/VersionInfoDialog;)Ljava/lang/String;
    .locals 1

    .line 10
    iget-object p0, p0, Lis/xyz/mpv/VersionInfoDialog;->versionText:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "versionText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setVersionText$p(Lis/xyz/mpv/VersionInfoDialog;Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lis/xyz/mpv/VersionInfoDialog;->versionText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public logMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cplayer"

    .line 41
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x32

    if-ne p2, p1, :cond_2

    .line 44
    iget-object p1, p0, Lis/xyz/mpv/VersionInfoDialog;->versionText:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p2, "versionText"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lis/xyz/mpv/VersionInfoDialog;->versionText:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 v0, 0x0

    const-string v1, "List of enabled features:"

    .line 45
    invoke-static {p3, v1, p1, p2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 47
    move-object p1, p0

    check-cast p1, Lis/xyz/mpv/LogObserver;

    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->removeLogObserver(Lis/xyz/mpv/LogObserver;)V

    .line 48
    iget-object p1, p0, Lis/xyz/mpv/VersionInfoDialog;->myView:Landroid/view/View;

    if-nez p1, :cond_3

    const-string p2, "myView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const p2, 0x7f080054

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 49
    invoke-virtual {p0}, Lis/xyz/mpv/VersionInfoDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Lis/xyz/mpv/SettingsActivity;

    new-instance p3, Lis/xyz/mpv/VersionInfoDialog$logMessage$1;

    invoke-direct {p3, p0, p1}, Lis/xyz/mpv/VersionInfoDialog$logMessage$1;-><init>(Lis/xyz/mpv/VersionInfoDialog;Landroid/widget/TextView;)V

    check-cast p3, Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Lis/xyz/mpv/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type `is`.xyz.mpv.SettingsActivity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 26
    iput-object p1, p0, Lis/xyz/mpv/VersionInfoDialog;->myView:Landroid/view/View;

    const-string p1, "mpv-android 2019-04-18-alpha / 15 (debug)\n"

    .line 28
    iput-object p1, p0, Lis/xyz/mpv/VersionInfoDialog;->versionText:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lis/xyz/mpv/VersionInfoDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->create(Landroid/content/Context;)V

    .line 31
    move-object p1, p0

    check-cast p1, Lis/xyz/mpv/LogObserver;

    invoke-static {p1}, Lis/xyz/mpv/MPVLib;->addLogObserver(Lis/xyz/mpv/LogObserver;)V

    .line 32
    invoke-static {}, Lis/xyz/mpv/MPVLib;->init()V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 37
    invoke-static {}, Lis/xyz/mpv/MPVLib;->destroy()V

    return-void
.end method
