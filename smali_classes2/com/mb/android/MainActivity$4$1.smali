.class Lcom/mb/android/MainActivity$4$1;
.super Lcom/mb/android/apiinteraction/Response;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/MainActivity$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mb/android/apiinteraction/Response<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mb/android/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/mb/android/MainActivity$4;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/mb/android/MainActivity$4$1;->this$1:Lcom/mb/android/MainActivity$4;

    invoke-direct {p0}, Lcom/mb/android/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;)V
    .locals 0

    .line 550
    invoke-super {p0, p1}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 547
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mb/android/MainActivity$4$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method
