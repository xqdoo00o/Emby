.class public final Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EcdsaPrivateKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/EcdsaPrivateKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/EcdsaPrivateKey;",
        "Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/EcdsaPrivateKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/EcdsaPrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyValue_:Lcom/google/protobuf/ByteString;

.field private publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 541
    new-instance v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    .line 542
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->setPublicKey(Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->setPublicKey(Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->mergePublicKey(Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->clearPublicKey()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->setKeyValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->clearKeyValue()V

    return-void
.end method

.method private clearKeyValue()V
    .locals 1

    .line 170
    invoke-static {}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->getKeyValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPublicKey()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1

    .line 546
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object v0
.end method

.method private mergePublicKey(Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/google/crypto/tink/proto/EcdsaPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    .line 115
    invoke-static {v0}, Lcom/google/crypto/tink/proto/EcdsaPublicKey;->newBuilder(Lcom/google/crypto/tink/proto/EcdsaPublicKey;)Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    goto :goto_0

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;
    .locals 1

    .line 269
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/EcdsaPrivateKey;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;
    .locals 1

    .line 272
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/EcdsaPrivateKey;",
            ">;"
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKeyValue(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 158
    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    return-void

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setPublicKey(Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;)V
    .locals 0

    .line 101
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    return-void
.end method

.method private setPublicKey(Lcom/google/crypto/tink/proto/EcdsaPublicKey;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 89
    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setVersion(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 441
    sget-object v0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 534
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 525
    :pswitch_0
    sget-object p1, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    monitor-enter p1

    .line 526
    :try_start_0
    sget-object p2, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 527
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    .line 529
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 531
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 468
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 470
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 475
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v3, 0x8

    if-eq p1, v3, :cond_6

    const/16 v3, 0x12

    if-eq p1, v3, :cond_4

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_3

    .line 481
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 506
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    goto :goto_1

    .line 493
    :cond_4
    iget-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    if-eqz p1, :cond_5

    .line 494
    iget-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EcdsaPublicKey;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;

    goto :goto_2

    :cond_5
    move-object p1, v0

    .line 496
    :goto_2
    invoke-static {}, Lcom/google/crypto/tink/proto/EcdsaPublicKey;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    iput-object v3, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    if-eqz p1, :cond_2

    .line 498
    iget-object v3, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    invoke-virtual {p1, v3}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 499
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    goto :goto_1

    .line 488
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_3
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 514
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 516
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 512
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 517
    :goto_4
    throw p1

    .line 522
    :cond_8
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p1

    .line 455
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 456
    check-cast p3, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    .line 457
    iget p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    iget v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    iget v3, p3, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    iget v4, p3, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    .line 459
    iget-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    iget-object v0, p3, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    .line 460
    iget-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-eq p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_7

    :cond_b
    const/4 p1, 0x0

    :goto_7
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    iget-object v3, p3, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    sget-object v4, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-eq v3, v4, :cond_c

    const/4 v1, 0x1

    :cond_c
    iget-object p3, p3, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    .line 462
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 452
    :pswitch_4
    new-instance p1, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;-><init>(Lcom/google/crypto/tink/proto/EcdsaPrivateKey$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 446
    :pswitch_6
    sget-object p1, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p1

    .line 443
    :pswitch_7
    new-instance p1, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/proto/EcdsaPublicKey;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/EcdsaPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 187
    iget v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 191
    iget v1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 193
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 197
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 200
    iget-object v2, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    .line 201
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_3
    iput v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->memoizedSerializedSize:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    return v0
.end method

.method public hasPublicKey()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->version_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 176
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 179
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 182
    iget-object v1, p0, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->keyValue_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    return-void
.end method
