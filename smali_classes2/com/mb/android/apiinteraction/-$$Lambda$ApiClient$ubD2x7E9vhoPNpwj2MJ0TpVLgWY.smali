.class public final synthetic Lcom/mb/android/apiinteraction/-$$Lambda$ApiClient$ubD2x7E9vhoPNpwj2MJ0TpVLgWY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/apiinteraction/ApiClient;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/apiinteraction/-$$Lambda$ApiClient$ubD2x7E9vhoPNpwj2MJ0TpVLgWY;->f$0:Lcom/mb/android/apiinteraction/ApiClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mb/android/apiinteraction/-$$Lambda$ApiClient$ubD2x7E9vhoPNpwj2MJ0TpVLgWY;->f$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-virtual {v0}, Lcom/mb/android/apiinteraction/ApiClient;->lambda$tryBackgroundReconnect$0$ApiClient()V

    return-void
.end method
