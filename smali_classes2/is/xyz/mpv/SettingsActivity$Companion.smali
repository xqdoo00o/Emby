.class public final Lis/xyz/mpv/SettingsActivity$Companion;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lis/xyz/mpv/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lis/xyz/mpv/SettingsActivity$Companion;",
        "",
        "()V",
        "sBindPreferenceSummaryToValueListener",
        "Landroid/preference/Preference$OnPreferenceChangeListener;",
        "bindPreferenceSummaryToValue",
        "",
        "preference",
        "Landroid/preference/Preference;",
        "isXLargeTablet",
        "",
        "context",
        "Landroid/content/Context;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lis/xyz/mpv/SettingsActivity$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$bindPreferenceSummaryToValue(Lis/xyz/mpv/SettingsActivity$Companion;Landroid/preference/Preference;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lis/xyz/mpv/SettingsActivity$Companion;->bindPreferenceSummaryToValue(Landroid/preference/Preference;)V

    return-void
.end method

.method public static final synthetic access$isXLargeTablet(Lis/xyz/mpv/SettingsActivity$Companion;Landroid/content/Context;)Z
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lis/xyz/mpv/SettingsActivity$Companion;->isXLargeTablet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final bindPreferenceSummaryToValue(Landroid/preference/Preference;)V
    .locals 2

    .line 213
    invoke-static {}, Lis/xyz/mpv/SettingsActivity;->access$getSBindPreferenceSummaryToValueListener$cp()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    invoke-static {}, Lis/xyz/mpv/SettingsActivity;->access$getSBindPreferenceSummaryToValueListener$cp()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    return-void
.end method

.method private final isXLargeTablet(Landroid/content/Context;)Z
    .locals 1

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "context.resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
