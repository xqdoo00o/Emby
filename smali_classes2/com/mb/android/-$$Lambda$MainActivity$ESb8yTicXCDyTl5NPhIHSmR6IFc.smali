.class public final synthetic Lcom/mb/android/-$$Lambda$MainActivity$ESb8yTicXCDyTl5NPhIHSmR6IFc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/-$$Lambda$MainActivity$ESb8yTicXCDyTl5NPhIHSmR6IFc;->f$0:Lcom/mb/android/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mb/android/-$$Lambda$MainActivity$ESb8yTicXCDyTl5NPhIHSmR6IFc;->f$0:Lcom/mb/android/MainActivity;

    invoke-virtual {v0}, Lcom/mb/android/MainActivity;->lambda$destroyVideoSurface$2$MainActivity()V

    return-void
.end method
