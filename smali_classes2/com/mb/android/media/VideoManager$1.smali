.class Lcom/mb/android/media/VideoManager$1;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/media/VideoManager;->initMediaRouter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/media/VideoManager;


# direct methods
.method constructor <init>(Lcom/mb/android/media/VideoManager;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/mb/android/media/VideoManager$1;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 166
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$1;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {p1}, Lcom/mb/android/media/VideoManager;->access$100(Lcom/mb/android/media/VideoManager;)Lcom/mb/android/model/logging/ILogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRoutePresentationDisplayChanged: info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_1

    .line 169
    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 171
    :goto_0
    iget-object p2, p0, Lcom/mb/android/media/VideoManager$1;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {p2}, Lcom/mb/android/media/VideoManager;->access$200(Lcom/mb/android/media/VideoManager;)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 172
    iget-object p1, p0, Lcom/mb/android/media/VideoManager$1;->this$0:Lcom/mb/android/media/VideoManager;

    invoke-static {p1}, Lcom/mb/android/media/VideoManager;->access$300(Lcom/mb/android/media/VideoManager;)V

    :cond_1
    return-void
.end method
