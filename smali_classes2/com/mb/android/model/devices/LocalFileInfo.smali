.class public Lcom/mb/android/model/devices/LocalFileInfo;
.super Ljava/lang/Object;
.source "LocalFileInfo.java"


# instance fields
.field private Album:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private MimeType:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private size:J

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlbum()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mb/android/model/devices/LocalFileInfo;->Album:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mb/android/model/devices/LocalFileInfo;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mb/android/model/devices/LocalFileInfo;->MimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mb/android/model/devices/LocalFileInfo;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/mb/android/model/devices/LocalFileInfo;->size:J

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mb/android/model/devices/LocalFileInfo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/mb/android/model/devices/LocalFileInfo;->Album:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/mb/android/model/devices/LocalFileInfo;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mb/android/model/devices/LocalFileInfo;->MimeType:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/mb/android/model/devices/LocalFileInfo;->Name:Ljava/lang/String;

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/mb/android/model/devices/LocalFileInfo;->size:J

    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mb/android/model/devices/LocalFileInfo;->uri:Landroid/net/Uri;

    return-void
.end method
