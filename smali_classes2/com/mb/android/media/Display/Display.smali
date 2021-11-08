.class public Lcom/mb/android/media/Display/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/Display/Display$Mode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeInstance(IIIF)Lcom/mb/android/media/Display/Display$Mode;
    .locals 1

    .line 22
    new-instance v0, Lcom/mb/android/media/Display/Display$Mode;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mb/android/media/Display/Display$Mode;-><init>(IIIF)V

    return-object v0
.end method
