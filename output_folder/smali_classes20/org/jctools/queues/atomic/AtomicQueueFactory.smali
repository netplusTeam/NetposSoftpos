.class public Lorg/jctools/queues/atomic/AtomicQueueFactory;
.super Ljava/lang/Object;
.source "AtomicQueueFactory.java"


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

    if-eqz v0, :cond_3

    .line 37
    invoke-virtual {p0}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->isSpsc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;

    iget v1, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->capacity:I

    invoke-direct {v0, v1}, Lorg/jctools/queues/atomic/SpscAtomicArrayQueue;-><init>(I)V

    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->isMpsc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;

    iget v1, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->capacity:I

    invoke-direct {v0, v1}, Lorg/jctools/queues/atomic/MpscAtomicArrayQueue;-><init>(I)V

    return-object v0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->isSpmc()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;

    iget v1, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->capacity:I

    invoke-direct {v0, v1}, Lorg/jctools/queues/atomic/SpmcAtomicArrayQueue;-><init>(I)V

    return-object v0

    .line 54
    :cond_2
    new-instance v0, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;

    iget v1, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->capacity:I

    invoke-direct {v0, v1}, Lorg/jctools/queues/atomic/MpmcAtomicArrayQueue;-><init>(I)V

    return-object v0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->isSpsc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    new-instance v0, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;

    invoke-direct {v0}, Lorg/jctools/queues/atomic/SpscLinkedAtomicQueue;-><init>()V

    return-object v0

    .line 65
    :cond_4
    invoke-virtual {p0}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->isMpsc()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    new-instance v0, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;

    invoke-direct {v0}, Lorg/jctools/queues/atomic/MpscLinkedAtomicQueue;-><init>()V

    return-object v0

    .line 70
    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method
