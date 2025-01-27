.class public interface abstract Lcom/sleepycat/je/rep/stream/FeederSource;
.super Ljava/lang/Object;
.source "FeederSource.java"


# virtual methods
.method public abstract dumpState()Ljava/lang/String;
.end method

.method public abstract getWireRecord(Lcom/sleepycat/je/utilint/VLSN;I)Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shutdown(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
.end method
