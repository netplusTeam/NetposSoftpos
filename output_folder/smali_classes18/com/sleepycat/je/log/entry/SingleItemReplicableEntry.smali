.class abstract Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;
.super Lcom/sleepycat/je/log/entry/SingleItemEntry;
.source "SingleItemReplicableEntry.java"

# interfaces
.implements Lcom/sleepycat/je/log/entry/ReplicableLogEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
        ">",
        "Lcom/sleepycat/je/log/entry/SingleItemEntry<",
        "TT;>;",
        "Lcom/sleepycat/je/log/entry/ReplicableLogEntry;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/VersionedWriteLoggable;)V
    .locals 0
    .param p1, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "TT;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;, "Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry<TT;>;"
    .local p2, "item":Lcom/sleepycat/je/log/VersionedWriteLoggable;, "TT;"
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/entry/SingleItemEntry;-><init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)V

    .line 53
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;, "Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry<TT;>;"
    .local p1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;-><init>(Ljava/lang/Class;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getEmbeddedLoggables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
            ">;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;, "Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry<TT;>;"
    nop

    .line 59
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->newInstanceOfType()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/VersionedWriteLoggable;

    .line 58
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSize(IZ)I
    .locals 1
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 64
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;, "Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->getMainItem()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/VersionedWriteLoggable;

    invoke-interface {v0, p1, p2}, Lcom/sleepycat/je/log/VersionedWriteLoggable;->getLogSize(IZ)I

    move-result v0

    return v0
.end method

.method public hasReplicationFormat()Z
    .locals 1

    .line 76
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;, "Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->getMainItem()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/VersionedWriteLoggable;

    invoke-interface {v0}, Lcom/sleepycat/je/log/VersionedWriteLoggable;->hasReplicationFormat()Z

    move-result v0

    return v0
.end method

.method public isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "srcVersion"    # I
    .param p3, "destVersion"    # I

    .line 83
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;, "Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->newInstanceOfType()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/VersionedWriteLoggable;

    invoke-interface {v0, p1, p2, p3}, Lcom/sleepycat/je/log/VersionedWriteLoggable;->isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z

    move-result v0

    return v0
.end method

.method public writeEntry(Ljava/nio/ByteBuffer;IZ)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 71
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;, "Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->getMainItem()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/VersionedWriteLoggable;

    invoke-interface {v0, p1, p2, p3}, Lcom/sleepycat/je/log/VersionedWriteLoggable;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 72
    return-void
.end method
