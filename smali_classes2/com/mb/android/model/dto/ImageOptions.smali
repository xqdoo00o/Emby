.class public Lcom/mb/android/model/dto/ImageOptions;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# instance fields
.field private AddPlayedIndicator:Z

.field private BackgroundColor:Ljava/lang/String;

.field private CropWhitespace:Ljava/lang/Boolean;

.field private EnableImageEnhancers:Z

.field private Height:Ljava/lang/Integer;

.field private ImageIndex:Ljava/lang/Integer;

.field private ImageType:Lcom/mb/android/model/entities/ImageType;

.field private MaxHeight:Ljava/lang/Integer;

.field private MaxWidth:Ljava/lang/Integer;

.field private PercentPlayed:Ljava/lang/Integer;

.field private Quality:Ljava/lang/Integer;

.field private Tag:Ljava/lang/String;

.field private UnPlayedCount:Ljava/lang/Integer;

.field private Width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Lcom/mb/android/model/dto/ImageOptions;->getImageType()Lcom/mb/android/model/entities/ImageType;

    invoke-static {}, Lcom/mb/android/model/entities/ImageType;->values()[Lcom/mb/android/model/entities/ImageType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->ImageType:Lcom/mb/android/model/entities/ImageType;

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, v0}, Lcom/mb/android/model/dto/ImageOptions;->setEnableImageEnhancers(Z)V

    return-void
.end method


# virtual methods
.method public final getAddPlayedIndicator()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/mb/android/model/dto/ImageOptions;->AddPlayedIndicator:Z

    return v0
.end method

.method public final getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->BackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getCropWhitespace()Ljava/lang/Boolean;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->CropWhitespace:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableImageEnhancers()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/mb/android/model/dto/ImageOptions;->EnableImageEnhancers:Z

    return v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->Height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImageIndex()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->ImageIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImageType()Lcom/mb/android/model/entities/ImageType;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->ImageType:Lcom/mb/android/model/entities/ImageType;

    return-object v0
.end method

.method public final getMaxHeight()Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->MaxHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxWidth()Ljava/lang/Integer;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->MaxWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPercentPlayed()Ljava/lang/Integer;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->PercentPlayed:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getQuality()Ljava/lang/Integer;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->Quality:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnPlayedCount()Ljava/lang/Integer;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->UnPlayedCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mb/android/model/dto/ImageOptions;->Width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAddPlayedIndicator(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/mb/android/model/dto/ImageOptions;->AddPlayedIndicator:Z

    return-void
.end method

.method public final setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->BackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public final setCropWhitespace(Ljava/lang/Boolean;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->CropWhitespace:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableImageEnhancers(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/mb/android/model/dto/ImageOptions;->EnableImageEnhancers:Z

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->Height:Ljava/lang/Integer;

    return-void
.end method

.method public final setImageIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->ImageIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setImageType(Lcom/mb/android/model/entities/ImageType;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->ImageType:Lcom/mb/android/model/entities/ImageType;

    return-void
.end method

.method public final setMaxHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->MaxHeight:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->MaxWidth:Ljava/lang/Integer;

    return-void
.end method

.method public final setPercentPlayed(Ljava/lang/Integer;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->PercentPlayed:Ljava/lang/Integer;

    return-void
.end method

.method public final setQuality(Ljava/lang/Integer;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->Quality:Ljava/lang/Integer;

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->Tag:Ljava/lang/String;

    return-void
.end method

.method public final setUnPlayedCount(Ljava/lang/Integer;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->UnPlayedCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mb/android/model/dto/ImageOptions;->Width:Ljava/lang/Integer;

    return-void
.end method
