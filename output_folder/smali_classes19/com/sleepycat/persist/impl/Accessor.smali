.class interface abstract Lcom/sleepycat/persist/impl/Accessor;
.super Ljava/lang/Object;
.source "Accessor.java"


# static fields
.field public static final MAX_FIELD_NUM:I = 0x7ffffffe


# virtual methods
.method public abstract getField(Ljava/lang/Object;IIZ)Ljava/lang/Object;
.end method

.method public abstract isPriKeyFieldNullOrZero(Ljava/lang/Object;)Z
.end method

.method public abstract newArray(I)Ljava/lang/Object;
.end method

.method public abstract newInstance()Ljava/lang/Object;
.end method

.method public abstract readCompositeKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract readNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract readPriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract readSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract setField(Ljava/lang/Object;IIZLjava/lang/Object;)V
.end method

.method public abstract setPriField(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract writeCompositeKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract writeNonKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract writePriKeyField(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract writeSecKeyFields(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method
