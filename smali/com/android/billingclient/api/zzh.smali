.class final Lcom/android/billingclient/api/zzh;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@4.0.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/android/billingclient/api/zzg;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzh;->zza:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/zzg;

    const/4 v0, 0x0

    .line 1
    invoke-direct {p1, p0, p2, v0}, Lcom/android/billingclient/api/zzg;-><init>(Lcom/android/billingclient/api/zzh;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzf;)V

    iput-object p1, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    return-void
.end method

.method static synthetic zza(Lcom/android/billingclient/api/zzh;)Lcom/android/billingclient/api/zzg;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    return-object p0
.end method


# virtual methods
.method final zzb()Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    .line 1
    invoke-static {v0}, Lcom/android/billingclient/api/zzg;->zza(Lcom/android/billingclient/api/zzg;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    return-object v0
.end method

.method final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    iget-object v1, p0, Lcom/android/billingclient/api/zzh;->zza:Landroid/content/Context;

    .line 1
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/zzg;->zzc(Landroid/content/Context;)V

    return-void
.end method

.method final zzd()V
    .locals 4

    iget-object v0, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    iget-object v1, p0, Lcom/android/billingclient/api/zzh;->zza:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 1
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/zzg;->zzb(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method
