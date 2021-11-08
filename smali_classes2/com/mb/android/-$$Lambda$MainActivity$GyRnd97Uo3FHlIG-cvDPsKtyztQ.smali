.class public final synthetic Lcom/mb/android/-$$Lambda$MainActivity$GyRnd97Uo3FHlIG-cvDPsKtyztQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/MainActivity;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/MainActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/-$$Lambda$MainActivity$GyRnd97Uo3FHlIG-cvDPsKtyztQ;->f$0:Lcom/mb/android/MainActivity;

    iput-object p2, p0, Lcom/mb/android/-$$Lambda$MainActivity$GyRnd97Uo3FHlIG-cvDPsKtyztQ;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mb/android/-$$Lambda$MainActivity$GyRnd97Uo3FHlIG-cvDPsKtyztQ;->f$0:Lcom/mb/android/MainActivity;

    iget-object v1, p0, Lcom/mb/android/-$$Lambda$MainActivity$GyRnd97Uo3FHlIG-cvDPsKtyztQ;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/mb/android/MainActivity;->lambda$onAppReady$1$MainActivity(Landroid/content/Intent;)V

    return-void
.end method
