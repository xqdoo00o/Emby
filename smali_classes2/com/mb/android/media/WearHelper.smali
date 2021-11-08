.class public Lcom/mb/android/media/WearHelper;
.super Ljava/lang/Object;
.source "WearHelper.java"


# static fields
.field public static final EXTRA_BACKGROUND_COLOR_FROM_THEME:Ljava/lang/String; = "android.support.wearable.media.extra.BACKGROUND_COLOR_FROM_THEME"

.field public static final EXTRA_CUSTOM_ACTION_SHOW_ON_WEAR:Ljava/lang/String; = "android.support.wearable.media.extra.CUSTOM_ACTION_SHOW_ON_WEAR"

.field public static final EXTRA_RESERVE_SLOT_SKIP_TO_NEXT:Ljava/lang/String; = "android.support.wearable.media.extra.RESERVE_SLOT_SKIP_TO_NEXT"

.field public static final EXTRA_RESERVE_SLOT_SKIP_TO_PREVIOUS:Ljava/lang/String; = "android.support.wearable.media.extra.RESERVE_SLOT_SKIP_TO_PREVIOUS"

.field private static final WEAR_APP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.wearable.app"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidWearCompanionPackage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.google.android.wearable.app"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setShowCustomActionOnWear(Landroid/os/Bundle;Z)V
    .locals 1

    const-string v0, "android.support.wearable.media.extra.CUSTOM_ACTION_SHOW_ON_WEAR"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setSlotReservationFlags(Landroid/os/Bundle;ZZ)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "android.support.wearable.media.extra.RESERVE_SLOT_SKIP_TO_PREVIOUS"

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    const-string p2, "android.support.wearable.media.extra.RESERVE_SLOT_SKIP_TO_NEXT"

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static setUseBackgroundFromTheme(Landroid/os/Bundle;Z)V
    .locals 1

    const-string v0, "android.support.wearable.media.extra.BACKGROUND_COLOR_FROM_THEME"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
