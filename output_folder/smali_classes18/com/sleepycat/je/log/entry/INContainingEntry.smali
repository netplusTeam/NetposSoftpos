.class public interface abstract Lcom/sleepycat/je/log/entry/INContainingEntry;
.super Ljava/lang/Object;
.source "INContainingEntry.java"


# virtual methods
.method public abstract getDbId()Lcom/sleepycat/je/dbi/DatabaseId;
.end method

.method public abstract getIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public abstract getPrevDeltaLsn()J
.end method

.method public abstract getPrevFullLsn()J
.end method

.method public abstract isBINDelta()Z
.end method
