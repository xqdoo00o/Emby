.class public final Lcom/google/crypto/tink/proto/HmacParams;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HmacParams.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/HmacParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/HmacParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/HmacParams;",
        "Lcom/google/crypto/tink/proto/HmacParams$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/HmacParamsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

.field public static final HASH_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HmacParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_SIZE_FIELD_NUMBER:I = 0x2


# instance fields
.field private hash_:I

.field private tagSize_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 379
    new-instance v0, Lcom/google/crypto/tink/proto/HmacParams;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/HmacParams;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    .line 380
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacParams;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/HmacParams;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HmacParams;->setHashValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/HmacParams;Lcom/google/crypto/tink/proto/HashType;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HmacParams;->setHash(Lcom/google/crypto/tink/proto/HashType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/HmacParams;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HmacParams;->clearHash()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/HmacParams;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HmacParams;->setTagSize(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/HmacParams;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HmacParams;->clearTagSize()V

    return-void
.end method

.method private clearHash()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    return-void
.end method

.method private clearTagSize()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/google/crypto/tink/proto/HmacParams;->tagSize_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1

    .line 384
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/HmacParams$Builder;
    .locals 1

    .line 187
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacParams;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacParams$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/HmacParams;)Lcom/google/crypto/tink/proto/HmacParams$Builder;
    .locals 1

    .line 190
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacParams;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HmacParams$Builder;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacParams$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/HmacParams;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacParams;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/HmacParams;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacParams;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacParams;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HmacParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacParams;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HmacParams;",
            ">;"
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacParams;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHash(Lcom/google/crypto/tink/proto/HashType;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HashType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private setHashValue(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    return-void
.end method

.method private setTagSize(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/google/crypto/tink/proto/HmacParams;->tagSize_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 293
    sget-object v0, Lcom/google/crypto/tink/proto/HmacParams$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 372
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 363
    :pswitch_0
    sget-object p1, Lcom/google/crypto/tink/proto/HmacParams;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/crypto/tink/proto/HmacParams;

    monitor-enter p1

    .line 364
    :try_start_0
    sget-object p2, Lcom/google/crypto/tink/proto/HmacParams;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 365
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/google/crypto/tink/proto/HmacParams;->PARSER:Lcom/google/protobuf/Parser;

    .line 367
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 369
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/crypto/tink/proto/HmacParams;->PARSER:Lcom/google/protobuf/Parser;

    return-object p1

    .line 318
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 320
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 325
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0x8

    if-eq p1, p3, :cond_4

    const/16 p3, 0x10

    if-eq p1, p3, :cond_3

    .line 331
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 344
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/HmacParams;->tagSize_:I

    goto :goto_1

    .line 337
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 339
    iput p1, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 352
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 354
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 350
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    :goto_3
    throw p1

    .line 360
    :cond_6
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    return-object p1

    .line 307
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 308
    check-cast p3, Lcom/google/crypto/tink/proto/HmacParams;

    .line 309
    iget p1, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    iget v0, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    iget v3, p3, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    iget v4, p3, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    .line 310
    iget p1, p0, Lcom/google/crypto/tink/proto/HmacParams;->tagSize_:I

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    :goto_6
    iget v0, p0, Lcom/google/crypto/tink/proto/HmacParams;->tagSize_:I

    iget v3, p3, Lcom/google/crypto/tink/proto/HmacParams;->tagSize_:I

    if-eqz v3, :cond_a

    const/4 v1, 0x1

    :cond_a
    iget p3, p3, Lcom/google/crypto/tink/proto/HmacParams;->tagSize_:I

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/proto/HmacParams;->tagSize_:I

    .line 312
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 304
    :pswitch_4
    new-instance p1, Lcom/google/crypto/tink/proto/HmacParams$Builder;

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/proto/HmacParams$Builder;-><init>(Lcom/google/crypto/tink/proto/HmacParams$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 298
    :pswitch_6
    sget-object p1, Lcom/google/crypto/tink/proto/HmacParams;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HmacParams;

    return-object p1

    .line 295
    :pswitch_7
    new-instance p1, Lcom/google/crypto/tink/proto/HmacParams;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/HmacParams;-><init>()V

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

.method public getHash()Lcom/google/crypto/tink/proto/HashType;
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    invoke-static {v0}, Lcom/google/crypto/tink/proto/HashType;->forNumber(I)Lcom/google/crypto/tink/proto/HashType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lcom/google/crypto/tink/proto/HashType;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/HashType;

    :cond_0
    return-object v0
.end method

.method public getHashValue()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 109
    iget v0, p0, Lcom/google/crypto/tink/proto/HmacParams;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 113
    iget v1, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    sget-object v2, Lcom/google/crypto/tink/proto/HashType;->UNKNOWN_HASH:Lcom/google/crypto/tink/proto/HashType;

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/HashType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 114
    iget v2, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    .line 115
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_1
    iget v1, p0, Lcom/google/crypto/tink/proto/HmacParams;->tagSize_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 119
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_2
    iput v0, p0, Lcom/google/crypto/tink/proto/HmacParams;->memoizedSerializedSize:I

    return v0
.end method

.method public getTagSize()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/google/crypto/tink/proto/HmacParams;->tagSize_:I

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget v0, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->UNKNOWN_HASH:Lcom/google/crypto/tink/proto/HashType;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/HashType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 101
    iget v1, p0, Lcom/google/crypto/tink/proto/HmacParams;->hash_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 103
    :cond_0
    iget v0, p0, Lcom/google/crypto/tink/proto/HmacParams;->tagSize_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 104
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    return-void
.end method
