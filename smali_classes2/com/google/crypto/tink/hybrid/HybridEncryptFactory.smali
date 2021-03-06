.class public final Lcom/google/crypto/tink/hybrid/HybridEncryptFactory;
.super Ljava/lang/Object;
.source "HybridEncryptFactory.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/google/crypto/tink/hybrid/HybridEncryptFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HybridEncryptFactory;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrimitive(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/HybridEncrypt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Lcom/google/crypto/tink/hybrid/HybridEncryptFactory;->getPrimitive(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/KeyManager;)Lcom/google/crypto/tink/HybridEncrypt;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimitive(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/KeyManager;)Lcom/google/crypto/tink/HybridEncrypt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/KeysetHandle;",
            "Lcom/google/crypto/tink/KeyManager<",
            "Lcom/google/crypto/tink/HybridEncrypt;",
            ">;)",
            "Lcom/google/crypto/tink/HybridEncrypt;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 66
    invoke-static {p0, p1}, Lcom/google/crypto/tink/Registry;->getPrimitives(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/KeyManager;)Lcom/google/crypto/tink/PrimitiveSet;

    move-result-object p0

    .line 67
    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/HybridEncryptFactory;->validate(Lcom/google/crypto/tink/PrimitiveSet;)V

    .line 68
    new-instance p1, Lcom/google/crypto/tink/hybrid/HybridEncryptFactory$1;

    invoke-direct {p1, p0}, Lcom/google/crypto/tink/hybrid/HybridEncryptFactory$1;-><init>(Lcom/google/crypto/tink/PrimitiveSet;)V

    return-object p1
.end method

.method private static validate(Lcom/google/crypto/tink/PrimitiveSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/HybridEncrypt;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/google/crypto/tink/PrimitiveSet;->getAll()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 83
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/PrimitiveSet$Entry;

    .line 84
    invoke-virtual {v1}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/crypto/tink/HybridEncrypt;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid HybridEncrypt key material"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method
