.class public Lcom/mb/android/ShortcutHelper;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/ShortcutHelper$AppShortcutInfo;
    }
.end annotation


# instance fields
.field private jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/serialization/IJsonSerializer;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mb/android/ShortcutHelper;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/mb/android/ShortcutHelper;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    return-void
.end method


# virtual methods
.method public clearAppShortcuts()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mb/android/ShortcutHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 71
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    return-void
.end method

.method public setAppShortcuts(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/mb/android/ShortcutHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    const/4 v1, 0x0

    .line 38
    new-array v2, v1, [Lcom/mb/android/ShortcutHelper$AppShortcutInfo;

    .line 39
    iget-object v3, p0, Lcom/mb/android/ShortcutHelper;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/mb/android/ShortcutHelper$AppShortcutInfo;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 45
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/mb/android/ShortcutHelper;->mContext:Landroid/content/Context;

    const-class v7, Lcom/mb/android/MainActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "ACTION_APPSHORTCUT"

    .line 46
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v4}, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "shortcutid"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    new-instance v6, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v7, p0, Lcom/mb/android/ShortcutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v4}, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v6

    .line 51
    invoke-virtual {v4}, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->getLongLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/mb/android/ShortcutHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f0801c2

    .line 52
    invoke-static {v6, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    .line 53
    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    .line 54
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 56
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    return-void
.end method
