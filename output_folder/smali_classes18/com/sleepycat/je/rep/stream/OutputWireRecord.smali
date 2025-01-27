.class public Lcom/sleepycat/je/rep/stream/OutputWireRecord;
.super Lcom/sleepycat/je/rep/stream/WireRecord;
.source "OutputWireRecord.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final entryBuffer:Ljava/nio/ByteBuffer;

.field protected final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private logEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

.field private final logItem:Lcom/sleepycat/je/log/LogItem;

.field private oldFormatRequired:Ljava/lang/Boolean;

.field private reSerializedSize:I

.field private reserialize:Ljava/lang/Boolean;

.field private sharedEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p3, "readerBuffer"    # Ljava/nio/ByteBuffer;

    .line 73
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/stream/WireRecord;-><init>(Lcom/sleepycat/je/log/LogEntryHeader;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->sharedEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    .line 56
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    .line 59
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reserialize:Ljava/lang/Boolean;

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reSerializedSize:I

    .line 65
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->oldFormatRequired:Ljava/lang/Boolean;

    .line 74
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 75
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logItem:Lcom/sleepycat/je/log/LogItem;

    .line 76
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->entryBuffer:Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 78
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogItem;)V
    .locals 5
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "logItem"    # Lcom/sleepycat/je/log/LogItem;

    .line 86
    iget-object v0, p2, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/stream/WireRecord;-><init>(Lcom/sleepycat/je/log/LogEntryHeader;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->sharedEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    .line 56
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    .line 59
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reserialize:Ljava/lang/Boolean;

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reSerializedSize:I

    .line 65
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->oldFormatRequired:Ljava/lang/Boolean;

    .line 87
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 88
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logItem:Lcom/sleepycat/je/log/LogItem;

    .line 89
    iget-object v0, p2, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    .line 90
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->entryBuffer:Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 94
    return-void

    .line 92
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/stream/InputWireRecord;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "input"    # Lcom/sleepycat/je/rep/stream/InputWireRecord;

    .line 99
    iget-object v0, p2, Lcom/sleepycat/je/rep/stream/InputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/stream/WireRecord;-><init>(Lcom/sleepycat/je/log/LogEntryHeader;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->sharedEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    .line 56
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    .line 59
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reserialize:Ljava/lang/Boolean;

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reSerializedSize:I

    .line 65
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->oldFormatRequired:Ljava/lang/Boolean;

    .line 100
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 101
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logItem:Lcom/sleepycat/je/log/LogItem;

    .line 102
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    .line 103
    .local v0, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->entryBuffer:Ljava/nio/ByteBuffer;

    .line 104
    invoke-interface {v0, v1}, Lcom/sleepycat/je/log/entry/LogEntry;->writeEntry(Ljava/nio/ByteBuffer;)V

    .line 105
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 106
    return-void
.end method

.method private getEntrySize(I)I
    .locals 1
    .param p1, "logVersion"    # I

    .line 261
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->willReSerialize(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reSerializedSize:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 262
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v0

    .line 261
    :goto_0
    return v0
.end method

.method private declared-synchronized getSharedEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->sharedEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    if-nez v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getLogEntryType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 117
    .local v0, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isReplicationPossible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getSharedLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->sharedEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    goto :goto_0

    .line 118
    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log entry type does not support replication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 123
    .end local v0    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->sharedEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isOldFormatRequired(I)Z
    .locals 1
    .param p1, "logVersion"    # I

    .line 343
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->oldFormatRequired:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 347
    :cond_0
    const/16 v0, 0x11

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 351
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getSharedEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;->getLastFormatChange()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 349
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->oldFormatRequired:Ljava/lang/Boolean;

    .line 355
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private willReSerialize(I)Z
    .locals 5
    .param p1, "logVersion"    # I

    .line 277
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reserialize:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 281
    :cond_0
    const/4 v0, -0x1

    .line 283
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    .line 291
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reserialize:Ljava/lang/Boolean;

    goto :goto_0

    .line 293
    :cond_1
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->isOldFormatRequired(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reserialize:Ljava/lang/Boolean;

    goto :goto_0

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    if-eqz v1, :cond_5

    .line 306
    invoke-interface {v1}, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;->hasReplicationFormat()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    invoke-interface {v1, p1, v4}, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;->getSize(IZ)I

    move-result v0

    .line 309
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v1

    if-le v1, v0, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reserialize:Ljava/lang/Boolean;

    goto :goto_0

    .line 311
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reserialize:Ljava/lang/Boolean;

    goto :goto_0

    .line 319
    :cond_5
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getSharedEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->entryBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 320
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v3

    .line 319
    invoke-interface {v1, v2, v3, p1}, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;->isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reserialize:Ljava/lang/Boolean;

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reserialize:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 325
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 326
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v1

    invoke-interface {v1, p1, v4}, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;->getSize(IZ)I

    move-result v0

    .line 329
    :cond_6
    iput v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reSerializedSize:I

    .line 332
    :cond_7
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reserialize:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 333
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 332
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/log/LogEntryHeader;->dumpRep(Ljava/lang/StringBuilder;)V

    .line 233
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v1

    .line 234
    .local v1, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v1, v0}, Lcom/sleepycat/je/log/entry/LogEntry;->dumpRep(Ljava/lang/StringBuilder;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCommitTimeStamp()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 412
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    const-wide/16 v0, 0x0

    return-wide v0

    .line 416
    :cond_0
    nop

    .line 417
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v0

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/TxnCommit;

    .line 418
    .local v0, "txnCommit":Lcom/sleepycat/je/txn/TxnCommit;
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/TxnCommit;->getTime()Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/Timestamp;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public getCommitTxnId()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    const-wide/16 v0, 0x0

    return-wide v0

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v0

    .line 401
    .local v0, "commitEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getTransactionId()J

    move-result-wide v1

    return-wide v1
.end method

.method public getEntryType()B
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    return v0
.end method

.method getLogItemLSN()J
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logItem:Lcom/sleepycat/je/log/LogItem;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/sleepycat/je/log/LogItem;->lsn:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getReplicableDBId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getLogEntryType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 461
    .local v0, "logEntryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isReplicationPossible()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 462
    return-object v2

    .line 469
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isLNType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 470
    return-object v2

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v1

    invoke-interface {v1}, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    return-object v1
.end method

.method public getTimeStamp()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getLogEntryType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getSharedLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    .line 435
    .local v0, "sharedLogEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    instance-of v1, v0, Lcom/sleepycat/je/log/entry/SingleItemEntry;

    if-eqz v1, :cond_0

    .line 436
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/log/entry/SingleItemEntry;

    .line 437
    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->getLogClass()Ljava/lang/Class;

    move-result-object v1

    .line 438
    .local v1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sleepycat/je/log/Loggable;>;"
    const-class v2, Lcom/sleepycat/je/txn/TxnEnd;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    nop

    .line 440
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v2

    invoke-interface {v2}, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/txn/TxnEnd;

    .line 441
    .local v2, "txnEnd":Lcom/sleepycat/je/txn/TxnEnd;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/TxnEnd;->getTime()Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/Timestamp;->getTime()J

    move-result-wide v3

    return-wide v3

    .line 444
    .end local v1    # "logClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sleepycat/je/log/Loggable;>;"
    .end local v2    # "txnEnd":Lcom/sleepycat/je/txn/TxnEnd;
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    return-object v0
.end method

.method getWireSize(I)I
    .locals 1
    .param p1, "logVersion"    # I

    .line 253
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getEntrySize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public declared-synchronized instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 138
    monitor-exit p0

    return-object v0

    .line 140
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logItem:Lcom/sleepycat/je/log/LogItem;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, v0, Lcom/sleepycat/je/log/LogItem;->cachedEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    if-eqz v0, :cond_1

    .line 143
    monitor-exit p0

    return-object v0

    .line 146
    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->entryBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    .line 147
    .local v0, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    instance-of v1, v0, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    if-eqz v1, :cond_3

    .line 152
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    .line 153
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logItem:Lcom/sleepycat/je/log/LogItem;

    if-eqz v2, :cond_2

    .line 154
    iput-object v1, v2, Lcom/sleepycat/je/log/LogItem;->cachedEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->logEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 148
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log entry type does not support replication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    .end local v0    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public match(Lcom/sleepycat/je/rep/stream/InputWireRecord;)Z
    .locals 2
    .param p1, "input"    # Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v1, p1, Lcom/sleepycat/je/rep/stream/InputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogEntryHeader;->logicalEqualsIgnoreVersion(Lcom/sleepycat/je/log/LogEntryHeader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v0

    .line 190
    .local v0, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/log/entry/LogEntry;->logicalEquals(Lcom/sleepycat/je/log/entry/LogEntry;)Z

    move-result v1

    return v1
.end method

.method public match(Lcom/sleepycat/je/rep/stream/OutputWireRecord;)Z
    .locals 3
    .param p1, "otherRecord"    # Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v1, p1, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/LogEntryHeader;->logicalEqualsIgnoreVersion(Lcom/sleepycat/je/log/LogEntryHeader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    return v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v0

    .line 207
    .local v0, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p1, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->entryBuffer:Ljava/nio/ByteBuffer;

    .line 208
    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    .line 209
    .local v1, "otherEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v0, v1}, Lcom/sleepycat/je/log/entry/LogEntry;->logicalEquals(Lcom/sleepycat/je/log/entry/LogEntry;)Z

    move-result v2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->dump()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->printStackTrace()V

    .line 244
    const-string v1, ""

    return-object v1
.end method

.method public verifyNegativeSequences(Ljava/lang/String;)Z
    .locals 8
    .param p1, "debugTag"    # Ljava/lang/String;

    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v1
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 500
    nop

    .line 502
    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getTransactionId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 507
    instance-of v1, v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    if-eqz v1, :cond_3

    .line 508
    sget-object v1, Lcom/sleepycat/je/log/LogEntryType;->LOG_NAMELN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 509
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getEntryType()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v1

    const-string v2, " db id should be negative: "

    if-eqz v1, :cond_1

    .line 510
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 511
    .local v1, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Z)V

    .line 512
    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/tree/NameLN;

    .line 513
    .local v5, "nameLN":Lcom/sleepycat/je/tree/NameLN;
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v6

    cmp-long v3, v6, v3

    if-gez v3, :cond_0

    .line 517
    .end local v1    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v5    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    goto :goto_0

    .line 514
    .restart local v1    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .restart local v5    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 518
    .end local v1    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v5    # "nameLN":Lcom/sleepycat/je/tree/NameLN;
    :cond_1
    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseId;->getId()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-gez v1, :cond_2

    goto :goto_0

    .line 519
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 525
    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 503
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " txn id should be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method writeToWire(Ljava/nio/ByteBuffer;I)Z
    .locals 3
    .param p1, "messageBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I

    .line 369
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 370
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->willReSerialize(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v0

    .line 372
    .local v0, "entry":Lcom/sleepycat/je/log/entry/ReplicableLogEntry;
    invoke-static {p1, p2}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 373
    iget v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->reSerializedSize:I

    invoke-static {p1, v1}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 374
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 375
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->entryBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 376
    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;->writeEntry(Ljava/nio/ByteBuffer;IZ)V

    .line 378
    .end local v0    # "entry":Lcom/sleepycat/je/log/entry/ReplicableLogEntry;
    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 380
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 381
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 382
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->entryBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 383
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->entryBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 385
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->entryBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 386
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->isOldFormatRequired(I)Z

    move-result v0

    return v0
.end method
