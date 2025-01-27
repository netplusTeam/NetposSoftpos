.class public interface abstract Lcom/sleepycat/je/rep/stream/FeederFilter;
.super Ljava/lang/Object;
.source "FeederFilter.java"


# virtual methods
.method public abstract execute(Lcom/sleepycat/je/rep/stream/OutputWireRecord;Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;
.end method

.method public abstract getTableIds()[Ljava/lang/String;
.end method

.method public abstract setLogger(Ljava/util/logging/Logger;)V
.end method
