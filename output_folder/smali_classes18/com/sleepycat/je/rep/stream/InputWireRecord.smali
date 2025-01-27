.class public Lcom/sleepycat/je/rep/stream/InputWireRecord;
.super Lcom/sleepycat/je/rep/stream/WireRecord;
.source "InputWireRecord.java"


# instance fields
.field private final logEntry:Lcom/sleepycat/je/log/entry/LogEntry;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;BIILcom/sleepycat/je/utilint/VLSN;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "entryType"    # B
    .param p3, "entryVersion"    # I
    .param p4, "itemSize"    # I
    .param p5, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p6, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sleepycat/je/log/LogEntryHeader;-><init>(BIILcom/sleepycat/je/utilint/VLSN;)V

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/stream/WireRecord;-><init>(Lcom/sleepycat/je/log/LogEntryHeader;)V

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/InputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/InputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 88
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/InputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v0, p1, v1, p6}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/nio/ByteBuffer;Lcom/sleepycat/je/rep/stream/BaseProtocol;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "msgBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "protocol"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 48
    invoke-static {p2, p3}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->createLogEntryHeader(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/rep/stream/BaseProtocol;)Lcom/sleepycat/je/log/LogEntryHeader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/stream/WireRecord;-><init>(Lcom/sleepycat/je/log/LogEntryHeader;)V

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->instantiateEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/InputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 51
    return-void
.end method

.method private static createLogEntryHeader(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/rep/stream/BaseProtocol;)Lcom/sleepycat/je/log/LogEntryHeader;
    .locals 6
    .param p0, "msgBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "protocol"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 57
    .local v0, "entryType":B
    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 58
    .local v1, "entryVersion":I
    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 59
    .local v2, "itemSize":I
    new-instance v3, Lcom/sleepycat/je/utilint/VLSN;

    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    .line 65
    .local v3, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    const/16 v4, 0xc

    if-le v1, v4, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->getFixLogVersion12Entries()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const/16 v1, 0xc

    .line 70
    :cond_0
    new-instance v4, Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sleepycat/je/log/LogEntryHeader;-><init>(BIILcom/sleepycat/je/utilint/VLSN;)V

    return-object v4
.end method


# virtual methods
.method public dumpLogEntry()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/InputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/InputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEntryType()B
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/InputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    return v0
.end method

.method public getLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/InputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    return-object v0
.end method

.method public getVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/InputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/InputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/log/LogEntryHeader;->dumpRep(Ljava/lang/StringBuilder;)V

    .line 108
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/InputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v1, v0}, Lcom/sleepycat/je/log/entry/LogEntry;->dumpRep(Ljava/lang/StringBuilder;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
