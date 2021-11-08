.class public Lis/xyz/mpv/MPVFilePickerFragment;
.super Lis/xyz/filepicker/FilePickerFragment;
.source "MPVFilePickerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lis/xyz/filepicker/FilePickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public isBackTop()Z
    .locals 3

    .line 30
    iget-object v0, p0, Lis/xyz/mpv/MPVFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lis/xyz/mpv/MPVFilePickerFragment;->compareFiles(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onChangePath(Ljava/io/File;)V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lis/xyz/mpv/MPVFilePickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lis/xyz/mpv/MainActivity;

    invoke-virtual {v0}, Lis/xyz/mpv/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mpv :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClickCheckable(Landroid/view/View;Lis/xyz/filepicker/AbstractFilePickerFragment$FileViewHolder;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lis/xyz/filepicker/AbstractFilePickerFragment$FileViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lis/xyz/filepicker/AbstractFilePickerFragment<",
            "Ljava/io/File;",
            ">.FileViewHolder;)V"
        }
    .end annotation

    .line 20
    iget-object p1, p0, Lis/xyz/mpv/MPVFilePickerFragment;->mListener:Lis/xyz/filepicker/AbstractFilePickerFragment$OnFilePickedListener;

    iget-object p2, p2, Lis/xyz/filepicker/AbstractFilePickerFragment$FileViewHolder;->file:Ljava/lang/Object;

    check-cast p2, Ljava/io/File;

    invoke-interface {p1, p2}, Lis/xyz/filepicker/AbstractFilePickerFragment$OnFilePickedListener;->onFilePicked(Ljava/io/File;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onLongClickCheckable(Landroid/view/View;Lis/xyz/filepicker/AbstractFilePickerFragment$DirViewHolder;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lis/xyz/filepicker/AbstractFilePickerFragment$DirViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lis/xyz/filepicker/AbstractFilePickerFragment<",
            "Ljava/io/File;",
            ">.DirViewHolder;)Z"
        }
    .end annotation

    .line 25
    iget-object p1, p0, Lis/xyz/mpv/MPVFilePickerFragment;->mListener:Lis/xyz/filepicker/AbstractFilePickerFragment$OnFilePickedListener;

    iget-object p2, p2, Lis/xyz/filepicker/AbstractFilePickerFragment$DirViewHolder;->file:Ljava/lang/Object;

    check-cast p2, Ljava/io/File;

    invoke-interface {p1, p2}, Lis/xyz/filepicker/AbstractFilePickerFragment$OnFilePickedListener;->onDirPicked(Ljava/io/File;)V

    const/4 p1, 0x1

    return p1
.end method
