.class public Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;
.super Ljava/lang/Object;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mb/android/apiinteraction/ApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddressTestInfo"
.end annotation


# instance fields
.field public Address:Ljava/lang/String;

.field public ConnectionMode:Lcom/mb/android/model/apiclient/ConnectionMode;

.field final synthetic this$0:Lcom/mb/android/apiinteraction/ApiClient;


# direct methods
.method public constructor <init>(Lcom/mb/android/apiinteraction/ApiClient;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/mb/android/apiinteraction/ApiClient$AddressTestInfo;->this$0:Lcom/mb/android/apiinteraction/ApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
