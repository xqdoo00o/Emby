.class public Lcom/mb/android/apiinteraction/ApiClient$GetItemsResponse;
.super Ljava/lang/Object;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/apiinteraction/ApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetItemsResponse"
.end annotation


# instance fields
.field public Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mb/android/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation
.end field

.field public TotalRecordCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
