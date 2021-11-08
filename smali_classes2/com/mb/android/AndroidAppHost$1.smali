.class Lcom/mb/android/AndroidAppHost$1;
.super Ljava/lang/Object;
.source "AndroidAppHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/AndroidAppHost;->setStatusBarForegroundColor(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/AndroidAppHost;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestedColor:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mb/android/AndroidAppHost;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/mb/android/AndroidAppHost$1;->this$0:Lcom/mb/android/AndroidAppHost;

    iput-object p2, p0, Lcom/mb/android/AndroidAppHost$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mb/android/AndroidAppHost$1;->val$requestedColor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/mb/android/AndroidAppHost$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 244
    iget-object v2, p0, Lcom/mb/android/AndroidAppHost$1;->val$requestedColor:Ljava/lang/String;

    const-string v3, "dark"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v1, -0x2001

    .line 252
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 255
    iget-object v1, p0, Lcom/mb/android/AndroidAppHost$1;->this$0:Lcom/mb/android/AndroidAppHost;

    invoke-static {v1}, Lcom/mb/android/AndroidAppHost;->access$000(Lcom/mb/android/AndroidAppHost;)Lcom/mb/android/model/logging/ILogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error in setStatusBarForegroundColor"

    invoke-interface {v1, v3, v0, v2}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
