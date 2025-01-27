.class abstract Lcom/sleepycat/je/rep/stream/WireRecord;
.super Ljava/lang/Object;
.source "WireRecord.java"


# instance fields
.field final header:Lcom/sleepycat/je/log/LogEntryHeader;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/log/LogEntryHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/WireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 39
    return-void
.end method


# virtual methods
.method getLogEntryType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/WireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 48
    .local v0, "type":Lcom/sleepycat/je/log/LogEntryType;
    if-eqz v0, :cond_0

    .line 52
    return-object v0

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown header type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/WireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 50
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method instantiateEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/WireRecord;->getLogEntryType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    .line 64
    .local v0, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 65
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/WireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v0, p1, v1, p2}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 66
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 67
    return-object v0
.end method
