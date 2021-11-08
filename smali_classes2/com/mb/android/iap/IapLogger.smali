.class public Lcom/mb/android/iap/IapLogger;
.super Ljava/lang/Object;
.source "IapLogger.java"

# interfaces
.implements Ltv/emby/iap/ILogger;


# instance fields
.field private logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method public constructor <init>(Lcom/mb/android/model/logging/ILogger;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mb/android/iap/IapLogger;->logger:Lcom/mb/android/model/logging/ILogger;

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/mb/android/iap/IapLogger;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-interface {p1, p2, p3}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/mb/android/iap/IapLogger;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-interface {p1, p2, p3}, Lcom/mb/android/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/mb/android/iap/IapLogger;->logger:Lcom/mb/android/model/logging/ILogger;

    invoke-interface {p1, p2, p3}, Lcom/mb/android/model/logging/ILogger;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
