.class public interface abstract Lcom/mb/android/model/serialization/IJsonSerializer;
.super Ljava/lang/Object;
.source "IJsonSerializer.java"


# virtual methods
.method public abstract DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract SerializeToString(Ljava/lang/Object;)Ljava/lang/String;
.end method
