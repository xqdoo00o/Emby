.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubSettingViewHolder"
.end annotation


# instance fields
.field private final checkView:Landroid/view/View;

.field private final textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V
    .locals 0

    .line 1992
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 1993
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1994
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    .line 1995
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_check:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    .line 1996
    new-instance p1, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$SubSettingViewHolder$lj4jjQcAD_NfS8WqXpffQOUS1ME;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$SubSettingViewHolder$lj4jjQcAD_NfS8WqXpffQOUS1ME;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 1988
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;)Landroid/view/View;
    .locals 0

    .line 1988
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$new$0$StyledPlayerControlView$SubSettingViewHolder(Landroid/view/View;)V
    .locals 1

    .line 1996
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;I)V

    return-void
.end method
