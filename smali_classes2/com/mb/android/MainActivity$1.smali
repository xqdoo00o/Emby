.class Lcom/mb/android/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity;->requestApplyInsets()V
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

    .line 380
    iput-object p1, p0, Lcom/mb/android/MainActivity$1;->this$0:Lcom/mb/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/mb/android/MainActivity$1;->this$0:Lcom/mb/android/MainActivity;

    invoke-static {v0}, Lcom/mb/android/MainActivity;->access$000(Lcom/mb/android/MainActivity;)V

    return-void
.end method
