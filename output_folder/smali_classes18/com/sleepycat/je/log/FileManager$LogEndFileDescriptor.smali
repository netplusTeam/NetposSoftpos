.class Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogEndFileDescriptor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private endOfLogRWFile:Ljava/io/RandomAccessFile;

.field private endOfLogSyncFile:Ljava/io/RandomAccessFile;

.field private final fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

.field private final queuedWrites:[B

.field private queuedWritesPosition:I

.field private qwFileNum:J

.field private qwStartingOffset:J

.field final synthetic this$0:Lcom/sleepycat/je/log/FileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2860
    const-class v0, Lcom/sleepycat/je/log/FileManager;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/log/FileManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/log/FileManager;

    .line 2860
    iput-object p1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->endOfLogRWFile:Ljava/io/RandomAccessFile;

    .line 2862
    iput-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->endOfLogSyncFile:Ljava/io/RandomAccessFile;

    .line 2863
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2875
    nop

    .line 2876
    invoke-static {p1}, Lcom/sleepycat/je/log/FileManager;->access$1000(Lcom/sleepycat/je/log/FileManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sleepycat/je/log/FileManager;->access$1100(Lcom/sleepycat/je/log/FileManager;)I

    move-result v0

    new-array v0, v0, [B

    :cond_0
    iput-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWrites:[B

    .line 2879
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    .line 2885
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwFileNum:J

    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;JZ)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 2860
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->getWritableFile(JZ)Ljava/io/RandomAccessFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;

    .line 2860
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2860
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->dequeuePendingWrites1()V

    return-void
.end method

.method static synthetic access$500(Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2860
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->force()V

    return-void
.end method

.method private dequeuePendingWrites()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 3060
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3062
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3064
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->dequeuePendingWrites1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3066
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3067
    nop

    .line 3068
    return-void

    .line 3066
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 3060
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private dequeuePendingWrites1()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 3076
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3079
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWrites:[B

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3081
    :try_start_1
    iget v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    if-nez v1, :cond_0

    .line 3082
    monitor-exit v0

    return-void

    .line 3085
    :cond_0
    iget-wide v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwFileNum:J

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->getWritableFile(JZ)Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 3086
    .local v1, "file":Ljava/io/RandomAccessFile;
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3087
    :try_start_2
    iget-wide v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwStartingOffset:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3088
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWrites:[B

    iget v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 3089
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    iget-object v2, v2, Lcom/sleepycat/je/log/FileManager;->nBytesWrittenFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

    iget v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 3090
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    iget-object v2, v2, Lcom/sleepycat/je/log/FileManager;->nWritesFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 3091
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    iget-boolean v2, v2, Lcom/sleepycat/je/log/FileManager;->VERIFY_CHECKSUMS:Z

    if-eqz v2, :cond_1

    .line 3092
    iget-wide v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwStartingOffset:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3093
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWrites:[B

    iget v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 3094
    iget v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    .line 3095
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3096
    .local v2, "bb":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWrites:[B

    iget v5, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    invoke-virtual {v2, v4, v3, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 3097
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3098
    iget-object v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    iget-wide v5, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwStartingOffset:J

    const-string v7, "post-write"

    invoke-static {v4, v2, v5, v6, v7}, Lcom/sleepycat/je/log/FileManager;->access$1300(Lcom/sleepycat/je/log/FileManager;Ljava/nio/ByteBuffer;JLjava/lang/String;)V

    .line 3101
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3104
    :try_start_3
    iput v3, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    .line 3105
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3109
    nop

    .line 3110
    return-void

    .line 3101
    .restart local v1    # "file":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    .line 3105
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3106
    :catch_0
    move-exception v0

    .line 3107
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sleepycat/je/LogWriteException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    .line 3108
    invoke-static {v2}, Lcom/sleepycat/je/log/FileManager;->access$1200(Lcom/sleepycat/je/log/FileManager;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    const-string v3, "IOException during fsync"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/LogWriteException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3076
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private enqueueWrite1(J[BJII)V
    .locals 8
    .param p1, "fileNum"    # J
    .param p3, "data"    # [B
    .param p4, "destOffset"    # J
    .param p6, "arrayOffset"    # I
    .param p7, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/utilint/RelatchRequiredException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 3000
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwFileNum:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 3001
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->dequeuePendingWrites()V

    .line 3002
    iput-wide p1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwFileNum:J

    .line 3005
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWrites:[B

    monitor-enter v0

    .line 3006
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    .line 3007
    invoke-static {v1}, Lcom/sleepycat/je/log/FileManager;->access$1100(Lcom/sleepycat/je/log/FileManager;)I

    move-result v1

    iget v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    sub-int/2addr v1, v2

    if-ge v1, p7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3008
    .local v1, "overflow":Z
    :goto_0
    if-nez v1, :cond_5

    .line 3022
    iget-wide v3, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwFileNum:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_4

    .line 3023
    move v3, v2

    .line 3024
    .local v3, "curPos":I
    if-nez v3, :cond_2

    .line 3029
    iput-wide p4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwStartingOffset:J

    .line 3032
    :cond_2
    int-to-long v4, v3

    iget-wide v6, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwStartingOffset:J

    add-long/2addr v4, v6

    cmp-long v4, v4, p4

    if-nez v4, :cond_3

    .line 3040
    iget-object v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWrites:[B

    invoke-static {p3, p6, v4, v2, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3043
    iget v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    add-int/2addr v2, p7

    iput v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    .line 3044
    .end local v1    # "overflow":Z
    .end local v3    # "curPos":I
    monitor-exit v0

    .line 3045
    return-void

    .line 3033
    .restart local v1    # "overflow":Z
    .restart local v3    # "curPos":I
    :cond_3
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    .line 3034
    invoke-static {v4}, Lcom/sleepycat/je/log/FileManager;->access$1200(Lcom/sleepycat/je/log/FileManager;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "non-consecutive writes queued. qwPos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " write destOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .end local p1    # "fileNum":J
    .end local p3    # "data":[B
    .end local p4    # "destOffset":J
    .end local p6    # "arrayOffset":I
    .end local p7    # "size":I
    throw v2

    .line 3022
    .end local v3    # "curPos":I
    .restart local p1    # "fileNum":J
    .restart local p3    # "data":[B
    .restart local p4    # "destOffset":J
    .restart local p6    # "arrayOffset":I
    .restart local p7    # "size":I
    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "fileNum":J
    .end local p3    # "data":[B
    .end local p4    # "destOffset":J
    .end local p6    # "arrayOffset":I
    .end local p7    # "size":I
    throw v2

    .line 3009
    .restart local p1    # "fileNum":J
    .restart local p3    # "data":[B
    .restart local p4    # "destOffset":J
    .restart local p6    # "arrayOffset":I
    .restart local p7    # "size":I
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    iget-object v2, v2, Lcom/sleepycat/je/log/FileManager;->nWriteQueueOverflow:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 3019
    sget-object v2, Lcom/sleepycat/je/utilint/RelatchRequiredException;->relatchRequiredException:Lcom/sleepycat/je/utilint/RelatchRequiredException;

    .end local p1    # "fileNum":J
    .end local p3    # "data":[B
    .end local p4    # "destOffset":J
    .end local p6    # "arrayOffset":I
    .end local p7    # "size":I
    throw v2

    .line 3044
    .end local v1    # "overflow":Z
    .restart local p1    # "fileNum":J
    .restart local p3    # "data":[B
    .restart local p4    # "destOffset":J
    .restart local p6    # "arrayOffset":I
    .restart local p7    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private force()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3179
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3183
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    invoke-static {v0}, Lcom/sleepycat/je/log/FileManager;->access$1000(Lcom/sleepycat/je/log/FileManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3184
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->dequeuePendingWrites1()V

    .line 3187
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->endOfLogSyncFile:Ljava/io/RandomAccessFile;

    .line 3188
    .local v0, "file":Ljava/io/RandomAccessFile;
    if-eqz v0, :cond_3

    .line 3189
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    const-string v2, "fsync"

    invoke-static {v1, v2}, Lcom/sleepycat/je/log/FileManager;->access$1500(Lcom/sleepycat/je/log/FileManager;Ljava/lang/String;)V

    .line 3190
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 3192
    .local v1, "ch":Ljava/nio/channels/FileChannel;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3194
    .local v2, "start":J
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3206
    nop

    .line 3207
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 3208
    .local v5, "fSyncMs":J
    iget-object v7, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v7, v5, v6}, Lcom/sleepycat/je/log/FileManager;->noteFsyncTime(J)Z

    move-result v7

    .line 3209
    .local v7, "newMax":Z
    if-eqz v7, :cond_1

    iget-object v8, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    .line 3210
    invoke-static {v8}, Lcom/sleepycat/je/log/FileManager;->access$1600(Lcom/sleepycat/je/log/FileManager;)I

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    .line 3211
    invoke-static {v8}, Lcom/sleepycat/je/log/FileManager;->access$1600(Lcom/sleepycat/je/log/FileManager;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v5, v8

    if-lez v8, :cond_1

    .line 3213
    iget-object v8, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    .line 3214
    invoke-static {v8}, Lcom/sleepycat/je/log/FileManager;->access$1200(Lcom/sleepycat/je/log/FileManager;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    iget-object v9, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    invoke-static {v9}, Lcom/sleepycat/je/log/FileManager;->access$1200(Lcom/sleepycat/je/log/FileManager;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v9

    const-string v10, "FSync time of %d ms exceeds limit (%d ms)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    .line 3217
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v4

    const/4 v4, 0x1

    iget-object v12, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    invoke-static {v12}, Lcom/sleepycat/je/log/FileManager;->access$1600(Lcom/sleepycat/je/log/FileManager;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    .line 3215
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3213
    invoke-static {v8, v9, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 3220
    :cond_1
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maybeForceYield()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3195
    .end local v5    # "fSyncMs":J
    .end local v7    # "newMax":Z
    :catch_0
    move-exception v4

    .line 3202
    .local v4, "e":Ljava/nio/channels/ClosedChannelException;
    new-instance v5, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v6, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    .line 3203
    invoke-static {v6}, Lcom/sleepycat/je/log/FileManager;->access$1200(Lcom/sleepycat/je/log/FileManager;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    const-string v7, "Channel closed, may be due to thread interrupt"

    invoke-direct {v5, v6, v7, v4}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3224
    .end local v1    # "ch":Ljava/nio/channels/FileChannel;
    .end local v2    # "start":J
    .end local v4    # "e":Ljava/nio/channels/ClosedChannelException;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    invoke-static {v1}, Lcom/sleepycat/je/log/FileManager;->access$1000(Lcom/sleepycat/je/log/FileManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3225
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->dequeuePendingWrites1()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3228
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3229
    nop

    .line 3230
    return-void

    .line 3228
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private getWritableFile(JZ)Ljava/io/RandomAccessFile;
    .locals 4
    .param p1, "fileNumber"    # J
    .param p3, "doLock"    # Z

    .line 3122
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->endOfLogRWFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_2

    .line 3133
    if-eqz p3, :cond_0

    .line 3134
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3137
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    .line 3139
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getAppropriateReadWriteMode()Lcom/sleepycat/je/log/FileManager$FileMode;

    move-result-object v1

    .line 3138
    invoke-static {v0, p1, p2, v1}, Lcom/sleepycat/je/log/FileManager;->access$1400(Lcom/sleepycat/je/log/FileManager;JLcom/sleepycat/je/log/FileManager$FileMode;)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v0

    .line 3140
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->endOfLogRWFile:Ljava/io/RandomAccessFile;

    .line 3141
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    .line 3143
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getAppropriateReadWriteMode()Lcom/sleepycat/je/log/FileManager$FileMode;

    move-result-object v1

    .line 3142
    invoke-static {v0, p1, p2, v1}, Lcom/sleepycat/je/log/FileManager;->access$1400(Lcom/sleepycat/je/log/FileManager;JLcom/sleepycat/je/log/FileManager$FileMode;)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v0

    .line 3144
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->endOfLogSyncFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3146
    if-eqz p3, :cond_2

    .line 3147
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3146
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_1

    .line 3147
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    nop

    .end local p1    # "fileNumber":J
    .end local p3    # "doLock":Z
    throw v0

    .line 3152
    .restart local p1    # "fileNumber":J
    .restart local p3    # "doLock":Z
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->endOfLogRWFile:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 3153
    :catch_0
    move-exception v0

    .line 3159
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    .line 3160
    invoke-static {v2}, Lcom/sleepycat/je/log/FileManager;->access$1200(Lcom/sleepycat/je/log/FileManager;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method checkWriteCache(Ljava/nio/ByteBuffer;JJ)Z
    .locals 9
    .param p1, "readBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "requestedOffset"    # J
    .param p4, "fileNum"    # J

    .line 2911
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2912
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2913
    .local v1, "targetBufSize":I
    iget-object v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWrites:[B

    monitor-enter v2

    .line 2914
    :try_start_0
    iget-wide v3, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwFileNum:J

    cmp-long v3, v3, p4

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2915
    monitor-exit v2

    return v4

    .line 2918
    :cond_0
    iget v3, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    if-nez v3, :cond_1

    .line 2919
    monitor-exit v2

    return v4

    .line 2922
    :cond_1
    iget-wide v5, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwStartingOffset:J

    cmp-long v7, p2, v5

    if-ltz v7, :cond_3

    int-to-long v7, v3

    add-long/2addr v7, v5

    cmp-long v7, v7, p2

    if-gtz v7, :cond_2

    goto :goto_0

    .line 2929
    :cond_2
    int-to-long v3, v3

    sub-long v5, p2, v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    .line 2932
    .local v3, "nBytesToCopy":I
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v4

    .line 2933
    iget-object v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWrites:[B

    iget-wide v5, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwStartingOffset:J

    sub-long v5, p2, v5

    long-to-int v5, v5

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2936
    iget-object v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    iget-object v4, v4, Lcom/sleepycat/je/log/FileManager;->nBytesReadFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 2937
    iget-object v4, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    iget-object v4, v4, Lcom/sleepycat/je/log/FileManager;->nReadsFromWriteQueue:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 2938
    const/4 v4, 0x1

    monitor-exit v2

    return v4

    .line 2925
    .end local v3    # "nBytesToCopy":I
    :cond_3
    :goto_0
    monitor-exit v2

    return v4

    .line 2939
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3244
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3246
    const/4 v0, 0x0

    .line 3247
    .local v0, "firstException":Ljava/io/IOException;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->endOfLogRWFile:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3248
    nop

    .line 3254
    .local v1, "file":Ljava/io/RandomAccessFile;
    iput-object v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->endOfLogRWFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3256
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3260
    goto :goto_0

    .line 3257
    :catch_0
    move-exception v3

    .line 3259
    .local v3, "e":Ljava/io/IOException;
    move-object v0, v3

    .line 3262
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->endOfLogSyncFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 3263
    nop

    .line 3269
    .restart local v1    # "file":Ljava/io/RandomAccessFile;
    iput-object v2, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->endOfLogSyncFile:Ljava/io/RandomAccessFile;

    .line 3270
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3273
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    :cond_1
    if-nez v0, :cond_2

    .line 3277
    .end local v0    # "firstException":Ljava/io/IOException;
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3278
    nop

    .line 3279
    return-void

    .line 3274
    .restart local v0    # "firstException":Ljava/io/IOException;
    :cond_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3277
    .end local v0    # "firstException":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method enqueueWrite(J[BJII)Z
    .locals 2
    .param p1, "fileNum"    # J
    .param p3, "data"    # [B
    .param p4, "destOffset"    # J
    .param p6, "arrayOffset"    # I
    .param p7, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2957
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->fsyncFileSynchronizer:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2959
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2961
    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->enqueueWrite1(J[BJII)V
    :try_end_0
    .catch Lcom/sleepycat/je/utilint/RelatchRequiredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2963
    const/4 v1, 0x1

    return v1

    .line 2964
    :catch_0
    move-exception v1

    .line 2965
    .local v1, "RE":Lcom/sleepycat/je/utilint/RelatchRequiredException;
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->dequeuePendingWrites()V

    .line 2959
    .end local v1    # "RE":Lcom/sleepycat/je/utilint/RelatchRequiredException;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2970
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->this$0:Lcom/sleepycat/je/log/FileManager;

    iget-object v0, v0, Lcom/sleepycat/je/log/FileManager;->nWriteQueueOverflowFailures:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 2971
    const/4 v0, 0x0

    return v0

    .line 2957
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method hasQueuedWrites()Z
    .locals 1

    .line 3051
    iget v0, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->queuedWritesPosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setQueueFileNum(J)V
    .locals 0
    .param p1, "qwFileNum"    # J

    .line 2889
    iput-wide p1, p0, Lcom/sleepycat/je/log/FileManager$LogEndFileDescriptor;->qwFileNum:J

    .line 2890
    return-void
.end method
