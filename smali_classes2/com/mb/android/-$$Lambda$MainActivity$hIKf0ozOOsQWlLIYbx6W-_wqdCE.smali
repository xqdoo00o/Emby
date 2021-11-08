.class public final synthetic Lcom/mb/android/-$$Lambda$MainActivity$hIKf0ozOOsQWlLIYbx6W-_wqdCE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/-$$Lambda$MainActivity$hIKf0ozOOsQWlLIYbx6W-_wqdCE;->f$0:Lcom/mb/android/MainActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/mb/android/-$$Lambda$MainActivity$hIKf0ozOOsQWlLIYbx6W-_wqdCE;->f$0:Lcom/mb/android/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/mb/android/MainActivity;->lambda$initSystemUi$0$MainActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
