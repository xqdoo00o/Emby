.class public Lcom/mb/android/model/apiclient/NativeCredentials;
.super Ljava/lang/Object;
.source "NativeCredentials.java"


# instance fields
.field private Servers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mb/android/model/apiclient/NativeCredentials;->Servers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getServers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/apiclient/ServerInfo;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/mb/android/model/apiclient/NativeCredentials;->Servers:Ljava/util/ArrayList;

    return-object v0
.end method
