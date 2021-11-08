.class public Lcom/mb/android/media/CarHelper;
.super Ljava/lang/Object;
.source "CarHelper.java"


# static fields
.field public static final ACTION_MEDIA_STATUS:Ljava/lang/String; = "com.google.android.gms.car.media.STATUS"

.field private static final AUTO_APP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.projection.gearhead"

.field public static final MEDIA_CONNECTED:Ljava/lang/String; = "media_connected"

.field public static final MEDIA_CONNECTION_STATUS:Ljava/lang/String; = "media_connection_status"

.field private static final SLOT_RESERVATION_QUEUE:Ljava/lang/String; = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_QUEUE"

.field private static final SLOT_RESERVATION_SKIP_TO_NEXT:Ljava/lang/String; = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

.field private static final SLOT_RESERVATION_SKIP_TO_PREV:Ljava/lang/String; = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCarUiMode(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "uimode"

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 80
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidCarPackage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.google.android.projection.gearhead"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setSlotReservationFlags(Landroid/os/Bundle;ZZZ)V
    .locals 2

    const-string v0, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_QUEUE"

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    const-string p1, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    if-eqz p3, :cond_1

    .line 61
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    const-string p1, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    if-eqz p2, :cond_2

    .line 66
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
