.class public Lcom/sleepycat/je/log/entry/DeletedDupLNLogEntry;
.super Lcom/sleepycat/je/log/entry/LNLogEntry;
.source "DeletedDupLNLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/log/entry/LNLogEntry<",
        "Lcom/sleepycat/je/tree/LN;",
        ">;"
    }
.end annotation


# instance fields
.field private dataAsKey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    const-class v0, Lcom/sleepycat/je/tree/LN;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;-><init>(Ljava/lang/Class;)V

    .line 50
    return-void
.end method


# virtual methods
.method combineDupKeyData()[B
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/DeletedDupLNLogEntry;->getKey()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/log/entry/DeletedDupLNLogEntry;->dataAsKey:[B

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/DupKeyData;->combine([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public dumpEntry(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 78
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/log/entry/LNLogEntry;->dumpEntry(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 79
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/DeletedDupLNLogEntry;->dataAsKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    return-object p1
.end method

.method public getSize(IZ)I
    .locals 1
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 101
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public hasReplicationFormat()Z
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "srcVersion"    # I
    .param p3, "destVersion"    # I

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p3, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/log/entry/DeletedDupLNLogEntry;->readBaseLNEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;Z)V

    .line 69
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v1

    .line 70
    .local v1, "logVersion":I
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p3, v0}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/DeletedDupLNLogEntry;->dataAsKey:[B

    .line 71
    return-void
.end method

.method public writeEntry(Ljava/nio/ByteBuffer;IZ)V
    .locals 1
    .param p1, "destBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 108
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
