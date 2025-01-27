.class public Lorg/jpos/util/BlockingQueue;
.super Ljava/lang/Object;
.source "BlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/util/BlockingQueue$Closed;
    }
.end annotation


# instance fields
.field private closed:Z

.field private consumers:I

.field private queue:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/util/BlockingQueue;->closed:Z

    .line 32
    iput v0, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 92
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jpos/util/BlockingQueue;->closed:Z

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 91
    .end local p0    # "this":Lorg/jpos/util/BlockingQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized consumerCount()I
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget v0, p0, Lorg/jpos/util/BlockingQueue;->consumers:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 96
    .end local p0    # "this":Lorg/jpos/util/BlockingQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized consumerDeficit()I
    .locals 2

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lorg/jpos/util/BlockingQueue;->consumers:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 100
    .end local p0    # "this":Lorg/jpos/util/BlockingQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dequeue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jpos/util/BlockingQueue$Closed;
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    iget v0, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jpos/util/BlockingQueue;->consumers:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 61
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    .line 62
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 63
    iget-boolean v0, p0, Lorg/jpos/util/BlockingQueue;->closed:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lorg/jpos/util/BlockingQueue$Closed;

    invoke-direct {v0}, Lorg/jpos/util/BlockingQueue$Closed;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_3
    iget v0, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    .line 68
    nop

    .line 69
    iget-object v0, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    .line 67
    .end local p0    # "this":Lorg/jpos/util/BlockingQueue;
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_4
    iget v1, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    .line 68
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 58
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dequeue(J)Ljava/lang/Object;
    .locals 4
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jpos/util/BlockingQueue$Closed;
        }
    .end annotation

    monitor-enter p0

    .line 75
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/util/BlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    .line 78
    .end local p0    # "this":Lorg/jpos/util/BlockingQueue;
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-long/2addr v0, p1

    .line 81
    .local v0, "maxTime":J
    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 82
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 83
    iget-boolean v2, p0, Lorg/jpos/util/BlockingQueue;->closed:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    new-instance v2, Lorg/jpos/util/BlockingQueue$Closed;

    invoke-direct {v2}, Lorg/jpos/util/BlockingQueue$Closed;-><init>()V

    .end local v0    # "maxTime":J
    .end local p1    # "timeout":J
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .restart local v0    # "maxTime":J
    .restart local p1    # "timeout":J
    :cond_2
    :try_start_3
    iget v2, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    .line 88
    nop

    .line 89
    iget-object v2, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    monitor-exit p0

    return-object v2

    .line 87
    :catchall_0
    move-exception v2

    :try_start_4
    iget v3, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jpos/util/BlockingQueue;->consumers:I

    .line 88
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    .end local v0    # "maxTime":J
    .end local p1    # "timeout":J
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enqueue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/BlockingQueue$Closed;
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lorg/jpos/util/BlockingQueue;->closed:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 45
    .end local p0    # "this":Lorg/jpos/util/BlockingQueue;
    :cond_0
    :try_start_1
    new-instance v0, Lorg/jpos/util/BlockingQueue$Closed;

    invoke-direct {v0}, Lorg/jpos/util/BlockingQueue$Closed;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getQueue()Ljava/util/LinkedList;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized pending()I
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 107
    .end local p0    # "this":Lorg/jpos/util/BlockingQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ready()Z
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lorg/jpos/util/BlockingQueue;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 104
    .end local p0    # "this":Lorg/jpos/util/BlockingQueue;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requeue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/BlockingQueue$Closed;
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_0
    iget-boolean v0, p0, Lorg/jpos/util/BlockingQueue;->closed:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 51
    .end local p0    # "this":Lorg/jpos/util/BlockingQueue;
    :cond_0
    :try_start_1
    new-instance v0, Lorg/jpos/util/BlockingQueue$Closed;

    invoke-direct {v0}, Lorg/jpos/util/BlockingQueue$Closed;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setQueue(Ljava/util/LinkedList;)V
    .locals 0
    .param p1, "queue"    # Ljava/util/LinkedList;

    .line 113
    iput-object p1, p0, Lorg/jpos/util/BlockingQueue;->queue:Ljava/util/LinkedList;

    .line 114
    return-void
.end method
