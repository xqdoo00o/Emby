.class final Lis/xyz/mpv/SettingsActivity$Companion$sBindPreferenceSummaryToValueListener$1;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lis/xyz/mpv/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsActivity.kt\nis/xyz/mpv/SettingsActivity$Companion$sBindPreferenceSummaryToValueListener$1\n*L\n1#1,221:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "preference",
        "Landroid/preference/Preference;",
        "kotlin.jvm.PlatformType",
        "value",
        "",
        "onPreferenceChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lis/xyz/mpv/SettingsActivity$Companion$sBindPreferenceSummaryToValueListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lis/xyz/mpv/SettingsActivity$Companion$sBindPreferenceSummaryToValueListener$1;

    invoke-direct {v0}, Lis/xyz/mpv/SettingsActivity$Companion$sBindPreferenceSummaryToValueListener$1;-><init>()V

    sput-object v0, Lis/xyz/mpv/SettingsActivity$Companion$sBindPreferenceSummaryToValueListener$1;->INSTANCE:Lis/xyz/mpv/SettingsActivity$Companion$sBindPreferenceSummaryToValueListener$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 169
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 171
    instance-of v0, p1, Landroid/preference/ListPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 174
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 177
    :goto_0
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 182
    :cond_1
    instance-of v0, p1, Lis/xyz/mpv/SummaryEditTextPreference;

    if-eqz v0, :cond_3

    .line 183
    check-cast p1, Lis/xyz/mpv/SummaryEditTextPreference;

    invoke-virtual {p1}, Lis/xyz/mpv/SummaryEditTextPreference;->getFormatString()Ljava/lang/String;

    move-result-object p1

    .line 184
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "%s"

    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    array-length p2, v0

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "preference"

    .line 189
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return v1
.end method
