.class public Lcom/sleepycat/je/latch/TimingLatch;
.super Lcom/sleepycat/je/latch/LatchImpl;
.source "TimingLatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/latch/TimingLatch$ReleaseEvent;,
        Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;,
        Lcom/sleepycat/je/latch/TimingLatch$AcquireRequestEvent;
    }
.end annotation


# static fields
.field private static final PREV_HOLD_THRESHOLD_NANOS:I = 0xc350

.field private static final WAIT_THRESHOLD_NANOS:I = 0xc350


# instance fields
.field private acquireTime:J

.field private final debug:Z

.field private final holdThreshold:I

.field private lastThread:Ljava/lang/Thread;

.field private releaseTime:J

.field private final waitThreshold:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/latch/LatchContext;Z)V
    .locals 1
    .param p1, "context"    # Lcom/sleepycat/je/latch/LatchContext;
    .param p2, "debug"    # Z

    .line 42
    invoke-direct {p0, p1}, Lcom/sleepycat/je/latch/LatchImpl;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    .line 43
    iput-boolean p2, p0, Lcom/sleepycat/je/latch/TimingLatch;->debug:Z

    .line 44
    const v0, 0xc350

    iput v0, p0, Lcom/sleepycat/je/latch/TimingLatch;->waitThreshold:I

    .line 45
    iput v0, p0, Lcom/sleepycat/je/latch/TimingLatch;->holdThreshold:I

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/latch/LatchContext;ZII)V
    .locals 0
    .param p1, "context"    # Lcom/sleepycat/je/latch/LatchContext;
    .param p2, "debug"    # Z
    .param p3, "waitThreshold"    # I
    .param p4, "holdThreshold"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/sleepycat/je/latch/LatchImpl;-><init>(Lcom/sleepycat/je/latch/LatchContext;)V

    .line 53
    iput-boolean p2, p0, Lcom/sleepycat/je/latch/TimingLatch;->debug:Z

    .line 54
    iput p3, p0, Lcom/sleepycat/je/latch/TimingLatch;->waitThreshold:I

    .line 55
    iput p4, p0, Lcom/sleepycat/je/latch/TimingLatch;->holdThreshold:I

    .line 56
    return-void
.end method


# virtual methods
.method public acquireExclusive()V
    .locals 14

    .line 131
    iget-boolean v0, p0, Lcom/sleepycat/je/latch/TimingLatch;->debug:Z

    if-nez v0, :cond_0

    .line 132
    invoke-super {p0}, Lcom/sleepycat/je/latch/LatchImpl;->acquireExclusive()V

    .line 133
    return-void

    .line 137
    :cond_0
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/latch/TimingLatch$AcquireRequestEvent;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/latch/TimingLatch$AcquireRequestEvent;-><init>(Lcom/sleepycat/je/latch/TimingLatch;)V

    invoke-static {v0}, Lcom/sleepycat/je/utilint/EventTrace;->addEvent(Lcom/sleepycat/je/utilint/EventTrace;)Z

    .line 138
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/TimingLatch;->acquireExclusiveNoWait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    new-instance v0, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;

    .line 140
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;-><init>(Lcom/sleepycat/je/latch/TimingLatch;JJ)V

    invoke-static {v0}, Lcom/sleepycat/je/utilint/EventTrace;->addEvent(Lcom/sleepycat/je/utilint/EventTrace;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/latch/TimingLatch;->acquireTime:J

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/latch/TimingLatch;->lastThread:Ljava/lang/Thread;

    .line 141
    return-void

    .line 144
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 145
    .local v0, "startWait":J
    invoke-super {p0}, Lcom/sleepycat/je/latch/LatchImpl;->acquireExclusive()V

    .line 146
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 147
    .local v2, "endWait":J
    sub-long v10, v2, v0

    .line 148
    .local v10, "ourWaitTime":J
    new-instance v12, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;

    .line 149
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-object v4, v12

    move-object v5, p0

    move-wide v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/je/latch/TimingLatch$AcquireCompleteEvent;-><init>(Lcom/sleepycat/je/latch/TimingLatch;JJ)V

    invoke-static {v12}, Lcom/sleepycat/je/utilint/EventTrace;->addEvent(Lcom/sleepycat/je/utilint/EventTrace;)Z

    .line 150
    iget-wide v4, p0, Lcom/sleepycat/je/latch/TimingLatch;->releaseTime:J

    iget-wide v6, p0, Lcom/sleepycat/je/latch/TimingLatch;->acquireTime:J

    sub-long/2addr v4, v6

    .line 151
    .local v4, "previousHoldTime":J
    iget v6, p0, Lcom/sleepycat/je/latch/TimingLatch;->holdThreshold:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/sleepycat/je/latch/TimingLatch;->waitThreshold:I

    int-to-long v6, v6

    cmp-long v6, v10, v6

    if-lez v6, :cond_3

    .line 153
    :cond_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "%1tT %s waited %,d nanosec for %s\n Previous held by %s for %,d nanosec."

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v8, v12

    const/4 v9, 0x1

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    aput-object v13, v8, v9

    const/4 v9, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v8, v9

    const/4 v9, 0x3

    .line 158
    invoke-virtual {p0}, Lcom/sleepycat/je/latch/TimingLatch;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v9

    const/4 v9, 0x4

    iget-object v13, p0, Lcom/sleepycat/je/latch/TimingLatch;->lastThread:Ljava/lang/Thread;

    aput-object v13, v8, v9

    const/4 v9, 0x5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v8, v9

    .line 154
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v6}, Lcom/sleepycat/je/utilint/EventTrace;->dumpEvents(Ljava/io/PrintStream;)V

    .line 160
    sput-boolean v12, Lcom/sleepycat/je/utilint/EventTrace;->disableEvents:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v0    # "startWait":J
    .end local v2    # "endWait":J
    .end local v4    # "previousHoldTime":J
    .end local v10    # "ourWaitTime":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/latch/TimingLatch;->acquireTime:J

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/latch/TimingLatch;->lastThread:Ljava/lang/Thread;

    .line 165
    nop

    .line 166
    return-void

    .line 163
    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/latch/TimingLatch;->acquireTime:J

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/latch/TimingLatch;->lastThread:Ljava/lang/Thread;

    throw v0
.end method

.method public release()V
    .locals 3

    .line 125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/latch/TimingLatch;->releaseTime:J

    .line 126
    new-instance v0, Lcom/sleepycat/je/latch/TimingLatch$ReleaseEvent;

    iget-wide v1, p0, Lcom/sleepycat/je/latch/TimingLatch;->releaseTime:J

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/je/latch/TimingLatch$ReleaseEvent;-><init>(Lcom/sleepycat/je/latch/TimingLatch;J)V

    invoke-static {v0}, Lcom/sleepycat/je/utilint/EventTrace;->addEvent(Lcom/sleepycat/je/utilint/EventTrace;)Z

    .line 127
    invoke-super {p0}, Lcom/sleepycat/je/latch/LatchImpl;->release()V

    .line 128
    return-void
.end method
