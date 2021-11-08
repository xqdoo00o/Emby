.class Lcom/mb/android/sync/MediaSync$1$1;
.super Ljava/lang/Object;
.source "MediaSync.java"

# interfaces
.implements Lcom/mb/android/sync/ServerSync$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/sync/MediaSync$1;->syncDataNoCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mb/android/sync/MediaSync$1;


# direct methods
.method constructor <init>(Lcom/mb/android/sync/MediaSync$1;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/mb/android/sync/MediaSync$1$1;->this$1:Lcom/mb/android/sync/MediaSync$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
