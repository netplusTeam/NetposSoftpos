.class public Lcom/sleepycat/je/log/entry/MatchpointLogEntry;
.super Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;
.source "MatchpointLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry<",
        "Lcom/sleepycat/je/utilint/Matchpoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAST_FORMAT_CHANGE:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    const-class v0, Lcom/sleepycat/je/utilint/Matchpoint;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;-><init>(Ljava/lang/Class;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/Matchpoint;)V
    .locals 1
    .param p1, "matchpoint"    # Lcom/sleepycat/je/utilint/Matchpoint;

    .line 40
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_MATCHPOINT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;-><init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/VersionedWriteLoggable;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic getEmbeddedLoggables()Ljava/util/Collection;
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->getEmbeddedLoggables()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getLastFormatChange()I
    .locals 1

    .line 45
    const/16 v0, 0x8

    return v0
.end method

.method public bridge synthetic getSize(IZ)I
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->getSize(IZ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic hasReplicationFormat()Z
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->hasReplicationFormat()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic writeEntry(Ljava/nio/ByteBuffer;IZ)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->writeEntry(Ljava/nio/ByteBuffer;IZ)V

    return-void
.end method
