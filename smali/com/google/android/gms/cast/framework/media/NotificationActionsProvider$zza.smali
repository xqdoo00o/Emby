.class final Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;
.super Lcom/google/android/gms/cast/framework/media/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private final synthetic zzno:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;->zzno:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/zzd$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;Lcom/google/android/gms/cast/framework/media/zzp;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;-><init>(Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;)V

    return-void
.end method


# virtual methods
.method public final getCompactViewActionIndices()[I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;->zzno:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;->getCompactViewActionIndices()[I

    move-result-object v0

    return-object v0
.end method

.method public final getNotificationActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/media/NotificationAction;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;->zzno:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;->getNotificationActions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzax()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;->zzno:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()I
    .locals 1

    const v0, 0xbdfcc1

    return v0
.end method
