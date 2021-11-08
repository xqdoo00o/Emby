.class Lcom/mb/android/ShortcutHelper$AppShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/ShortcutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppShortcutInfo"
.end annotation


# instance fields
.field public Icon:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public Label:Ljava/lang/String;

.field public LongLabel:Ljava/lang/String;

.field final synthetic this$0:Lcom/mb/android/ShortcutHelper;


# direct methods
.method private constructor <init>(Lcom/mb/android/ShortcutHelper;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->this$0:Lcom/mb/android/ShortcutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->Icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->Label:Ljava/lang/String;

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->LongLabel:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->Icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->Id:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->Label:Ljava/lang/String;

    return-void
.end method

.method public setLongLabel(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/mb/android/ShortcutHelper$AppShortcutInfo;->LongLabel:Ljava/lang/String;

    return-void
.end method
