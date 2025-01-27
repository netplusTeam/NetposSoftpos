.class public interface abstract Lcom/sleepycat/persist/impl/Enhanced;
.super Ljava/lang/Object;
.source "Enhanced.java"


# virtual methods
.method public abstract bdbGetField(Ljava/lang/Object;IIZ)Ljava/lang/Object;
.end method

.method public abstract bdbIsPriKeyFieldNullOrZero()Z
.end method

.method public abstract bdbNewArray(I)Ljava/lang/Object;
.end method

.method public abstract bdbNewInstance()Ljava/lang/Object;
.end method

.method public abstract bdbReadCompositeKeyFields(Lcom/sleepycat/persist/impl/EntityInput;[Lcom/sleepycat/persist/impl/Format;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract bdbReadNonKeyFields(Lcom/sleepycat/persist/impl/EntityInput;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract bdbReadPriKeyField(Lcom/sleepycat/persist/impl/EntityInput;Lcom/sleepycat/persist/impl/Format;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract bdbReadSecKeyFields(Lcom/sleepycat/persist/impl/EntityInput;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract bdbSetField(Ljava/lang/Object;IIZLjava/lang/Object;)V
.end method

.method public abstract bdbSetPriField(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract bdbWriteCompositeKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;[Lcom/sleepycat/persist/impl/Format;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract bdbWriteNonKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract bdbWritePriKeyField(Lcom/sleepycat/persist/impl/EntityOutput;Lcom/sleepycat/persist/impl/Format;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract bdbWriteSecKeyFields(Lcom/sleepycat/persist/impl/EntityOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method
