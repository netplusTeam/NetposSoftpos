.class public Lcom/sleepycat/je/rep/util/AtomicLongMax;
.super Ljava/lang/Object;
.source "AtomicLongMax.java"


# instance fields
.field private final value:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "initialValue"    # J

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/AtomicLongMax;->value:Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    return-void
.end method


# virtual methods
.method public get()J
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/AtomicLongMax;->value:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(J)J
    .locals 2
    .param p1, "newValue"    # J

    .line 57
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/AtomicLongMax;->value:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public updateMax(J)J
    .locals 3
    .param p1, "newMax"    # J

    .line 33
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/AtomicLongMax;->value:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 34
    .local v0, "currMax":J
    :goto_0
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 35
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/AtomicLongMax;->value:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    return-wide p1

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/AtomicLongMax;->value:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_0

    .line 41
    :cond_1
    return-wide v0
.end method
