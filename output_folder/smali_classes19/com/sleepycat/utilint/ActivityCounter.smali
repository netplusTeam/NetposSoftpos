.class public Lcom/sleepycat/utilint/ActivityCounter;
.super Ljava/lang/Object;
.source "ActivityCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;
    }
.end annotation


# instance fields
.field private final activeCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final activeThreshold:I

.field private final dumper:Ljava/util/concurrent/ExecutorService;

.field private volatile lastThreadDumpTime:J

.field private final logger:Ljava/util/logging/Logger;

.field private final maxActivity:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final maxNumDumps:I

.field private volatile numCompletedDumps:I

.field private final requiredIntervalMillis:J

.field private final threadDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(IJILjava/util/logging/Logger;)V
    .locals 2
    .param p1, "activeThreshold"    # I
    .param p2, "requiredIntervalMillis"    # J
    .param p4, "maxNumDumps"    # I
    .param p5, "logger"    # Ljava/util/logging/Logger;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->activeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->threadDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->maxActivity:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    iput p1, p0, Lcom/sleepycat/utilint/ActivityCounter;->activeThreshold:I

    .line 58
    iput-wide p2, p0, Lcom/sleepycat/utilint/ActivityCounter;->requiredIntervalMillis:J

    .line 59
    iput p4, p0, Lcom/sleepycat/utilint/ActivityCounter;->maxNumDumps:I

    .line 60
    iput-object p5, p0, Lcom/sleepycat/utilint/ActivityCounter;->logger:Ljava/util/logging/Logger;

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->dumper:Ljava/util/concurrent/ExecutorService;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/utilint/ActivityCounter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/utilint/ActivityCounter;

    .line 28
    invoke-direct {p0}, Lcom/sleepycat/utilint/ActivityCounter;->intervalIsTooShort()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sleepycat/utilint/ActivityCounter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/utilint/ActivityCounter;

    .line 28
    iget-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->threadDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/utilint/ActivityCounter;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/utilint/ActivityCounter;

    .line 28
    iget-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sleepycat/utilint/ActivityCounter;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/utilint/ActivityCounter;
    .param p1, "x1"    # J

    .line 28
    iput-wide p1, p0, Lcom/sleepycat/utilint/ActivityCounter;->lastThreadDumpTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/sleepycat/utilint/ActivityCounter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/utilint/ActivityCounter;

    .line 28
    iget v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->numCompletedDumps:I

    return v0
.end method

.method static synthetic access$508(Lcom/sleepycat/utilint/ActivityCounter;)I
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/utilint/ActivityCounter;

    .line 28
    iget v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->numCompletedDumps:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sleepycat/utilint/ActivityCounter;->numCompletedDumps:I

    return v0
.end method

.method private check(I)V
    .locals 3
    .param p1, "numActive"    # I

    .line 98
    iget v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->activeThreshold:I

    if-gt p1, v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    iget v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->numCompletedDumps:I

    iget v1, p0, Lcom/sleepycat/utilint/ActivityCounter;->maxNumDumps:I

    if-lt v0, v1, :cond_1

    .line 103
    return-void

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/utilint/ActivityCounter;->intervalIsTooShort()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->threadDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    return-void

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->dumper:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/utilint/ActivityCounter$GetStackTraces;-><init>(Lcom/sleepycat/utilint/ActivityCounter;Lcom/sleepycat/utilint/ActivityCounter$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method private intervalIsTooShort()Z
    .locals 4

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/utilint/ActivityCounter;->lastThreadDumpTime:J

    sub-long/2addr v0, v2

    .line 87
    .local v0, "interval":J
    iget-wide v2, p0, Lcom/sleepycat/utilint/ActivityCounter;->requiredIntervalMillis:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->activeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 78
    return-void
.end method

.method public getAndClearMaxActivity()I
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->maxActivity:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    return v0
.end method

.method public getNumCompletedDumps()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->numCompletedDumps:I

    return v0
.end method

.method public start()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/sleepycat/utilint/ActivityCounter;->activeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 68
    .local v0, "numActive":I
    iget-object v1, p0, Lcom/sleepycat/utilint/ActivityCounter;->maxActivity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 69
    .local v1, "max":I
    if-le v0, v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/sleepycat/utilint/ActivityCounter;->maxActivity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 72
    :cond_0
    invoke-direct {p0, v0}, Lcom/sleepycat/utilint/ActivityCounter;->check(I)V

    .line 73
    return-void
.end method
