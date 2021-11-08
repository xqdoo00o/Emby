.class Lcom/mb/android/media/MediaService$5;
.super Landroid/content/BroadcastReceiver;
.source "MediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/MediaService;->registerMediaNotificationReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/MediaService;


# direct methods
.method constructor <init>(Lcom/mb/android/media/MediaService;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/mb/android/media/MediaService$5;->this$0:Lcom/mb/android/media/MediaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 688
    iget-object p1, p0, Lcom/mb/android/media/MediaService$5;->this$0:Lcom/mb/android/media/MediaService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mb/android/media/MediaService;->access$400(Lcom/mb/android/media/MediaService;Z)V

    return-void
.end method
