.class public Lcom/mb/android/model/devices/ContentUploadHistory;
.super Ljava/lang/Object;
.source "ContentUploadHistory.java"


# instance fields
.field private DeviceId:Ljava/lang/String;

.field private FilesUploaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mb/android/model/devices/ContentUploadHistory;->FilesUploaded:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mb/android/model/devices/ContentUploadHistory;->DeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilesUploaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/devices/LocalFileInfo;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/mb/android/model/devices/ContentUploadHistory;->FilesUploaded:Ljava/util/ArrayList;

    return-object v0
.end method
