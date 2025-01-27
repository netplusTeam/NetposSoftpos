.class interface abstract Lcom/sleepycat/persist/impl/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getAccessor(Z)Lcom/sleepycat/persist/impl/Accessor;
.end method

.method public abstract initializeReader(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;ILcom/sleepycat/persist/impl/Format;)V
.end method

.method public abstract newInstance(Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract readObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method

.method public abstract readPriKey(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityInput;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation
.end method
