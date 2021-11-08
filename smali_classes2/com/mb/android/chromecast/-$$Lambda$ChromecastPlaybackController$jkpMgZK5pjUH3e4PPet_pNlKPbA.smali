.class public final synthetic Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$jkpMgZK5pjUH3e4PPet_pNlKPbA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mb/android/chromecast/ChromecastPlaybackController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$jkpMgZK5pjUH3e4PPet_pNlKPbA;->f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    iput-object p2, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$jkpMgZK5pjUH3e4PPet_pNlKPbA;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$jkpMgZK5pjUH3e4PPet_pNlKPbA;->f$0:Lcom/mb/android/chromecast/ChromecastPlaybackController;

    iget-object v1, p0, Lcom/mb/android/chromecast/-$$Lambda$ChromecastPlaybackController$jkpMgZK5pjUH3e4PPet_pNlKPbA;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mb/android/chromecast/ChromecastPlaybackController;->lambda$sendMessage$0$ChromecastPlaybackController(Ljava/lang/String;)V

    return-void
.end method
