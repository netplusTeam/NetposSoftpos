.class public Lcom/sleepycat/je/log/SearchFileReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "SearchFileReader.java"


# instance fields
.field private logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

.field private targetType:Lcom/sleepycat/je/log/LogEntryType;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJJLcom/sleepycat/je/log/LogEntryType;)V
    .locals 12
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "forward"    # Z
    .param p4, "startLsn"    # J
    .param p6, "endOfFileLsn"    # J
    .param p8, "targetType"    # Lcom/sleepycat/je/log/LogEntryType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 42
    move-object v11, p0

    const/4 v6, 0x0

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 45
    move-object/from16 v0, p8

    iput-object v0, v11, Lcom/sleepycat/je/log/SearchFileReader;->targetType:Lcom/sleepycat/je/log/LogEntryType;

    .line 46
    invoke-virtual/range {p8 .. p8}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    iput-object v1, v11, Lcom/sleepycat/je/log/SearchFileReader;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 47
    return-void
.end method


# virtual methods
.method public getLastObject()Ljava/lang/Object;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sleepycat/je/log/SearchFileReader;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected isTargetEntry()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/sleepycat/je/log/SearchFileReader;->targetType:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v1, p0, Lcom/sleepycat/je/log/SearchFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v0

    return v0
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sleepycat/je/log/SearchFileReader;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    iget-object v1, p0, Lcom/sleepycat/je/log/SearchFileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/log/SearchFileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v0, v1, v2, p1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method
