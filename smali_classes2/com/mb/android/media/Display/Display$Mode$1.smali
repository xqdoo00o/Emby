.class final Lcom/mb/android/media/Display/Display$Mode$1;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/media/Display/Display$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mb/android/media/Display/Display$Mode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mb/android/media/Display/Display$Mode;
    .locals 2

    .line 147
    new-instance v0, Lcom/mb/android/media/Display/Display$Mode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mb/android/media/Display/Display$Mode;-><init>(Landroid/os/Parcel;Lcom/mb/android/media/Display/Display$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/mb/android/media/Display/Display$Mode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mb/android/media/Display/Display$Mode;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mb/android/media/Display/Display$Mode;
    .locals 0

    .line 152
    new-array p1, p1, [Lcom/mb/android/media/Display/Display$Mode;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/mb/android/media/Display/Display$Mode$1;->newArray(I)[Lcom/mb/android/media/Display/Display$Mode;

    move-result-object p1

    return-object p1
.end method
