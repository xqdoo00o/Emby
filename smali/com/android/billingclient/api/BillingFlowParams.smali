.class public Lcom/android/billingclient/api/BillingFlowParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@4.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;,
        Lcom/android/billingclient/api/BillingFlowParams$Builder;,
        Lcom/android/billingclient/api/BillingFlowParams$ProrationMode;
    }
.end annotation


# static fields
.field public static final EXTRA_PARAM_KEY_ACCOUNT_ID:Ljava/lang/String; = "accountId"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_PARAM_KEY_OLD_SKUS:Ljava/lang/String; = "skusToReplace"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_PARAM_KEY_OLD_SKU_PURCHASE_TOKEN:Ljava/lang/String; = "oldSkuPurchaseToken"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_PARAM_KEY_REPLACE_SKUS_PRORATION_MODE:Ljava/lang/String; = "prorationMode"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final EXTRA_PARAM_KEY_VR:Ljava/lang/String; = "vr"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private zza:Z

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:I

.field private zzf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zze:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzai;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zze:I

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/android/billingclient/api/BillingFlowParams$Builder;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;-><init>(Lcom/android/billingclient/api/zzai;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/android/billingclient/api/BillingFlowParams;I)I
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zze:I

    return p1
.end method

.method static synthetic zzc(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzb:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzd(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zze(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzi(Lcom/android/billingclient/api/BillingFlowParams;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzf:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic zzk(Lcom/android/billingclient/api/BillingFlowParams;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzg:Z

    return p1
.end method

.method static synthetic zzl(Lcom/android/billingclient/api/BillingFlowParams;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zza:Z

    return p1
.end method


# virtual methods
.method public getVrPurchaseFlow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzg:Z

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zze:I

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzf:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method final zzm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzg:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzb:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zzd:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zze:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingFlowParams;->zza:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
