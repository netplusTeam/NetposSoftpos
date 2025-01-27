.class public interface abstract Lcom/sleepycat/bind/tuple/MarshalledTupleKeyEntity;
.super Ljava/lang/Object;
.source "MarshalledTupleKeyEntity.java"


# virtual methods
.method public abstract marshalPrimaryKey(Lcom/sleepycat/bind/tuple/TupleOutput;)V
.end method

.method public abstract marshalSecondaryKey(Ljava/lang/String;Lcom/sleepycat/bind/tuple/TupleOutput;)Z
.end method

.method public abstract nullifyForeignKey(Ljava/lang/String;)Z
.end method

.method public abstract unmarshalPrimaryKey(Lcom/sleepycat/bind/tuple/TupleInput;)V
.end method
