.class public interface abstract Lcom/google/crypto/tink/proto/RegistryConfigOrBuilder;
.super Ljava/lang/Object;
.source "RegistryConfigOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getConfigName()Ljava/lang/String;
.end method

.method public abstract getConfigNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEntry(I)Lcom/google/crypto/tink/proto/KeyTypeEntry;
.end method

.method public abstract getEntryCount()I
.end method

.method public abstract getEntryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/proto/KeyTypeEntry;",
            ">;"
        }
    .end annotation
.end method
