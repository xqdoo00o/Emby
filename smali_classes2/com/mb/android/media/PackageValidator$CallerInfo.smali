.class final Lcom/mb/android/media/PackageValidator$CallerInfo;
.super Ljava/lang/Object;
.source "PackageValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/PackageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallerInfo"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final packageName:Ljava/lang/String;

.field final release:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/mb/android/media/PackageValidator$CallerInfo;->name:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lcom/mb/android/media/PackageValidator$CallerInfo;->packageName:Ljava/lang/String;

    .line 175
    iput-boolean p3, p0, Lcom/mb/android/media/PackageValidator$CallerInfo;->release:Z

    return-void
.end method
