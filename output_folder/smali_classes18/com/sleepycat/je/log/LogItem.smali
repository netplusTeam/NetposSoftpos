.class public Lcom/sleepycat/je/log/LogItem;
.super Ljava/lang/Object;
.source "LogItem.java"


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public volatile cachedEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

.field public header:Lcom/sleepycat/je/log/LogEntryHeader;

.field public lsn:J

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/log/LogItem;->lsn:J

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/log/LogItem;->size:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/LogItem;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 50
    iput-object v0, p0, Lcom/sleepycat/je/log/LogItem;->buffer:Ljava/nio/ByteBuffer;

    .line 55
    iput-object v0, p0, Lcom/sleepycat/je/log/LogItem;->cachedEntry:Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    return-void
.end method
