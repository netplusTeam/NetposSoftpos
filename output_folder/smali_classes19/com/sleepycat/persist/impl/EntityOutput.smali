.class public interface abstract Lcom/sleepycat/persist/impl/EntityOutput;
.super Ljava/lang/Object;
.source "EntityOutput.java"


# virtual methods
.method public abstract registerPriKeyObject(Ljava/lang/Object;)V
.end method

.method public abstract writeArrayLength(I)V
.end method

.method public abstract writeBigInteger(Ljava/math/BigInteger;)Lcom/sleepycat/bind/tuple/TupleOutput;
.end method

.method public abstract writeBoolean(Z)Lcom/sleepycat/bind/tuple/TupleOutput;
.end method

.method public abstract writeByte(I)Lcom/sleepycat/bind/tuple/TupleOutput;
.end method

.method public abstract writeChar(I)Lcom/sleepycat/bind/tuple/TupleOutput;
.end method

.method public abstract writeEnumConstant([Ljava/lang/String;I)V
.end method

.method public abstract writeInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;
.end method

.method public abstract writeKeyObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract writeLong(J)Lcom/sleepycat/bind/tuple/TupleOutput;
.end method

.method public abstract writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract writeShort(I)Lcom/sleepycat/bind/tuple/TupleOutput;
.end method

.method public abstract writeSortedBigDecimal(Ljava/math/BigDecimal;)Lcom/sleepycat/bind/tuple/TupleOutput;
.end method

.method public abstract writeSortedDouble(D)Lcom/sleepycat/bind/tuple/TupleOutput;
.end method

.method public abstract writeSortedFloat(F)Lcom/sleepycat/bind/tuple/TupleOutput;
.end method

.method public abstract writeString(Ljava/lang/String;)Lcom/sleepycat/bind/tuple/TupleOutput;
.end method
