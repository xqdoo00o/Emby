.class public final synthetic Lcom/mb/android/media/-$$Lambda$VideoManager$6RafJa4ITKzCZfT3mGFj4Ljqn6E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/Window;

.field private final synthetic f$1:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/media/-$$Lambda$VideoManager$6RafJa4ITKzCZfT3mGFj4Ljqn6E;->f$0:Landroid/view/Window;

    iput-object p2, p0, Lcom/mb/android/media/-$$Lambda$VideoManager$6RafJa4ITKzCZfT3mGFj4Ljqn6E;->f$1:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mb/android/media/-$$Lambda$VideoManager$6RafJa4ITKzCZfT3mGFj4Ljqn6E;->f$0:Landroid/view/Window;

    iget-object v1, p0, Lcom/mb/android/media/-$$Lambda$VideoManager$6RafJa4ITKzCZfT3mGFj4Ljqn6E;->f$1:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, v1}, Lcom/mb/android/media/VideoManager;->lambda$setBrightness$1(Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
