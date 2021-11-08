.class Lcom/mb/android/chromecast/Chromecast$1;
.super Ljava/lang/Object;
.source "Chromecast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mb/android/chromecast/Chromecast;->endSession()V
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

    .line 111
    iput-object p1, p0, Lcom/mb/android/chromecast/Chromecast$1;->this$0:Lcom/mb/android/chromecast/Chromecast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/mb/android/chromecast/Chromecast$1;->this$0:Lcom/mb/android/chromecast/Chromecast;

    invoke-static {v0}, Lcom/mb/android/chromecast/Chromecast;->access$000(Lcom/mb/android/chromecast/Chromecast;)Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->endCurrentSession(Z)V

    return-void
.end method
