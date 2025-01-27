.class public Lcom/sleepycat/je/log/entry/TraceLogEntry;
.super Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;
.source "TraceLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry<",
        "Lcom/sleepycat/je/log/Trace;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAST_FORMAT_CHANGE:I = 0x8

.field private static volatile testPriorItem:Lcom/sleepycat/je/log/Loggable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/je/log/entry/TraceLogEntry;->testPriorItem:Lcom/sleepycat/je/log/Loggable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    const-class v0, Lcom/sleepycat/je/log/Trace;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;-><init>(Ljava/lang/Class;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/log/Trace;)V
    .locals 1
    .param p1, "trace"    # Lcom/sleepycat/je/log/Trace;

    .line 49
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TRACE:Lcom/sleepycat/je/log/LogEntryType;

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;-><init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/VersionedWriteLoggable;)V

    .line 50
    return-void
.end method

.method public static setTestPriorItem(Lcom/sleepycat/je/log/Loggable;)V
    .locals 0
    .param p0, "priorItem"    # Lcom/sleepycat/je/log/Loggable;

    .line 58
    sput-object p0, Lcom/sleepycat/je/log/entry/TraceLogEntry;->testPriorItem:Lcom/sleepycat/je/log/Loggable;

    .line 59
    return-void
.end method


# virtual methods
.method public bridge synthetic getEmbeddedLoggables()Ljava/util/Collection;
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->getEmbeddedLoggables()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getLastFormatChange()I
    .locals 1

    .line 63
    const/16 v0, 0x8

    return v0
.end method

.method public getSize(IZ)I
    .locals 1
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 73
    sget-object v0, Lcom/sleepycat/je/log/entry/TraceLogEntry;->testPriorItem:Lcom/sleepycat/je/log/Loggable;

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 74
    sget-object v0, Lcom/sleepycat/je/log/entry/TraceLogEntry;->testPriorItem:Lcom/sleepycat/je/log/Loggable;

    invoke-interface {v0}, Lcom/sleepycat/je/log/Loggable;->getLogSize()I

    move-result v0

    return v0

    .line 76
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->getSize(IZ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasReplicationFormat()Z
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->hasReplicationFormat()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z

    move-result p1

    return p1
.end method

.method public writeEntry(Ljava/nio/ByteBuffer;IZ)V
    .locals 1
    .param p1, "destBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 88
    sget-object v0, Lcom/sleepycat/je/log/entry/TraceLogEntry;->testPriorItem:Lcom/sleepycat/je/log/Loggable;

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 89
    sget-object v0, Lcom/sleepycat/je/log/entry/TraceLogEntry;->testPriorItem:Lcom/sleepycat/je/log/Loggable;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/log/Loggable;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/log/entry/SingleItemReplicableEntry;->writeEntry(Ljava/nio/ByteBuffer;IZ)V

    .line 93
    return-void
.end method
