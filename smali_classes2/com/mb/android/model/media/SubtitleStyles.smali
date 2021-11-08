.class public Lcom/mb/android/model/media/SubtitleStyles;
.super Ljava/lang/Object;
.source "SubtitleStyles.java"


# instance fields
.field private dropShadow:Lcom/mb/android/model/media/SubtitleDropShadow;

.field private textBackground:Ljava/lang/String;

.field private textBackgroundOpacity:F

.field private textColor:Ljava/lang/String;

.field private textSize:Lcom/mb/android/model/media/SubtitleTextSize;

.field private verticalPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->verticalPosition:I

    .line 5
    sget-object v0, Lcom/mb/android/model/media/SubtitleTextSize;->Normal:Lcom/mb/android/model/media/SubtitleTextSize;

    iput-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textSize:Lcom/mb/android/model/media/SubtitleTextSize;

    .line 6
    sget-object v0, Lcom/mb/android/model/media/SubtitleDropShadow;->DropShadow:Lcom/mb/android/model/media/SubtitleDropShadow;

    iput-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->dropShadow:Lcom/mb/android/model/media/SubtitleDropShadow;

    const-string v0, "transparent"

    .line 7
    iput-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textBackground:Ljava/lang/String;

    const-string v0, "#FFFFFF"

    .line 8
    iput-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textColor:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textBackgroundOpacity:F

    return-void
.end method


# virtual methods
.method public getDropShadow()Lcom/mb/android/model/media/SubtitleDropShadow;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->dropShadow:Lcom/mb/android/model/media/SubtitleDropShadow;

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/mb/android/model/media/SubtitleDropShadow;->DropShadow:Lcom/mb/android/model/media/SubtitleDropShadow;

    iput-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->dropShadow:Lcom/mb/android/model/media/SubtitleDropShadow;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->dropShadow:Lcom/mb/android/model/media/SubtitleDropShadow;

    return-object v0
.end method

.method public getTextBackground()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textBackground:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "transparent"

    .line 43
    iput-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textBackground:Ljava/lang/String;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBackgroundOpacity()Ljava/lang/Float;
    .locals 1

    .line 64
    iget v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textBackgroundOpacity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "#FFFFFF"

    .line 54
    iput-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textColor:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()Lcom/mb/android/model/media/SubtitleTextSize;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textSize:Lcom/mb/android/model/media/SubtitleTextSize;

    if-nez v0, :cond_0

    .line 21
    sget-object v0, Lcom/mb/android/model/media/SubtitleTextSize;->Normal:Lcom/mb/android/model/media/SubtitleTextSize;

    iput-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textSize:Lcom/mb/android/model/media/SubtitleTextSize;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->textSize:Lcom/mb/android/model/media/SubtitleTextSize;

    return-object v0
.end method

.method public getVerticalPosition()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/mb/android/model/media/SubtitleStyles;->verticalPosition:I

    return v0
.end method

.method public setDropShadow(Lcom/mb/android/model/media/SubtitleDropShadow;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mb/android/model/media/SubtitleStyles;->dropShadow:Lcom/mb/android/model/media/SubtitleDropShadow;

    return-void
.end method

.method public setTextBackground(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mb/android/model/media/SubtitleStyles;->textBackground:Ljava/lang/String;

    return-void
.end method

.method public setTextBackgroundOpacity(Ljava/lang/Float;)V
    .locals 0

    .line 68
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/mb/android/model/media/SubtitleStyles;->textBackgroundOpacity:F

    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mb/android/model/media/SubtitleStyles;->textColor:Ljava/lang/String;

    return-void
.end method

.method public setTextSize(Lcom/mb/android/model/media/SubtitleTextSize;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mb/android/model/media/SubtitleStyles;->textSize:Lcom/mb/android/model/media/SubtitleTextSize;

    return-void
.end method

.method public setVerticalPosition(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/mb/android/model/media/SubtitleStyles;->verticalPosition:I

    return-void
.end method
