.class public Lorg/jctools/queues/QueueFactory;
.super Ljava/lang/Object;
.source "QueueFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newQueue(Lorg/jctools/queues/spec/ConcurrentQueueSpec;)Ljava/util/Queue;
    .locals 2
    .param p0, "qs"    # Lorg/jctools/queues/spec/ConcurrentQueueSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jctools/queues/spec/ConcurrentQueueSpec;",
            ")",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    invoke-virtual {p0}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->isSpsc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lorg/jctools/queues/SpscArrayQueue;

    iget v1, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->capacity:I

    invoke-direct {v0, v1}, Lorg/jctools/queues/SpscArrayQueue;-><init>(I)V

    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->isMpsc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->ordering:Lorg/jctools/queues/spec/Ordering;

    sget-object v1, Lorg/jctools/queues/spec/Ordering;->NONE:Lorg/jctools/queues/spec/Ordering;

    if-eq v0, v1, :cond_1

    .line 46
    new-instance v0, Lorg/jctools/queues/MpscArrayQueue;

    iget v1, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->capacity:I

    invoke-direct {v0, v1}, Lorg/jctools/queues/MpscArrayQueue;-><init>(I)V

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lorg/jctools/queues/MpscCompoundQueue;

    iget v1, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->capacity:I

    invoke-direct {v0, v1}, Lorg/jctools/queues/MpscCompoundQueue;-><init>(I)V

    return-object v0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->isSpmc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    new-instance v0, Lorg/jctools/queues/SpmcArrayQueue;

    iget v1, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->capacity:I

    invoke-direct {v0, v1}, Lorg/jctools/queues/SpmcArrayQueue;-><init>(I)V

    return-object v0

    .line 61
    :cond_3
    new-instance v0, Lorg/jctools/queues/MpmcArrayQueue;

    iget v1, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->capacity:I

    invoke-direct {v0, v1}, Lorg/jctools/queues/MpmcArrayQueue;-><init>(I)V

    return-object v0

    .line 67
    :cond_4
    invoke-virtual {p0}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->isSpsc()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    new-instance v0, Lorg/jctools/queues/SpscLinkedQueue;

    invoke-direct {v0}, Lorg/jctools/queues/SpscLinkedQueue;-><init>()V

    return-object v0

    .line 72
    :cond_5
    invoke-virtual {p0}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->isMpsc()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 74
    invoke-static {}, Lorg/jctools/queues/MpscLinkedQueue;->newMpscLinkedQueue()Lorg/jctools/queues/MpscLinkedQueue;

    move-result-object v0

    return-object v0

    .line 77
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method
