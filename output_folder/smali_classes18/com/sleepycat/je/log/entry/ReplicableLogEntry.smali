.class public interface abstract Lcom/sleepycat/je/log/entry/ReplicableLogEntry;
.super Ljava/lang/Object;
.source "ReplicableLogEntry.java"

# interfaces
.implements Lcom/sleepycat/je/log/entry/LogEntry;


# virtual methods
.method public abstract getEmbeddedLoggables()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastFormatChange()I
.end method

.method public abstract getSize(IZ)I
.end method

.method public abstract hasReplicationFormat()Z
.end method

.method public abstract isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
.end method

.method public abstract writeEntry(Ljava/nio/ByteBuffer;IZ)V
.end method
