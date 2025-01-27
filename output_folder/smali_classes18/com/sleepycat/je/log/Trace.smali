.class public Lcom/sleepycat/je/log/Trace;
.super Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;
.source "Trace.java"


# static fields
.field private static final LAST_FORMAT_CHANGE:I = 0x8


# instance fields
.field private msg:Ljava/lang/String;

.field private time:Lcom/sleepycat/je/utilint/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;-><init>()V

    .line 44
    invoke-direct {p0}, Lcom/sleepycat/je/log/Trace;->getCurrentTimestamp()Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/Trace;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 45
    iput-object p1, p0, Lcom/sleepycat/je/log/Trace;->msg:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private getCurrentTimestamp()Lcom/sleepycat/je/utilint/Timestamp;
    .locals 4

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/Timestamp;-><init>(J)V

    return-object v1
.end method

.method private static isWritePermitted(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Z
    .locals 1
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 68
    if-eqz p0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->mayNotWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isDbLoggingDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static trace(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/Trace;)J
    .locals 3
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "traceMsg"    # Lcom/sleepycat/je/log/Trace;

    .line 85
    invoke-static {p0}, Lcom/sleepycat/je/log/Trace;->isWritePermitted(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    new-instance v1, Lcom/sleepycat/je/log/entry/TraceLogEntry;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/log/entry/TraceLogEntry;-><init>(Lcom/sleepycat/je/log/Trace;)V

    sget-object v2, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v0

    return-wide v0

    .line 91
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static trace(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 1
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "message"    # Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/sleepycat/je/log/Trace;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/log/Trace;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sleepycat/je/log/Trace;->trace(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/Trace;)J

    .line 81
    return-void
.end method

.method public static traceLazily(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 3
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "message"    # Ljava/lang/String;

    .line 101
    invoke-static {p0}, Lcom/sleepycat/je/log/Trace;->isWritePermitted(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    new-instance v1, Lcom/sleepycat/je/log/entry/TraceLogEntry;

    new-instance v2, Lcom/sleepycat/je/log/Trace;

    invoke-direct {v2, p1}, Lcom/sleepycat/je/log/Trace;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/sleepycat/je/log/entry/TraceLogEntry;-><init>(Lcom/sleepycat/je/log/Trace;)V

    sget-object v2, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/log/LogManager;->logLazily(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 141
    const-string v0, "<Dbg time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v0, p0, Lcom/sleepycat/je/log/Trace;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v0, "<msg val=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v0, p0, Lcom/sleepycat/je/log/Trace;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v0, "</Dbg>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 180
    if-ne p0, p1, :cond_0

    .line 181
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    instance-of v0, p1, Lcom/sleepycat/je/log/Trace;

    if-nez v0, :cond_1

    .line 186
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/log/Trace;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

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

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastFormatChange()I
    .locals 1

    .line 110
    const/16 v0, 0x8

    return v0
.end method

.method public getLogSize(IZ)I
    .locals 2
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 120
    iget-object v0, p0, Lcom/sleepycat/je/log/Trace;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getTimestampLogSize(Lcom/sleepycat/je/utilint/Timestamp;)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/log/Trace;->msg:Ljava/lang/String;

    .line 121
    invoke-static {v1}, Lcom/sleepycat/je/log/LogUtils;->getStringLogSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sleepycat/je/log/Trace;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 152
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/sleepycat/je/log/Trace;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 158
    instance-of v0, p1, Lcom/sleepycat/je/log/Trace;

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/Trace;->msg:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/log/Trace;

    iget-object v1, v1, Lcom/sleepycat/je/log/Trace;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 134
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    .local v0, "unpacked":Z
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readTimestamp(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/je/utilint/Timestamp;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/log/Trace;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 136
    invoke-static {p1, v0, p2}, Lcom/sleepycat/je/log/LogUtils;->readString(Ljava/nio/ByteBuffer;ZI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/log/Trace;->msg:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/log/Trace;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/log/Trace;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/log/Trace;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeTimestamp(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/utilint/Timestamp;)V

    .line 129
    iget-object v0, p0, Lcom/sleepycat/je/log/Trace;->msg:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 130
    return-void
.end method
