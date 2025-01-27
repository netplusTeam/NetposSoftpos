.class Lcom/sleepycat/je/cleaner/DataEraser$1;
.super Lcom/sleepycat/je/log/FileReader;
.source "DataEraser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/cleaner/DataEraser;->searchFileForLastVLSN(Ljava/lang/Long;)Lcom/sleepycat/je/utilint/VLSN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/cleaner/DataEraser;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/cleaner/DataEraser;Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V
    .locals 13
    .param p1, "this$0"    # Lcom/sleepycat/je/cleaner/DataEraser;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "readBufferSize"    # I
    .param p4, "forward"    # Z
    .param p5, "startLsn"    # J
    .param p7, "singleFileNumber"    # Ljava/lang/Long;
    .param p8, "endOfFileLsn"    # J
    .param p10, "finishLsn"    # J

    .line 1254
    move-object v11, p0

    move-object v12, p1

    iput-object v12, v11, Lcom/sleepycat/je/cleaner/DataEraser$1;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    return-void
.end method


# virtual methods
.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 1259
    invoke-virtual {p0}, Lcom/sleepycat/je/cleaner/DataEraser$1;->getAndResetNReads()I

    move-result v0

    .line 1260
    .local v0, "readOps":I
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$1;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/DataEraser;->access$000(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1261
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$1;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/DataEraser;->access$200(Lcom/sleepycat/je/cleaner/DataEraser;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser$1;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/DataEraser;->access$100(Lcom/sleepycat/je/cleaner/DataEraser;)Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v2

    iget v2, v2, Lcom/sleepycat/je/cleaner/Cleaner;->readBufferSize:I

    mul-int/2addr v2, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1263
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$1;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/DataEraser;->access$300(Lcom/sleepycat/je/cleaner/DataEraser;)Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/DataEraser$1;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getEntrySize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/cleaner/DataEraser$WorkThrottle;->throttle(J)V

    .line 1264
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$1;->this$0:Lcom/sleepycat/je/cleaner/DataEraser;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/DataEraser;->access$400(Lcom/sleepycat/je/cleaner/DataEraser;)V

    .line 1267
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/cleaner/DataEraser$1;->skipEntry(Ljava/nio/ByteBuffer;)V

    .line 1273
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DataEraser$1;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getReplicated()Z

    move-result v1

    return v1
.end method
