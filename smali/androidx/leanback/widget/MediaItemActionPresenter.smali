.class Landroidx/leanback/widget/MediaItemActionPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "MediaItemActionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/MediaItemActionPresenter$ViewHolder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Landroidx/leanback/widget/MediaItemActionPresenter$ViewHolder;

    .line 60
    check-cast p2, Landroidx/leanback/widget/MultiActionsProvider$MultiAction;

    .line 61
    invoke-virtual {p1}, Landroidx/leanback/widget/MediaItemActionPresenter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/leanback/widget/MultiActionsProvider$MultiAction;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 3

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/leanback/R$layout;->lb_row_media_item_action:I

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance v0, Landroidx/leanback/widget/MediaItemActionPresenter$ViewHolder;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/MediaItemActionPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method
