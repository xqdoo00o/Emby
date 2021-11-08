.class Lcom/google/android/exoplayer2/ext/libass/LibassRenderer$1;
.super Ljava/lang/Thread;
.source "LibassRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->render(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer$1;->this$0:Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer$1;->this$0:Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;->access$000(Lcom/google/android/exoplayer2/ext/libass/LibassRenderer;)V

    return-void
.end method
