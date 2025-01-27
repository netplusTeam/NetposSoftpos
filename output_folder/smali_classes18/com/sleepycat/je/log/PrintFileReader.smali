.class public Lcom/sleepycat/je/log/PrintFileReader;
.super Lcom/sleepycat/je/log/DumpFileReader;
.source "PrintFileReader.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "startLsn"    # J
    .param p5, "finishLsn"    # J
    .param p7, "endOfFileLsn"    # J
    .param p9, "entryTypes"    # Ljava/lang/String;
    .param p10, "dbIds"    # Ljava/lang/String;
    .param p11, "txnIds"    # Ljava/lang/String;
    .param p12, "verbose"    # Z
    .param p13, "repEntriesOnly"    # Z
    .param p14, "forwards"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 43
    invoke-direct/range {p0 .. p14}, Lcom/sleepycat/je/log/DumpFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 54
    return-void
.end method


# virtual methods
.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 7
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sleepycat/je/log/PrintFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 64
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 67
    .local v0, "type":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getSharedLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    .line 68
    .local v1, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v2, p0, Lcom/sleepycat/je/log/PrintFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v3, p0, Lcom/sleepycat/je/log/PrintFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v1, v2, v3, p1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/log/PrintFileReader;->matchEntry(Lcom/sleepycat/je/log/entry/LogEntry;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 72
    return v3

    .line 76
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "<entry lsn=\"0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/log/PrintFileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 78
    invoke-virtual {v5}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v4, "/0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sleepycat/je/log/PrintFileReader;->currentEntryOffset:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v4, "\" "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v4, p0, Lcom/sleepycat/je/log/PrintFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    iget-boolean v5, p0, Lcom/sleepycat/je/log/PrintFileReader;->verbose:Z

    invoke-virtual {v4, v2, v5}, Lcom/sleepycat/je/log/LogEntryHeader;->dumpLogNoTag(Ljava/lang/StringBuilder;Z)V

    .line 82
    const-string v4, "\">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-boolean v4, p0, Lcom/sleepycat/je/log/PrintFileReader;->verbose:Z

    invoke-interface {v1, v2, v4}, Lcom/sleepycat/je/log/entry/LogEntry;->dumpEntry(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 84
    const-string v4, "</entry>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    return v3
.end method
