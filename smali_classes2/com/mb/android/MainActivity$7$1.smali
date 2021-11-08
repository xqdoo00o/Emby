.class Lcom/mb/android/MainActivity$7$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mb/android/MainActivity$7;


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity$7;)V
    .locals 0

    .line 935
    iput-object p1, p0, Lcom/mb/android/MainActivity$7$1;->this$1:Lcom/mb/android/MainActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 941
    iget-object p1, p0, Lcom/mb/android/MainActivity$7$1;->this$1:Lcom/mb/android/MainActivity$7;

    iget-object p1, p1, Lcom/mb/android/MainActivity$7;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$1500(Lcom/mb/android/MainActivity;)V

    .line 942
    iget-object p1, p0, Lcom/mb/android/MainActivity$7$1;->this$1:Lcom/mb/android/MainActivity$7;

    iget-object p1, p1, Lcom/mb/android/MainActivity$7;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {p1}, Lcom/mb/android/MainActivity;->access$000(Lcom/mb/android/MainActivity;)V

    :cond_0
    return-void
.end method
