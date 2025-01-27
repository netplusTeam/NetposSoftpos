.class public interface abstract Lcom/sleepycat/je/log/entry/LogEntry;
.super Ljava/lang/Object;
.source "LogEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract clone()Lcom/sleepycat/je/log/entry/LogEntry;
.end method

.method public abstract dumpEntry(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
.end method

.method public abstract dumpRep(Ljava/lang/StringBuilder;)V
.end method

.method public abstract getDbId()Lcom/sleepycat/je/dbi/DatabaseId;
.end method

.method public abstract getLogType()Lcom/sleepycat/je/log/LogEntryType;
.end method

.method public abstract getMainItem()Ljava/lang/Object;
.end method

.method public abstract getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;
.end method

.method public abstract getSize()I
.end method

.method public abstract getTransactionId()J
.end method

.method public abstract isDeleted()Z
.end method

.method public abstract isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z
.end method

.method public abstract logicalEquals(Lcom/sleepycat/je/log/entry/LogEntry;)Z
.end method

.method public abstract postLogWork(Lcom/sleepycat/je/log/LogEntryHeader;JLcom/sleepycat/je/utilint/VLSN;)V
.end method

.method public abstract readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract setLogType(Lcom/sleepycat/je/log/LogEntryType;)V
.end method

.method public abstract writeEntry(Ljava/nio/ByteBuffer;)V
.end method
