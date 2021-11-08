.class Lcom/mb/android/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity;->handleSslError(Landroid/net/http/SslError;Lcom/mb/android/apiinteraction/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/MainActivity;

.field final synthetic val$response:Lcom/mb/android/apiinteraction/Response;


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity;Lcom/mb/android/apiinteraction/Response;)V
    .locals 0

    .line 1751
    iput-object p1, p0, Lcom/mb/android/MainActivity$12;->this$0:Lcom/mb/android/MainActivity;

    iput-object p2, p0, Lcom/mb/android/MainActivity$12;->val$response:Lcom/mb/android/apiinteraction/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1754
    iget-object p1, p0, Lcom/mb/android/MainActivity$12;->val$response:Lcom/mb/android/apiinteraction/Response;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
