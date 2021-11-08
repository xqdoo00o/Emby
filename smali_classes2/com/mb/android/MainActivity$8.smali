.class Lcom/mb/android/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity;->exitFullscreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/mb/android/MainActivity$8;->this$0:Lcom/mb/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 976
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/MainActivity$8;->this$0:Lcom/mb/android/MainActivity;

    invoke-virtual {v0}, Lcom/mb/android/MainActivity;->resetWindow()V

    .line 978
    iget-object v0, p0, Lcom/mb/android/MainActivity$8;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v0}, Lcom/mb/android/MainActivity;->access$1400(Lcom/mb/android/MainActivity;)V

    .line 979
    iget-object v0, p0, Lcom/mb/android/MainActivity$8;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v0}, Lcom/mb/android/MainActivity;->access$1500(Lcom/mb/android/MainActivity;)V

    .line 980
    iget-object v0, p0, Lcom/mb/android/MainActivity$8;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v0}, Lcom/mb/android/MainActivity;->access$000(Lcom/mb/android/MainActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
