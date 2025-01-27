.class public interface abstract Lcom/sleepycat/je/log/Loggable;
.super Ljava/lang/Object;
.source "Loggable.java"


# virtual methods
.method public abstract dumpLog(Ljava/lang/StringBuilder;Z)V
.end method

.method public abstract getLogSize()I
.end method

.method public abstract getTransactionId()J
.end method

.method public abstract logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
.end method

.method public abstract readFromLog(Ljava/nio/ByteBuffer;I)V
.end method

.method public abstract writeToLog(Ljava/nio/ByteBuffer;)V
.end method
