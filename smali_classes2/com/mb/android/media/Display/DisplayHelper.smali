.class public Lcom/mb/android/media/Display/DisplayHelper;
.super Ljava/lang/Object;
.source "DisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/mb/android/model/logging/ILogger;

.field private mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

.field private final mHelper:Lcom/mb/android/media/Display/UhdHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mb/android/model/logging/ILogger;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Lcom/mb/android/media/Display/Display$Mode;

    iput-object v0, p0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    .line 30
    iput-object p1, p0, Lcom/mb/android/media/Display/DisplayHelper;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 32
    new-instance p2, Lcom/mb/android/media/Display/UhdHelper;

    invoke-direct {p2, p1}, Lcom/mb/android/media/Display/UhdHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mb/android/media/Display/DisplayHelper;->mHelper:Lcom/mb/android/media/Display/UhdHelper;

    return-void
.end method

.method private findBestDisplayMode(Ljava/lang/Float;Ljava/lang/Integer;Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;)Lcom/mb/android/media/Display/Display$Mode;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 94
    iget-object v2, v0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    if-nez p1, :cond_0

    goto/16 :goto_b

    :cond_0
    const/16 v2, 0x780

    if-eqz p2, :cond_2

    .line 95
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p2

    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    sget-object v4, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->Resolution:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    if-ne v1, v4, :cond_3

    return-object v3

    .line 97
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 100
    :goto_1
    sget-object v4, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->Both:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    const/4 v5, 0x2

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v1, v4, :cond_d

    .line 103
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 104
    iget-object v4, v0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const-string v10, "*** source rate for double comparison: %d"

    invoke-interface {v4, v10, v9}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v4, v0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    array-length v9, v4

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_5

    aget-object v12, v4, v11

    .line 106
    invoke-virtual {v12}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v13

    mul-float v13, v13, v6

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    if-ne v13, v1, :cond_4

    .line 107
    invoke-virtual {v12}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v13

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-gt v13, v14, :cond_4

    return-object v12

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 111
    iget-object v4, v0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v7

    const-string v11, "*** source rate for comparison: %d"

    invoke-interface {v4, v11, v9}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v4, v0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    array-length v9, v4

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v9, :cond_8

    aget-object v12, v4, v11

    .line 113
    invoke-virtual {v12}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v13

    mul-float v13, v13, v6

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    if-eq v13, v1, :cond_6

    sub-int v13, v1, v13

    .line 114
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    const-wide v15, 0x3fc5c28f5c28f5c3L    # 0.17

    cmpg-double v17, v13, v15

    if-gez v17, :cond_7

    :cond_6
    invoke-virtual {v12}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v13

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-gt v13, v14, :cond_7

    return-object v12

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 119
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 120
    iget-object v4, v0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const-string v9, "*** source rate for single comparison: %d"

    invoke-interface {v4, v9, v6}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v4, v0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    array-length v6, v4

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_a

    aget-object v11, v4, v9

    .line 122
    invoke-virtual {v11}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v12

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-nez v12, :cond_9

    invoke-virtual {v11}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v12

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-gt v12, v13, :cond_9

    return-object v11

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 127
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 128
    iget-object v4, v0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v4, v10, v5}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v4, v0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    array-length v5, v4

    :goto_5
    if-ge v7, v5, :cond_c

    aget-object v6, v4, v7

    .line 130
    invoke-virtual {v6}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v8

    int-to-float v9, v1

    cmpl-float v8, v8, v9

    if-nez v8, :cond_b

    invoke-virtual {v6}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v8, v9, :cond_b

    return-object v6

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    return-object v3

    .line 134
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/mb/android/media/Display/DisplayHelper;->getCurrentDisplayMode()Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v4

    if-nez v4, :cond_e

    return-object v3

    .line 137
    :cond_e
    sget-object v9, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->Resolution:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    if-ne v1, v9, :cond_11

    .line 139
    iget-object v1, v0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    const-string v6, "*** Searching for best resolution only with rate %s.  Requested resolution: %s"

    invoke-interface {v1, v6, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v1, v0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    array-length v5, v1

    :goto_6
    if-ge v7, v5, :cond_10

    aget-object v6, v1, v7

    .line 141
    invoke-virtual {v6}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v8

    invoke-virtual {v4}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_f

    invoke-virtual {v6}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v8, v9, :cond_f

    return-object v6

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_10
    return-object v3

    .line 150
    :cond_11
    iget-object v1, v0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v2, v9, v7

    aput-object p1, v9, v8

    const-string v2, "*** Searching for best rate only with resolution %s.  Requested rate: %s"

    invoke-interface {v1, v2, v9}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 152
    iget-object v2, v0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    array-length v8, v2

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v8, :cond_13

    aget-object v10, v2, v9

    .line 153
    invoke-virtual {v10}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v11

    mul-float v11, v11, v6

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 154
    invoke-virtual {v10}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v12

    invoke-virtual {v4}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v13

    if-gt v12, v13, :cond_12

    if-ne v11, v1, :cond_12

    return-object v10

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 159
    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 160
    iget-object v2, v0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    array-length v8, v2

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_15

    aget-object v10, v2, v9

    .line 161
    invoke-virtual {v10}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v11

    mul-float v11, v11, v6

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 162
    invoke-virtual {v10}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v12

    invoke-virtual {v4}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v13

    if-gt v12, v13, :cond_14

    if-ne v11, v1, :cond_14

    return-object v10

    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 167
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 168
    iget-object v2, v0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    array-length v6, v2

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_17

    aget-object v9, v2, v8

    .line 169
    invoke-virtual {v9}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v10

    invoke-virtual {v4}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v11

    if-gt v10, v11, :cond_16

    invoke-virtual {v9}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v10

    int-to-float v11, v1

    cmpl-float v10, v10, v11

    if-nez v10, :cond_16

    return-object v9

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 174
    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 175
    iget-object v2, v0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    array-length v5, v2

    :goto_a
    if-ge v7, v5, :cond_19

    aget-object v6, v2, v7

    .line 176
    invoke-virtual {v6}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v8

    invoke-virtual {v4}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalWidth()I

    move-result v9

    if-gt v8, v9, :cond_18

    invoke-virtual {v6}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v8

    int-to-float v9, v1

    cmpl-float v8, v8, v9

    if-nez v8, :cond_18

    return-object v6

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_19
    :goto_b
    return-object v3
.end method

.method public static getDisplayModeName(Lcom/mb/android/media/Display/Display$Mode;)Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%.2f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildCurrentDisplayOptions(Lcom/mb/android/model/entities/MediaStream;Landroid/view/Menu;)V
    .locals 16

    move-object/from16 v0, p2

    .line 46
    invoke-virtual/range {p0 .. p1}, Lcom/mb/android/media/Display/DisplayHelper;->getCurrentBestDisplayMode(Lcom/mb/android/model/entities/MediaStream;)Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v1

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/mb/android/media/Display/DisplayHelper;->getCurrentDisplayMode()Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v2

    move-object/from16 v3, p0

    .line 49
    iget-object v4, v3, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    array-length v5, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ge v7, v5, :cond_2

    aget-object v11, v4, v7

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1}, Lcom/mb/android/media/Display/Display$Mode;->getModeId()I

    move-result v12

    invoke-virtual {v11}, Lcom/mb/android/media/Display/Display$Mode;->getModeId()I

    move-result v13

    if-ne v12, v13, :cond_0

    const-string v12, " * "

    goto :goto_1

    :cond_0
    const-string v12, ""

    .line 54
    :goto_1
    invoke-virtual {v11}, Lcom/mb/android/media/Display/Display$Mode;->getModeId()I

    move-result v13

    add-int/lit8 v14, v8, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/mb/android/media/Display/DisplayHelper;->getDisplayModeName(Lcom/mb/android/media/Display/Display$Mode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v9, v13, v8, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v2, :cond_1

    invoke-virtual {v11}, Lcom/mb/android/media/Display/Display$Mode;->getModeId()I

    move-result v8

    invoke-virtual {v2}, Lcom/mb/android/media/Display/Display$Mode;->getModeId()I

    move-result v9

    if-ne v8, v9, :cond_1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    add-int/lit8 v7, v7, 0x1

    move v8, v14

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 57
    invoke-interface {v0, v9, v10, v6}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    return-void
.end method

.method public getCurrentBestDisplayMode(Lcom/mb/android/model/entities/MediaStream;)Lcom/mb/android/media/Display/Display$Mode;
    .locals 2

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getType()Lcom/mb/android/model/entities/MediaStreamType;

    move-result-object v0

    sget-object v1, Lcom/mb/android/model/entities/MediaStreamType;->Video:Lcom/mb/android/model/entities/MediaStreamType;

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getRealFrameRate()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mb/android/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->Both:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    invoke-direct {p0, v0, p1, v1}, Lcom/mb/android/media/Display/DisplayHelper;->findBestDisplayMode(Ljava/lang/Float;Ljava/lang/Integer;Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;)Lcom/mb/android/media/Display/Display$Mode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentDisplayMode()Lcom/mb/android/media/Display/Display$Mode;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/mb/android/media/Display/DisplayHelper;->mHelper:Lcom/mb/android/media/Display/UhdHelper;

    invoke-virtual {v0}, Lcom/mb/android/media/Display/UhdHelper;->getMode()Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDisplayModeName()Ljava/lang/String;
    .locals 4

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/mb/android/media/Display/DisplayHelper;->getCurrentDisplayMode()Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%.2f"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDisplayModes()V
    .locals 8

    .line 65
    iget-object v0, p0, Lcom/mb/android/media/Display/DisplayHelper;->mHelper:Lcom/mb/android/media/Display/UhdHelper;

    invoke-virtual {v0}, Lcom/mb/android/media/Display/UhdHelper;->getSupportedModes()[Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    .line 66
    iget-object v0, p0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcom/mb/android/media/Display/DisplayHelper$1;

    invoke-direct {v1, p0}, Lcom/mb/android/media/Display/DisplayHelper$1;-><init>(Lcom/mb/android/media/Display/DisplayHelper;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 78
    iget-object v0, p0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "** Available display refresh rates:"

    invoke-interface {v0, v3, v2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/mb/android/media/Display/DisplayHelper;->mDisplayModes:[Lcom/mb/android/media/Display/Display$Mode;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 80
    iget-object v5, p0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const-string v4, "%s/%s"

    invoke-interface {v5, v4, v6}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerModeChangeListener(Lcom/mb/android/media/Display/UhdHelperListener;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/mb/android/media/Display/DisplayHelper;->mHelper:Lcom/mb/android/media/Display/UhdHelper;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/Display/UhdHelper;->registerModeChangeListener(Lcom/mb/android/media/Display/UhdHelperListener;)V

    return-void
.end method

.method public setBestRefreshRate(Landroid/view/Window;Lcom/mb/android/model/entities/MediaStream;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 193
    iget-object p1, p0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "Null video stream attempting to set refresh rate"

    invoke-interface {p1, v1, p2}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/mb/android/media/Display/DisplayHelper;->getCurrentDisplayMode()Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v1

    .line 198
    sget-object v2, Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;->Both:Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;

    .line 199
    invoke-virtual {p2}, Lcom/mb/android/model/entities/MediaStream;->getRealFrameRate()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mb/android/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lcom/mb/android/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_1
    const/16 v4, 0x500

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lcom/mb/android/media/Display/DisplayHelper;->findBestDisplayMode(Ljava/lang/Float;Ljava/lang/Integer;Lcom/mb/android/media/Display/DisplayHelper$SwitchMode;)Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 201
    iget-object p2, p0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "*** Best refresh mode is: %s/%s"

    invoke-interface {p2, v6, v5}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-virtual {v1}, Lcom/mb/android/media/Display/Display$Mode;->getModeId()I

    move-result p2

    invoke-virtual {v2}, Lcom/mb/android/media/Display/Display$Mode;->getModeId()I

    move-result v5

    if-eq p2, v5, :cond_2

    .line 203
    iget-object p2, p0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/mb/android/media/Display/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1}, Lcom/mb/android/media/Display/Display$Mode;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "*** Attempting to change refresh rate from %s/%s"

    invoke-interface {p2, v0, v4}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v2}, Lcom/mb/android/media/Display/Display$Mode;->getModeId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/mb/android/media/Display/DisplayHelper;->setRefreshRate(Landroid/view/Window;I)V

    return v3

    .line 207
    :cond_2
    iget-object p1, p0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "Display is already in best mode"

    invoke-interface {p1, v1, p2}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 211
    :cond_3
    iget-object p1, p0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mb/android/model/entities/MediaStream;->getRealFrameRate()Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "*** Unable to find display mode for refresh rate: %s"

    invoke-interface {p1, p2, v1}, Lcom/mb/android/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public setRefreshRate(Landroid/view/Window;I)V
    .locals 2

    const/4 v0, 0x0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/mb/android/media/Display/DisplayHelper;->mHelper:Lcom/mb/android/media/Display/UhdHelper;

    invoke-virtual {v1, p1, p2, v0}, Lcom/mb/android/media/Display/UhdHelper;->setPreferredDisplayModeId(Landroid/view/Window;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    iget-object p2, p0, Lcom/mb/android/media/Display/DisplayHelper;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error setting refresh rate"

    invoke-interface {p2, v1, p1, v0}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public supportsDisplayModeSwitching()Z
    .locals 3

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/mb/android/media/Display/DisplayHelper;->mHelper:Lcom/mb/android/media/Display/UhdHelper;

    invoke-virtual {v0}, Lcom/mb/android/media/Display/UhdHelper;->getSupportedModes()[Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mb/android/media/Display/DisplayHelper;->mHelper:Lcom/mb/android/media/Display/UhdHelper;

    invoke-virtual {v0}, Lcom/mb/android/media/Display/UhdHelper;->getSupportedModes()[Lcom/mb/android/media/Display/Display$Mode;

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public unregisterDisplayModeChangeListener(Lcom/mb/android/media/Display/UhdHelperListener;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/mb/android/media/Display/DisplayHelper;->mHelper:Lcom/mb/android/media/Display/UhdHelper;

    invoke-virtual {v0, p1}, Lcom/mb/android/media/Display/UhdHelper;->unregisterDisplayModeChangeListener(Lcom/mb/android/media/Display/UhdHelperListener;)V

    return-void
.end method
