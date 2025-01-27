.class Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "DataEraser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/DataEraser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EraserReader"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field entryType:Lcom/sleepycat/je/log/LogEntryType;

.field header:Lcom/sleepycat/je/log/LogEntryHeader;

.field isBIN:Z

.field isErased:Z

.field isLN:Z

.field logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

.field final synthetic this$0:Lcom/sleepycat/je/cleaner/DataEraser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1565
    const-class v0, Lcom/sleepycat/je/cleaner/DataEraser;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/cleaner/DataEraser;Ljava/lang/Long;)V
    .locals 11
    .param p2, "file"    # Ljava/lang/Long;

    .line 1573
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    .line 1574
    invoke-static {p1}, Lcom/sleepycat/je/cleaner/DataEraser;->access$500(Lcom/sleepycat/je/cleaner/DataEraser;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-static {p1}, Lcom/sleepycat/je/cleaner/DataEraser;->access$100(Lcom/sleepycat/je/cleaner/DataEraser;)Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object p1

    iget v2, p1, Lcom/sleepycat/je/cleaner/Cleaner;->readBufferSize:I

    .line 1576
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 p1, 0x0

    invoke-static {v3, v4, p1}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v4

    .line 1574
    const/4 v3, 0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 1580
    return-void
.end method


# virtual methods
.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 5
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 1585
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->getAndResetNReads()I

    move-result v0

    .line 1586
    .local v0, "readOps":I
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/DataEraser;->access$000(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1587
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/DataEraser;->access$200(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/DataEraser;->access$100(Lcom/sleepycat/je/cleaner/DataEraser;)Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v2

    iget v2, v2, Lcom/sleepycat/je/cleaner/Cleaner;->readBufferSize:I

    mul-int/2addr v2, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1589
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/DataEraser;->access$300(Lcom/sleepycat/je/cleaner/DataEraser;)Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getEntrySize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->throttle(J)V

    .line 1590
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/DataEraser;->access$400(Lcom/sleepycat/je/cleaner/DataEraser;)V

    .line 1592
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    iput-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 1593
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->isLN:Z

    .line 1594
    iput-boolean v2, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->isBIN:Z

    .line 1595
    iput-boolean v2, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->isErased:Z

    .line 1596
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 1597
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v1

    invoke-static {v1}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    .line 1598
    if-eqz v1, :cond_4

    .line 1600
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryType;->isUserLNType()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1601
    iput-boolean v3, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->isLN:Z

    goto :goto_1

    .line 1602
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 1603
    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1605
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_ERASED:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v1, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1606
    iput-boolean v3, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->isErased:Z

    goto :goto_1

    .line 1608
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->skipEntry(Ljava/nio/ByteBuffer;)V

    .line 1609
    return v2

    .line 1604
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->isBIN:Z

    .line 1612
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->entryType:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 1613
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/DataEraser$EraserReader;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-interface {v1, v2, v4, p1}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 1614
    return v3

    .line 1598
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
