.class Lcom/mb/android/chromecast/Chromecast$4;
.super Ljava/lang/Object;
.source "Chromecast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/chromecast/Chromecast;->onConnectedToSession(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mb/android/chromecast/Chromecast;


# direct methods
.method constructor <init>(Lcom/mb/android/chromecast/Chromecast;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/mb/android/chromecast/Chromecast$4;->this$0:Lcom/mb/android/chromecast/Chromecast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast$4;->this$0:Lcom/mb/android/chromecast/Chromecast;

    invoke-static {v0}, Lcom/mb/android/chromecast/Chromecast;->access$000(Lcom/mb/android/chromecast/Chromecast;)Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "urn:x-cast:com.connectsdk"

    .line 277
    iget-object v2, p0, Lcom/mb/android/chromecast/Chromecast$4;->this$0:Lcom/mb/android/chromecast/Chromecast;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/CastSession;->setMessageReceivedCallbacks(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast$4;->this$0:Lcom/mb/android/chromecast/Chromecast;

    const-string v1, "Unable to set up messaging channel with cast session"

    invoke-static {v0, v1}, Lcom/mb/android/chromecast/Chromecast;->access$200(Lcom/mb/android/chromecast/Chromecast;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
